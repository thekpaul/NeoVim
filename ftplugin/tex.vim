" Only Execute when File Type is TeX
if (&ft != 'tex')
    finish
endif

" Suppress Vim-LaTeX
let b:suppress_latex_suite = 1

" LaTeX-specific Mappings
iabbrev <buffer> \docu \documentclass[<++>]{<++>}
iabbrev <buffer> \use[ \usepackage[<++>]{<++>}
iabbrev <buffer> \usep \usepackage[<++>]{<++>}
iabbrev <buffer> \part \part{<++>}
iabbrev <buffer> \chap \chapter{<++>}
iabbrev <buffer> \sect \section{<++>}
iabbrev <buffer> \subs \subsection{<++>}
iabbrev <buffer> \sub2 \subsubsection{<++>}
iabbrev <buffer> ` `'<++>

" Invoking PDFLaTeX
nnoremap <buffer> <F5> :w<CR>:!pdflatex %:p<CR>
