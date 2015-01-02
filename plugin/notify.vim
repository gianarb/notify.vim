" notify.vim - Notify System for VIM
" Maintainer:   Lorenzo Fontana <fontanalorenzo@me.com>, Gianluca Arbezzano <gianarb92@gmail.com>
" Version:      1.0

if exists("g:loaded_notify")
    finish
endif
let g:loaded_notify = 1

call notify#setupCommands()

if !exists('g:notify_emitters')
    let g:notify_emitters = [
        \ 'osascript',
        \ 'notify_send'
        \ ]
endif
