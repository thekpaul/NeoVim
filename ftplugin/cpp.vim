if (&ft != 'cpp')
    finish
endif

inoremap /* /**/<left><left>
inoremap #inc<lt> #include <lt>><left>
nnoremap #inc<lt> i#include <lt>><left>
inoremap #inc" #include ""<left>
nnoremap #inc" i#include ""<left>
inoremap #def<Space> #define 
nnoremap #def<Space> i#define 

" For Single-File Codes : Save, Compile, and Run
nnoremap <F5> :w<CR>:!g++ % -o %<.exe<CR><CR>:!%<.exe<CR>

" TODO: Multi-File Codes that require a Makefile

inoremap class<CR> class <++> {<CR><++><CR>} <++>;

nnoremap <CR><CR><CR> i#include <lt>iostream><CR>
                      \using namespace std;<CR>
                      \<CR>
                      \int main(void) {<CR>
                      \return 0;<CR>
                      \}<Esc>klllli<CR><Esc>ka
