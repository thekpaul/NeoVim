" Only Execute when File Type is TeX
if (&ft != 'tex')
    finish
endif

" Suppress Vim-LaTeX
let b:suppress_latex_suite = 1

set iskeyword+=\

" Prevent Worldwide Mappings
inoremap <buffer> ' '
inoremap <buffer> " "

" LaTeX-specific Mappings
inoreabb <silent> <buffer> \docu \documentclass[]{<++>}<Esc>6hi<C-R>
inoreabb <silent> <buffer> \useo \usepackage[]{<++>}<Esc>6hi<C-R>
inoreabb <silent> <buffer> \usep \usepackage{}<Left><C-R>
inoreabb <silent> <buffer> \part \part{}<Left><C-R>
inoreabb <silent> <buffer> \chap \chapter{}<Left><C-R>
inoreabb <silent> <buffer> \sect \section{}<Left><C-R>
inoreabb <silent> <buffer> \subs \subsection{}<Left><C-R>
inoreabb <silent> <buffer> \sub2 \subsubsection{}<Left><C-R>
inoreabb <silent> <buffer> \frac \frac{}{<++>}<++><Esc>10hi<C-R>
inoremap <buffer> ` `'<++><Esc>4hi
inoremap <buffer> `` ``''<++><Esc>5hi
inoremap <buffer> $ $$<++><Esc>4hi
inoremap <buffer> \[ \[  \]<++><Esc>6hi
inoremap <buffer> [[ \left[\right]<++><Esc>10hi
inoremap <buffer> {{ \left\{\right\}<++><Esc>11hi
inoremap <buffer> (( \left(\right)<++><Esc>10hi
inoremap <buffer> <C-b> \textbf{}<++><Esc>4hi
inoremap <buffer> <C-t> \textit{}<++><Esc>4hi

" LaTeX-specific Greek Letter Mappings
inoremap <buffer> @A \mathrm{A}
inoremap <buffer> @a \alpha
inoremap <buffer> @B \mathrm{B}
inoremap <buffer> @b \beta
inoremap <buffer> @C \mathrm{X}
inoremap <buffer> @c \chi
inoremap <buffer> @D \Delta
inoremap <buffer> @d \delta
inoremap <buffer> @E \mathrm{E}
inoremap <buffer> @e \epsilon
inoremap <buffer> @F \Phi
inoremap <buffer> @f \phi
inoremap <buffer> @G \Gamma
inoremap <buffer> @g \gamma
inoremap <buffer> @H \mathrm{H}
inoremap <buffer> @h \eta
inoremap <buffer> @I \mathrm{I}
inoremap <buffer> @i \iota
inoremap <buffer> @K \mathrm{K}
inoremap <buffer> @k \kappa
inoremap <buffer> @L \Lambda
inoremap <buffer> @l \lambda
inoremap <buffer> @M \mathrm{M}
inoremap <buffer> @m \mu
inoremap <buffer> @N \mathrm{N}
inoremap <buffer> @n \nu
inoremap <buffer> @O \mathrm{O}
inoremap <buffer> @o \mathrm{o}
inoremap <buffer> @P \Pi
inoremap <buffer> @p \pi
inoremap <buffer> @Q \Theta
inoremap <buffer> @q \theta
inoremap <buffer> @R \mathrm{P}
inoremap <buffer> @r \rho
inoremap <buffer> @S \Sigma
inoremap <buffer> @s \sigma
inoremap <buffer> @T \mathrm{T}
inoremap <buffer> @t \tau
inoremap <buffer> @U \Upsilon
inoremap <buffer> @u \upsilon
inoremap <buffer> @W \Omega
inoremap <buffer> @w \omega
inoremap <buffer> @X \Xi
inoremap <buffer> @x \xi
inoremap <buffer> @Y \Psi
inoremap <buffer> @y \psi
inoremap <buffer> @Z \mathrm{Z}
inoremap <buffer> @z \zeta
inoremap <buffer> @Ve \Varepsilon
inoremap <buffer> @Vr \Varrho
inoremap <buffer> @Vk \Varkappa
inoremap <buffer> @Vq \Vartheta
inoremap <buffer> @Vs \Varsigma
inoremap <buffer> @Vp \Varpi
inoremap <buffer> @Ve \Varepsilon
inoremap <buffer> @Vr \Varrho
inoremap <buffer> @Vf \Varphi
inoremap <buffer> @ve \varepsilon
inoremap <buffer> @vr \varrho
inoremap <buffer> @vk \varkappa
inoremap <buffer> @vq \vartheta
inoremap <buffer> @vs \varsigma
inoremap <buffer> @vp \varpi
inoremap <buffer> @ve \varepsilon
inoremap <buffer> @vr \varrho
inoremap <buffer> @vf \varphi

" Invoking PDFLaTeX
nnoremap <buffer> <F5> :cd %:p:h<CR>:w<CR>:!pdflatex %<CR>
nnoremap <buffer> <S-F5> :cd %:p:h<CR>:w<CR>:!pdflatex -shell-escape %<CR>
nmap <buffer> <C-F5> <F5><CR>:!pdflatex %<CR>
nmap <buffer> <C-S-F5> <S-F5><CR>:!pdflatex -shell-escape %<CR>
