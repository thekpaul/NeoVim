" Only Execute when File Type is Markdown
if (&ft != 'markdown')
    finish
endif

inoremap <buffer> <lt> <lt>><left>
setlocal shiftwidth=2 | setlocal tabstop=2
setlocal softtabstop=2 | setlocal smarttab | "Set Tab Spacing to 2

" AutoClose
inoremap <buffer> <C-b> ****<++><Esc>5hi
inoremap <buffer> <C-t> __<++><Esc>4hi
vmap <buffer> <C-b> di<C-b><Esc>p
vmap <buffer> <C-t> di<C-t><Esc>p
