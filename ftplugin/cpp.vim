if (&ft != 'cpp')
    finish
endif

inoreabb <buffer> #inc<lt> #include <lt>><left>
inoreabb <buffer> #inc""<++> #include ""<left>
nnoremap <buffer> #inc<lt> i#include <lt>><left>
nnoremap <buffer> #inc" i#include ""<left>
nnoremap <buffer> #def<Space> i#define 
inoremap <buffer> /* /**/<left><left>
inoreabb <buffer> cout cout <lt><lt> 
inoreabb <buffer> endl endl;

" For Single-File Codes : Save, Compile, and Run
nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>:!g++ % -o %<.exe<CR><CR>:!%<.exe<CR>
nnoremap <buffer> <C-F5> :cd %:p:h<CR>:w<CR>:!g++ % -o %<.exe<CR><CR>:tabe<CR>:terminal<CR>a
nnoremap <buffer> <S-F5> :cd %:p:h<CR>:w<CR>:!g++ % -o %<.exe<CR>
nnoremap <buffer> <C-S-F5> :cd %:p:h<CR>:!%<.exe<CR>

" TODO: Multi-File Codes that require a Makefile

inoreabb <buffer> class class <++> {<CR>
                          \<++><CR>
                          \} <++>;

nnoremap <buffer> <CR><CR><CR> i#include <lt>iostream><CR>
                               \using namespace std;<CR>
                               \<CR>
                               \int main(void) {<CR>
                               \<++>;<CR>
                               \return 0;<CR>
                               \}
