" Only Execute when File Type is HTML
if (&ft != 'css')
    finish
endif

inoremap <buffer> <lt> <lt>><left>
set shiftwidth=2 | set tabstop=2
set softtabstop=2 | set smarttab | "Set Tab Spacing to 2
