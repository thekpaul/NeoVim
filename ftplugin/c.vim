" Only Execute when File Type is C
if (&ft != 'c')
    finish
endif

inoremap /* /**/<left><left> 
inoremap #inc<Space> #include <lt>><left>
nnoremap #inc<Space> i#include <lt>><left>

" For Single-File Codes : Save, Compile, and Run
nnoremap <F5> :w<CR>:!gcc % -o %<.exe<CR><CR>:!%<.exe<CR><CR>

" For Multi-File Codes that require a Makefile
set makeprg=mingw32-make
nnoremap <F10> :make %<CR><CR>:!%<.exe<CR>
" :!@%<.exe<CR> | "Press Func.5 to Invoke Makefile.txt 
