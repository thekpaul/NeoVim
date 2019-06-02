if (&ft != 'cpp')
    finish
endif

inoreabb <silent> <buffer> #inc<lt> #include <lt>><left><C-R>
inoreabb <silent> <buffer> #inc" #include ""<left><C-R>
nnoremap <buffer> #inc<lt> i#include <lt>><left>
nnoremap <buffer> #inc" i#include ""<left>
nnoremap <buffer> #def<Space> i#define
inoremap <buffer> /* /**/<left><left>
inoreabb <buffer> cout cout <lt><lt>

" For Single-File Codes : Save, Compile, and Run
nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>:!g++ % -o %<.exe<CR><CR>:!%<.exe<CR>
nnoremap <buffer> <C-F5> :cd %:p:h<CR>:w<CR>:!g++ % -o %<.exe<CR><CR>:tabe<CR>:terminal<CR>a
nnoremap <buffer> <S-F5> :cd %:p:h<CR>:w<CR>:!g++ % -o %<.exe<CR>
nnoremap <buffer> <C-S-F5> :cd %:p:h<CR>:!%<.exe<CR>

" TODO: Multi-File Codes that require a Makefile

inoreabb <silent> <buffer> class class <++> {<CR>
                                    \<++><CR>
                                \} <++>;<C-R>

nnoremap <buffer> <CR><CR><CR> i#include <lt>iostream><CR>
                               \<CR>
                               \int main(void) {<CR>
                                   \<++>;<CR>
                               \return 0;<CR>
                               \}
