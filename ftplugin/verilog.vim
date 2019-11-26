" Only Execute when File Type is Verilog
if (&ft != 'verilog')
    finish
endif

inoremap <buffer> /* /**/<left><left>
