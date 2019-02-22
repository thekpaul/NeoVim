" Only Execute when File Type is Python
if (&ft != 'python')
    finish
endif

" Next Line Autocomment
" TODO: If a line has a comment, <Shift><Enter> triggers commenting in next line at same column

" For Single-File Codes : Save, Compile and Run
nnoremap <F5> :w<CR>:!py %<CR>

" TODO: Multi-File Codes that require a Makefile
