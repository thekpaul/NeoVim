" Only Execute when File Type is MATLAB
if (&ft != 'matlab')
    finish
endif

nnoremap <buffer> <F5> :cd %:p:h<CR>:up<CR>:!mcc -m %<CR>:!./%<.exe<CR>
