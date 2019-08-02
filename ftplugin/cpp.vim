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
nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>:!g++ % -o %<.out<CR><CR>:tabe %<CR>
                       \ :terminal %<.out<CR>a
nnoremap <buffer> <S-F5> :cd %:p:h<CR>:w<CR>:!g++ % -o %<.out<CR>
nnoremap <buffer> <C-F5> :cd %:p:h<CR>:tabe %<CR>:terminal %<.out<CR>a

" TODO: Multi-File Codes that require a Makefile

nnoremap <buffer> <CR><CR><CR> i#include <lt>iostream><CR>
                               \<CR>
                               \int main(void) {<CR>
                                   \<++>;<CR>
                               \return 0;<CR>
                               \}
