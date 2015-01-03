" osascript strategy

if exists('g:autoloaded_notify_osascript')
    finish
endif
let g:autoloaded_notify_osascript = 1

function! notify#osascript#emit(title, content)
    if !executable("osascript")
        return 0
    endif
    silent call system('osascript -e ''display notification "'.a:content.'" with title "'.a:title.'"''')
    return 1
endfunction
