" Only Execute when File Type is C
if (&ft != 'c')
    finish
endif

inoremap <buffer> /* /**/<left><left>
nnoremap <buffer> #inc<Space> i#include <lt>><left>
inoreabb <silent> <buffer> #inc #include <lt>><left><C-R>

" For Single-File Codes : Save, Compile and Run
if (&shell == 'powershell')
    nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>:!gcc % -o %<.exe<CR><CR>
                         \ :tabe %<CR>:terminal %<.exe<CR>
    nnoremap <buffer> <C-F5> :cd %:p:h<CR>:tabe %<CR>:terminal %<.exe<CR>
else "Shell is NOT PowerShell
    nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>:!gcc % -o %<.out<CR><CR>
                         \ :tabe %<CR>:terminal %<.out<CR>
    nnoremap <buffer> <C-F5> :cd %:p:h<CR>:tabe %<CR>:terminal %<.out<CR>
endif
nnoremap <buffer> <S-F5> :cd %:p:h<CR>:w<CR>:!gcc % -o %<.out<CR>

" TODO: Multi-File Codes that require a Makefile
