inoremap /* /**/<left><left> 
inoremap #inc<Space> #include <lt>><left>
nnoremap #inc<Space> i#include <lt>><left>
inoremap #def<Space> #define 
nnoremap #def<Space> i#define 

" For Single-File Codes : Save, Compile, and Run
nnoremap <F5> :w<CR>:!g++ % -o %<.exe<CR><CR>:!%<.exe<CR><CR>

" For Multi-File Codes that require a Makefile
set makeprg=mingw32-make
nnoremap <F10> :make %<CR><CR>:!%<.exe<CR>
" :!@%<.exe<CR> | "Press Func.5 to Invoke Makefile.txt

" Too Much Customisation
nnoremap <CR><CR><CR> i#include <lt>iostream><CR>
                      \#include <lt>string><CR>
                      \#include <lt>bitset><CR>
                      \using namespace std;<CR>
                      \<CR>
                      \int main(void) {<CR>
                      \return 0;<CR>
                      \}<Esc>klllli<CR><Esc>ka
