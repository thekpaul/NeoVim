" Only Execute when File Type is Python
if (&ft != 'python')
    finish
endif

" Next Line Comment
" TODO: Insert-mode Map

" For Single-File Codes : Save, Compile and Run
nnoremap <F5> :w<CR>:!py %<CR>

" TODO: Multi-File Codes that require a Makefile
