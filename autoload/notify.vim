" notify.vim - Notify System for VIM
" Maintainer:   Lorenzo Fontana <fontanalorenzo@me.com>, Gianluca Arbezzano <gianarb92@gmail.com>
" Version:      1.0

func! notify#setupCommands()
    command! -nargs=+ -bar Notify :call notify#emitNotification(<f-args>)
endfunc

func! notify#emitNotification(title, content)
    if executable("osascript") == 1
        silent call system('osascript -e ''display notification "'.a:content.'" with title "'.a:title.'"''')
        return
    endif

    if executable("notify-send") == 1
        silent call system('notify-send "'.a:title.'" "'.a:content.'"')     
        return 
    endif
endfunc


