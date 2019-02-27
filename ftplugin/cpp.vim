if (&ft != 'cpp')
    finish
endif

inoremap <buffer> /* /**/<left><left>
inoremap <buffer> #inc<lt> #include <lt>><left>
nnoremap <buffer> #inc<lt> i#include <lt>><left>
inoremap <buffer> #inc" #include ""<left>
nnoremap <buffer> #inc" i#include ""<left>
inoremap <buffer> #def<Space> #define 
nnoremap <buffer> #def<Space> i#define 

" For Single-File Codes : Save, Compile, and Run
nnoremap <buffer> <F5> :w<CR>:!g++ % -o %<.exe<CR><CR>:!%<.exe<CR>
nnoremap <buffer> <S-F5> :w<CR>:!g++ % -o %<.exe<CR><CR>:tabe<CR>:terminal<CR>

" TODO: Multi-File Codes that require a Makefile

inoremap <buffer> class<CR> class <++> {<CR><++><CR>} <++>;

nnoremap <buffer> <CR><CR><CR> i#include <lt>iostream><CR>
                               \using namespace std;<CR>
                               \<CR>
                               \int main(void) {<CR>
                               \return 0;<CR>
                               \}<Esc>klllli<CR><Esc>ka
