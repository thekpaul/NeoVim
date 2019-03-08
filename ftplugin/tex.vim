" Only Execute when File Type is TeX
if (&ft != 'tex')
    finish
endif

" Suppress Vim-LaTeX
let b:suppress_latex_suite = 1

" Detect leader char of abbrev lhs and convert only if leader == '\'
function! s:Expr(default, repl)
  if getline('.')[col('.')-2]=='\'
    return "\<bs>".a:repl
  else
    return a:default
  endif
endfunction

" LaTeX-specific Mappings
inoreabb <buffer> docu <c-r>=<sid>Expr('docu', '\documentclass[<++>]{<++>}')<cr>
inoreabb <buffer> use[ <c-r>=<sid>Expr('use[', '\usepackage[<++>]{<++>}')<cr>
inoreabb <buffer> usep <c-r>=<sid>Expr('usep', '\usepackage{<++>}')<cr>
inoreabb <buffer> part <c-r>=<sid>Expr('part', '\part{<++>}')<cr>
inoreabb <buffer> chap <c-r>=<sid>Expr('chap', '\chapter{<++>}')<cr>
inoreabb <buffer> sect <c-r>=<sid>Expr('sect', '\section{<++>}')<cr>
inoreabb <buffer> subs <c-r>=<sid>Expr('subs', '\subsection{<++>}')<cr>
inoreabb <buffer> sub2 <c-r>=<sid>Expr('sub2', '\subsubsection{<++>}')<cr>
inoremap <buffer> ` `'<++><Esc>5ha
inoremap <buffer> $$ \[ <++> \]<++>
inoremap <buffer> [[ \left[<++>\right]<++>
inoremap <buffer> {{ \left\{<++>\right\}<++>
inoremap <buffer> (( \left(<++>\right)<++>

" Invoking PDFLaTeX
nnoremap <buffer> <F5> :w<CR>:!pdflatex %:p<CR>
