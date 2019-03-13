" Only Execute when File Type is Python
if (&ft != 'python')
    finish
endif

" Next Line Comment
" TODO: Insert-mode Map

" For Single-File Codes : Save, Compile and Run
nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>:!py %<CR>
nnoremap <buffer> <C-F5> :cd %:p:h<CR>:w<CR>:tabe<CR>:terminal<CR>3j$apy 

" TODO: Multi-File Codes that require a Makefile
