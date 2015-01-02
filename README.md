# Notify.vim

## Rationale
This plugin is intended to be used by with other plugins that do background jobs and wants to notify the user about the success of a specific job.

## Supported operating systems
Right now we have implemented only the default Mac OS X notification system via osascript and the Ubuntu notify-send.

## Installation

### Using Vundle
Add to your plugins

```
Plugin 'gianarb\notify'
```

Install

```bash
vim +BundleInstall +qall
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

### Automatic ctags Generation with Notification

This example needs the tpope [vim-dispatch](https://github.com/tpope/vim-dispatch) plugin to execute
the ctags command in background.

```vim
function! GenerateCtags()
   Dispatch! ctags -R && vim +Notify\ "Horray"\ "Ctags\ updated" +qall
endfunction
au BufWritePost *.c,*.cpp,*.h,*.php call GenerateCtags()
```
