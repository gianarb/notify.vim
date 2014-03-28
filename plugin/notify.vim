" notify.vim - Notify System for VIM
" Maintainer:   Lorenzo Fontata <lorenzofontana@me.com>, Gianluca Arbezzano <gianarb92@gmail.com>
" Version:      1.0
function! Message(title, content)
    if has('mac')
        silent call system('osascript -e ''display notification "'.a:title.'" with title "'.a:content.'"''')
    endif
endfunction

call Message('titolo', 'di prova')
