" Only Execute when File Type is TeX
if (&ft != 'tex')
    finish
endif

" Suppress Vim-LaTeX
let b:suppress_latex_suite = 1

" Detect leader char of abbrev lhs and convert only if leader == '\'
" function! s:Expr(default, repl)
"   if getline('.')[col('.')-2]=='\'
"     return "\<bs>".a:repl
"   else
"     return a:default
"   endif
" endfunction

set iskeyword+=\

" LaTeX-specific Mappings
inoreabb <buffer> \docu \documentclass[]{<++>}<Esc>6hi
inoreabb <buffer> \useo \usepackage[]{<++>}<Esc>6hi
inoreabb <buffer> \usep \usepackage{}<Left>
inoreabb <buffer> \part \part{}<Left>
inoreabb <buffer> \chap \chapter{}<Left>
inoreabb <buffer> \sect \section{}<Left>
inoreabb <buffer> \subs \subsection{}<Left>
inoreabb <buffer> \sub2 \subsubsection{}<Left>
inoreabb <buffer> \frac \frac{}{<++>}<++><Esc>10hi
inoremap <buffer> ` `'<++><Esc>4hi
inoremap <buffer> $ $$<++><Esc>4hi
inoremap <buffer> \[ \[  \]<++><Esc>6hi
inoremap <buffer> [[ \left[\right]<++><Esc>10hi
inoremap <buffer> {{ \left\{\right\}<++><Esc>11hi
inoremap <buffer> (( \left(\right)<++><Esc>10hi

" Invoking PDFLaTeX
nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>:!pdflatex %<CR>
nnoremap <buffer> <C-F5> :cd %:p:h<CR>:w<CR>:!pdflatex %<CR><CR>:!pdflatex %<CR>
