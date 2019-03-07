if (&ft != 'cpp')
    finish
endif

iabbrev <buffer> /* /**/<left><left>
iabbrev <buffer> #inc<lt> #include <lt>><left>
iabbrev <buffer> #inc" #include ""<left>
iabbrev <buffer> #def<Space> #define 
nnoremap <buffer> #inc<lt> i#include <lt>><left>
nnoremap <buffer> #inc" i#include ""<left>
nnoremap <buffer> #def<Space> i#define 

" For Single-File Codes : Save, Compile, and Run
nnoremap <buffer> <F5> :w<CR>:!g++ % -o %<.exe<CR><CR>:!%<.exe<CR>
nnoremap <buffer> <C-F5> :w<CR>:!g++ % -o %<.exe<CR><CR>:tabe<CR>:terminal<CR>3j$a

" TODO: Multi-File Codes that require a Makefile

iabbrev <buffer> \class class <++> {<CR>
                            \<++><CR>
                            \} <++>;

nnoremap <buffer> <CR><CR><CR> i#include <lt>iostream><CR>
                               \using namespace std;<CR>
                               \<CR>
                               \int main(void) {<CR>
                               \<++>;<CR>
                               \return 0;<CR>
                               \}
