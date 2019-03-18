if (&ft != 'cpp')
    finish
endif

inorea <buffer> #inc<lt> #include <lt>><left>
inorea <buffer> #inc""<++> #include ""<left>
nnoremap <buffer> #inc<lt> i#include <lt>><left>
nnoremap <buffer> #inc" i#include ""<left>
nnoremap <buffer> #def<Space> i#define 
inoremap <buffer> /* /**/<left><left>

" For Single-File Codes : Save, Compile, and Run
nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>:!g++ % -o %<.exe<CR><CR>:!%<.exe<CR>
nnoremap <buffer> <C-F5> :cd %:p:h<CR>:w<CR>:!g++ % -o %<.exe<CR><CR>:tabe<CR>:terminal<CR>3j$a

" TODO: Multi-File Codes that require a Makefile

iabbrev <buffer> class<CR> class <++> {<CR>
                          \<++><CR>
                          \} <++>;

nnoremap <buffer> <CR><CR><CR> i#include <lt>iostream><CR>
                               \using namespace std;<CR>
                               \<CR>
                               \int main(void) {<CR>
                               \<++>;<CR>
                               \return 0;<CR>
                               \}
