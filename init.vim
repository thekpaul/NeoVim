set noundofile | "No Undo Files
filetype plugin indent on | "Set plugin loading according to filetype

" Vim-Plug as Plugin Manager
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
    Plug 'sudar/vim-arduino-syntax' | " Installed Arduino Syntax
    Plug 'scrooloose/nerdtree' | " Installed NERDTree
    Plug 'vim-airline/vim-airline' | " Installed Vim-Airline
    Plug 'mhinz/vim-startify' | " Installed Vim-Startify
    Plug 'junegunn/seoul256.vim' | " Installed Seoul256 Theme
    Plug 'luochen1990/rainbow' | " Installed Rainbow, a Parentheses Colorscheme
    Plug 'vim-latex/vim-latex' | " Installed Vim-LaTeX, a LaTeX Plugin for Vim
"     Plug 'godlygeek/tabular' | " Installed Tabular, a Table-making plugin
"     Plug 'plasticboy/vim-markdown' | " Installed Vim Markdown
call plug#end()

" Personal Settings
set guifont=D2Coding:h10
set encoding=utf8 | "Set File Encoding as UTF-8
language en
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set langmenu=en_US.utf8 | "Set Menu Language
set fileencodings=utf8 | "Set NEW File Encoding to UTF-8
    if (&fileencodings != 'utf8')
        set fileencodings=utf8
    endif | "Set ALL File Encoding to UTF-8
set nu | "Line Numbering
set linespace=3 | "Set Line Spacing to 3 units
set expandtab | set shiftwidth=4 | set tabstop=4 | set softtabstop=4 | set smarttab | "Set Tab Spacing
nnoremap <space> xi<space><esc>| "Press Space in Normal mode to Replace Char with Space
nnoremap <F1> :cd $XDG_CONFIG_HOME/nvim<CR>:e init.vim<CR>| "Press F1 to Open User init.vim
nnoremap <C-F1> :cd $VIM<CR>:e sysinit.vim<CR>| "Press Ctrl+F1 to Open System sysinit.vim
nnoremap <F2> :tabe $XDG_CONFIG_HOME/nvim/init.vim<CR><F3>| "Press F2 to Open User init.vim in New Tab
nnoremap <C-F2> :tabe $VIM/sysinit.vim<CR><F3>| "Press Ctrl+F2 to Open System sysinit.vim in New Tab
nnoremap <F3> :cd %:p:h<CR>| "Press F3 to Change Working Directory to Current File
nnoremap <F10> :w<CR>:source %<CR>| "Press F10 to Save and Reload Current File
nnoremap "o 0i"<space><esc>| "Press Quotation Mark then o to State a Comment in Vimscript
nnoremap "x 0xx| "Press Quotation Mark then x to De-comment in Vimscript

" AutoClose
inoremap " ""<lt>++><Esc>5ha
inoremap ' ''<lt>++><Esc>5ha
inoremap ( ()<lt>++><Esc>5ha
inoremap [ []<lt>++><Esc>5ha
inoremap { {}<lt>++><Esc>5ha
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
if (&ft != 'tex')
    inoremap ` ``<lt>++><Esc>5ha
endif

" Additional Settings for the Vim-Plug Plugin
nnoremap <F12> :PlugInstall<CR>| " Press F12 to Install new Plugins
nnoremap <C-F12> :PlugClean<CR>| " Press Ctrl+F12 to Delete Plugins
nnoremap <F11> :PlugUpdate<CR>| " Press F11 to Update new Plugins

" Additional Settings for the Seoul256 Plugin
let g:seoul256_background = 234
colo seoul256
highlight EndOfBuffer guifg=bg | "Hide Tildes in Empty Buffer Space

" Additional Settings for the Vimtex Plugin
let g:tex_flavor = 'latex'

" Additional Settings for the Startify Plugin
let g:startify_custom_header = [
            \ '                                 __                                      ',
            \ '               __               /\ \                                     ',
            \ '      __   __ /\_\    ___ ___   \ \ \                                    ',
            \ '     /\ \ /\ \\/\ \ /` __` __`\  \ \ \                                   ',
            \ '     \ \ \_/ / \ \ \/\ \/\ \/\ \  \ \_\                                  ',
            \ '      \ \___/   \ \_\ \_\ \_\ \_\  \/\_\                                 ',
            \ '       \/__/     \/_/\/_/\/_/\/_/   \/_/                                 ',
            \ '                                                                         ',
            \ '                                                                         ',
            \ '     * Press F1 to Open User init.vim                                    ',
            \ '     * Press Ctrl-F1 to Open System sysinit.vim                          ',
            \ '     * Press F2 to Open User init.vim in New Tab                         ',
            \ '     * Press Ctrl-F2 to Open System sysinit.vim in New Tab               ',
            \ '     * Press F3 to Change Working Directory to that of Current File      ',
            \ '     * Press F10 to Save and Source a Vimscript File                     ',
            \ '     * Press F11 to Update Plugins via Vim-Plug                          ',
            \ '     * Press F12 to Install new Plugins via Vim-Plug                     ',
            \ '     * Press Ctrl-F12 to Delete Plugins via Vim-Plug                     ']

" Additional Settings for the NERDTree Plugin
autocmd vimenter * NERDTree | wincmd l
autocmd bufenter * if (!exists("t:NERDTreeBufName") ) | silent NERDTreeMirror | wincmd l | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
