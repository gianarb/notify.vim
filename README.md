# Notify.vim

![Vim Desktop notifications][screencast]

## Rationale
This plugin is intended to be used by with other plugins that do background jobs and wants to notify the user about the success of a specific job.
See the [#Examples](#examples) section for use cases.

## Implemented notification triggers
- osascript (Mac OSX)
- notify-send (Ubuntu)

## Installation

### Using Vundle
Add to your plugins

```
Plugin 'gianarb/notify.vim'
```

## Usage
Send a notification

### Using the emitNotification function

```vim
call notify#emitNotification('Title', 'Body')
```

### Using the command

```vim
:Notify title content
```

### From command line

```bash
vim +Notify\ title\ body +qall
```

## Examples

### Automatic ctags with notification when completed

**Dependencies**

- tpope/[vim-dispatch](https://github.com/tpope/vim-dispatch) (execute commands asynchronously)

**Add to your vimrc**

```vim
function! GenerateCtags()
   Dispatch! ctags -R && vim +Notify\ "Horray"\ "Ctags\ updated" +qall
endfunction
au BufWritePost *.c,*.cpp,*.h,*.php call GenerateCtags()
```


[screencast]: http://i.imgur.com/7iyrMrx.gif
