" Only Execute when File Type is TeX
if (&ft != 'tex')
    finish
endif

" Mappings for Vim-LaTeX
inoremap <buffer> \docu \documentclass[<++>]{<++>}
inoremap <buffer> \use[ \usepackage[<++>]{<++>}
inoremap <buffer> \usep \usepackage[<++>]{<++>}
inoremap <buffer> \part \part{<++>}
inoremap <buffer> \chap \chapter{<++>}
inoremap <buffer> \sect \section{<++>}
inoremap <buffer> \subs \subsection{<++>}
inoremap <buffer> \sub2 \subsubsection{<++>}

" Invoking PDFLaTeX
nnoremap <buffer> <F5> :w<CR>:!pdflatex %:p<CR>
