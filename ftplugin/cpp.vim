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
" Step 1: Read the File and see if any Custom Headers need be Included (TODO)
function! Listall() abort
    0
    let filelist = [expand('%')]
    while 1 > 0
        if strpart(getline('.'), 0, 10) == '#include "'
            let templist = split(getline('.'), '"')
            if templist[1] != expand('%:t:r' . '.hpp')
                let filelist = add(filelist, templist[1] . '.cpp')
        else
            if stridx(getline('.'), 'End of Include') != -1
                break
            else
                continue
            endif
        endif
        +
    endwhile
endfunction
" Step 2: Compile according to CLI
if (&shell == 'powershell')
    nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>:call Listall()<CR>
                         \ :!g++ expand(filelist) -o %<.exe<CR><CR>
                         \ :tabe %<CR>:terminal %<.exe<CR>
    nnoremap <buffer> <C-F5> :cd %:p:h<CR>:tabe %<CR>:terminal %<.exe<CR>
else "Shell is NOT PowerShell
    nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>::call Listall()<CR>
                         \ :!g++ expand(filelist) -o %<.out<CR><CR>
                         \ :tabe %<CR>:terminal %<.out<CR>
    nnoremap <buffer> <C-F5> :cd %:p:h<CR>:tabe %<CR>:terminal %<.out<CR>
endif
nnoremap <buffer> <S-F5> :cd %:p:h<CR>:w<CR>::call Listall()<CR>
                       \ :!g++ expand(filelist) -o %<.out<CR>

" TODO: Multi-File Codes that require a Makefile

nnoremap <buffer> <CR><CR><CR> i#include <lt>iostream><CR>
                               \<CR>
                               \int main(void) {<CR>
                                   \<++>;<CR>
                               \return 0;<CR>
                               \}

" I **HATE** _H! Change Them ALL to _HPP!
if (expand('%:e') == 'h')
    nnoremap <buffer> <F6> :sav %<.hpp<CR>:call delete(expand('%:t:r') . '.h')<CR>
endif
