" notify.vim - Notify System for VIM
" Maintainer:   Lorenzo Fontana <fontanalorenzo@me.com>, Gianluca Arbezzano <gianarb92@gmail.com>
" Version:      1.0

func! notify#setupCommands()
    command! -nargs=+ -bar Notify :call notify#emitNotification(<f-args>)
endfunc

func! notify#emitNotification(title, content)
    for emitter in g:notify_emitters
        let response = call('notify#'.emitter.'#emit', [a:title, a:content])
        if response
            continue
        endif
    endfor
    return 0
endfunc


