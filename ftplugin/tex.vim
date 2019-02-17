" Mappings for Vim-LaTeX
call IMAP('\docu', '\documentclass[<++>]{<++>}', 'tex')
call IMAP('\use[', '\usepackage[<++>]{<++>}', 'tex')
call IMAP('\usep', '\usepackage{<++>}', 'tex')
call IMAP('\part', '\part{<++>}', 'tex')
call IMAP('\chap', '\chapter{<++>}', 'tex')
call IMAP('\sect', '\section{<++>}', 'tex')
call IMAP('\subs', '\subsection{<++>}', 'tex')
call IMAP('\sub2', '\subsubsection{<++>}', 'tex')
inoremap ` `'<left>
