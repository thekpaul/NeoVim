" Only Execute when File Type is C
if (&ft != 'c')
    finish
endif

inoremap <buffer> /* /**/<left><left>
nnoremap <buffer> #inc<Space> i#include <lt>><left>
iabbrev <buffer> #inc #include <lt>><left>

" For Single-File Codes : Save, Compile and Run
nnoremap <buffer> <F5> :cd &:p:h<CR>:w<CR>:!gcc % -o %<.exe<CR><CR>:!%<.exe<CR>
nnoremap <buffer> <C-F5> :cd &:p:h<CR>:w<CR>:!gcc % -o %<.exe<CR><CR>:tabe<CR>:terminal<CR>a 

" TODO: Multi-File Codes that require a Makefile
