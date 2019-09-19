" Only Execute when File Type is Markdown
if (&ft != 'markdown')
    finish
endif

inoremap <buffer> <lt> <lt>><left>
set shiftwidth=2 | set tabstop=2
set softtabstop=2 | set smarttab | "Set Tab Spacing to 2

" AutoClose
inoremap <buffer> <C-b> ****<++><Esc>5hi
inoremap <buffer> <C-t> __<++><Esc>4hi
vmap <buffer> <C-b> di<C-b><Esc>p
vmap <buffer> <C-t> di<C-t><Esc>p
