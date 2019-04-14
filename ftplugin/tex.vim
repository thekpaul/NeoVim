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

" LaTeX-specific Greek Letter Mappings
inoremap <buffer> @A \Alpha
inoremap <buffer> @a \alpha
inoremap <buffer> @B \Beta
inoremap <buffer> @b \beta
inoremap <buffer> @C \Chi
inoremap <buffer> @c \chi
inoremap <buffer> @D \Delta
inoremap <buffer> @d \delta
inoremap <buffer> @E \Epsilon
inoremap <buffer> @e \epsilon
inoremap <buffer> @F \Phi
inoremap <buffer> @f \phi
inoremap <buffer> @G \Gamma
inoremap <buffer> @g \gamma
inoremap <buffer> @H \Eta
inoremap <buffer> @h \eta
inoremap <buffer> @I \Iota
inoremap <buffer> @i \iota
inoremap <buffer> @K \Kappa
inoremap <buffer> @k \kappa
inoremap <buffer> @L \Lambda
inoremap <buffer> @l \lambda
inoremap <buffer> @M \Mu
inoremap <buffer> @m \mu
inoremap <buffer> @N \Nu
inoremap <buffer> @n \nu
inoremap <buffer> @O \Omicron
inoremap <buffer> @o \omicron
inoremap <buffer> @P \Pi
inoremap <buffer> @p \pi
inoremap <buffer> @Q \Theta
inoremap <buffer> @q \theta
inoremap <buffer> @R \Rho
inoremap <buffer> @r \rho
inoremap <buffer> @S \Sigma
inoremap <buffer> @s \sigma
inoremap <buffer> @T \Tau
inoremap <buffer> @t \tau
inoremap <buffer> @U \Upsilon
inoremap <buffer> @u \upsilon
inoremap <buffer> @W \Omega
inoremap <buffer> @w \omega
inoremap <buffer> @X \Xi
inoremap <buffer> @x \xi
inoremap <buffer> @Y \Psi
inoremap <buffer> @y \psi
inoremap <buffer> @Z \Zeta
inoremap <buffer> @z \zeta
inoremap <buffer> @vf \varphi
inoremap <buffer> @ve \varepsilon
inoremap <buffer> @vr \varrho
inoremap <buffer> @vk \varkappa
inoremap <buffer> @vq \vartheta
inoremap <buffer> @vs \varsigma
inoremap <buffer> @vp \varpi
inoremap <buffer> @ve \varepsilon
inoremap <buffer> @vr \varrho

" Invoking PDFLaTeX
nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>:!pdflatex %<CR>
nnoremap <buffer> <C-F5> :cd %:p:h<CR>:w<CR>:!pdflatex %<CR><CR>:!pdflatex %<CR>
nnoremap <buffer> <S-F5> :cd %:p:h<CR>:w<CR>:!pdflatex -shell-escape %<CR>
