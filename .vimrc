set softtabstop=4 shiftwidth=4 expandtab
set ruler
map <F2> :NERDTreeToggle<CR>
filetype plugin on
set nu
set cindent
set hidden
nnoremap <silent> <F3> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
let php_sql_query = 1
syntax enable

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


augroup filetypedetect
au! BufRead,BufNewFile *.rhtml		setfiletype eruby
au! BufRead,BufNewFile *.pde		setfiletype java
" add *.erb ??????? to       ^^^^^^^?
augroup END

let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell


" Sudo Save when vim accidentally opened without sudo
cmap w!! %!sudo tee > /dev/null %

