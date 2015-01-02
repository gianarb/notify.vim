" notify-send strategy

if exists('g:autoloaded_notify_notify_send')
    finish
endif
let g:autoloaded_notify_notify_send = 1

function! notify#notify_send#emit(title, content)
    if !executable("notify-send")
        return 0
    endif
    silent call system('notify-send "'.a:title.'" "'.a:content.'"')
    return 1
endfunction
