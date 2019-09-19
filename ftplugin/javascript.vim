" Only Execute when File Type is HTML
if (&ft != 'javascript')
    finish
endif

inoremap <buffer> <lt> <lt>><left>
setlocal shiftwidth=2 | setlocal tabstop=2
setlocal softtabstop=2 | setlocal smarttab | "Set Tab Spacing to 2
