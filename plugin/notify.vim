" notify.vim - Notify System for VIM
" Maintainer:   Lorenzo Fontata <lorenzofontana@me.com>, Gianluca Arbezzano <gianarb92@gmail.com>
" Version:      1.0
function! Message(title, content)
    if executable("osascript") == 1
        silent call system('osascript -e ''display notification "'.a:content.'" with title "'.a:title.'"''')
    elseif executable("notify-send") == 1
        silent call system('notify-send "'.a:title.'" "'.a:content.'"')     
    endif
endfunction

call Message('titolo', 'di prova')
