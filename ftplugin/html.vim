" Only Execute when File Type is HTML
if (&ft != 'html')
    finish
endif

inoremap <buffer> <lt> <lt>><left>
