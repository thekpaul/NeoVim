" Only Execute when File Type is C
if (&ft != 'c')
    finish
endif

inoremap <buffer> /* /**/<left><left>
nnoremap <buffer> #inc<Space> i#include <lt>><left>
inoreabb <silent> <buffer> #inc #include <lt>><left><C-R>

" For Single-File Codes : Save, Compile and Run
nnoremap <buffer> <F5> :cd &:p:h<CR>:w<CR>:!gcc % -o %<.out<CR><CR>:!%<.out<CR>
nnoremap <buffer> <C-F5> :cd &:p:h<CR>:w<CR>:!gcc % -o %<.out<CR><CR>:tabe<CR>:terminal<CR>a

" TODO: Multi-File Codes that require a Makefile
