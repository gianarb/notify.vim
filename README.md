# Notify.vim

## Rationale
This plugin is intended to be used by with other plugins that do background jobs and wants to notify the user about the success of a specific job.

## Supported operating systems
Right now we have implemented only the default Mac OS X notification system via osascript and the Ubuntu notify-send.

## Usage
To send a notification

```vim
call Notify('Title', 'Body')
```
