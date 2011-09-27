set softtabstop=4 shiftwidth=4 expandtab
map <F2> :NERDTreeToggle<CR>
filetype plugin on
set nu
set hidden
nnoremap <silent> <F3> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" " buffer that's left is the NERDTree buffer
 function! s:CloseIfOnlyNerdTreeLeft()
   if exists("t:NERDTreeBufName")
       if bufwinnr(t:NERDTreeBufName) != -1
             if winnr("$") == 1
                     q
               endif
       endif
     endif
endfunction

