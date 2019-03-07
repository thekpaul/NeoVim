" Only Execute when File Type is TeX
if (&ft != 'tex')
    finish
endif

" Suppress Vim-LaTeX
let b:suppress_latex_suite = 1

" LaTeX-specific Mappings
inorea <buffer> docu \documentclass[<++>]{<++>}
inorea <buffer> use[ \usepackage[<++>]{<++>}
inorea <buffer> usep \usepackage[<++>]{<++>}
inorea <buffer> part \part{<++>}
inorea <buffer> chap \chapter{<++>}
inorea <buffer> sect \section{<++>}
inorea <buffer> subs \subsection{<++>}
inorea <buffer> sub2 \subsubsection{<++>}
inoremap <buffer> ` `'<++>

" Invoking PDFLaTeX
nnoremap <buffer> <F5> :w<CR>:!pdflatex %:p<CR>
