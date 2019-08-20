" Detecting Custom Filetypes!

" Listed Filetypes :
  " MATLAB Script(*.mlx)

if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.mlx    setfiletype matlabscript
augroup END
