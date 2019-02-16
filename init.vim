set noundofile | "No Undo Files

" Vim-Plug as Plugin Manager
call plug#begin('~/AppData/Local/nvim/plugged')
    Plug 'sudar/vim-arduino-syntax' | " Installed Arduino Syntax
    Plug 'scrooloose/nerdtree' | " Installed NERDTree
    Plug 'vim-airline/vim-airline' | " Installed Vim-Airline
    Plug 'mhinz/vim-startify' | " Installed Vim-Startify
    Plug 'junegunn/seoul256.vim' | " Installed Seoul256 Theme
    Plug 'luochen1990/rainbow' | " Installed Rainbow, a Parentheses Colorscheme
    Plug 'lervag/vimtex' | " Installed Vimtex, a TeX plugin for Vim
"     Plug 'godlygeek/tabular' | " Installed Tabular, a Table-making plugin
"     Plug 'plasticboy/vim-markdown' | " Installed Vim Markdown
call plug#end()

" Personal Settings
set guifont=Consolas:h10
set encoding=utf8 | "Set File Encoding as UTF-8
language en
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set langmenu=en_US.utf8 | "Set Menu Language
set fileencodings=utf8,euc-kr | "Detect File Encoding
set nu | "Line Numbering
set linespace=3 | "Set Line Spacing to 3 units
set lines=45 columns=180 | "Set Window Size
set expandtab | set shiftwidth=4 | set tabstop=4 | set softtabstop=4 | set smarttab | "Set Tab Spacing
nnoremap <space> xi<space><esc>| "Press Space in Normal mode to Replace Char with Space
nnoremap <F1> :cd $HOME<CR>:open _vimrc<CR>| "Press F1 to Open _vimrc
nnoremap <F2> :tabe $HOME/_vimrc<CR>| "Press F2 to Open _vimrc in New Tab
nnoremap <F3> :cd %:p:h<CR>| "Press F3 to Change Working Directory to Current File
nnoremap <F10> :w<CR>:source %<CR>| "Press F10 to Save and Reload Current File
nnoremap "o 00i"<space><esc>| "Press Quotation Mark then o to State a Comment in Vimscript
nnoremap "x 00xx| "Press Quotation Mark then x to De-comment in Vimscript

" AutoClose
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap <lt><Space> <lt>><left><Backspace>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

filetype plugin on | "Set plugin loading according to filetype

" Additional Settings for the Vim-Plug Plugin
nnoremap <F12> :PlugInstall<CR>| " Press F12 to Install new Plugins
nnoremap <F11> :PlugUpdate<CR>| " Press F11 to Update new Plugins

" Additional Settings for the Seoul256 Plugin
let g:seoul256_background = 236
colo seoul256
highlight EndOfBuffer guifg=bg | "Hide Tildes in Empty Buffer Space

" Additional Settings for the Vimtex Plugin
let g:tex_flavor = 'latex'

" Additional Settings for the Startify Plugin
let g:startify_custom_header = [
            \ '                               __       ',
            \ '             __               /\ \      ',
            \ '    __   __ /\_\    ___ ___   \ \ \     ',
            \ '   /\ \ /\ \\/\ \ /` __` __`\  \ \ \    ',
            \ '   \ \ \_/ / \ \ \/\ \/\ \/\ \  \ \_\   ',
            \ '    \ \___/   \ \_\ \_\ \_\ \_\  \/\_\  ',
            \ '     \/__/     \/_/\/_/\/_/\/_/   \/_/  ',
            \ ]

" Additional Settings for the NERDTree Plugin
autocmd vimenter * NERDTree | wincmd l
autocmd bufenter * if (!exists("t:NERDTreeBufName") ) | silent NERDTreeMirror | wincmd l | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
