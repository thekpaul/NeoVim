" Only Execute when File Type is XML
if (&ft != 'xml')
    finish
endif

inoremap <buffer> <lt> <lt>><left>
setlocal shiftwidth=2 | setlocal tabstop=2
setlocal softtabstop=2 | setlocal smarttab | "Set Tab Spacing to 2
