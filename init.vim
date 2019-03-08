" Behave MS Windows
runtime mswin.vim
set mouse=a

set noundofile | "No Undo Files

" let g:python3_host_prog = 'C:/Users/brigh/path/to/python' | "Python 3

" Vim-Plug as Plugin Manager
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
    Plug 'sudar/vim-arduino-syntax' | " Installed Arduino Syntax
    Plug 'mhinz/vim-startify' | " Installed Vim-Startify
    Plug 'scrooloose/nerdtree' | " Installed NERDTree
    Plug 'vim-airline/vim-airline' | " Installed Vim-Airline
    Plug 'junegunn/seoul256.vim' | " Installed Seoul256 Theme
    Plug 'luochen1990/rainbow' | " Installed Rainbow, a Parentheses Colorscheme
    Plug 'vim-latex/vim-latex' | " Installed Vim-Latex, a LaTeX Plugin
    Plug 'tpope/vim-fugitive' | " Installed fugitive.vim, a Git wrapper
    Plug 'nathanaelkane/vim-indent-guides' | " Installed vim-indent-guides, a visual indentation guide
call plug#end()

filetype off
filetype plugin indent on | "Set plugin loading according to filetype

" Personal Settings
set guifont=D2Coding:h10
set encoding=utf8 | "Set File Encoding as UTF-8
language en
let $LANG = 'en_US'
runtime delmenu.vim
runtime menu.vim
set langmenu=en_US.utf8 | "Set Menu Language
set fileencodings=utf8 | "Set NEW File Encoding to UTF-8
    if (&fileencodings != 'utf8')
        set fileencodings=utf8
    endif | "Set ALL File Encoding to UTF-8
set nu | "Line Numbering
set linespace=3 | "Set Line Spacing to 3 units
set expandtab | set shiftwidth=4 | set tabstop=4 | set softtabstop=4 | set smarttab | "Set Tab Spacing
set cursorline | set cursorcolumn
set breakindent | set linebreak
:set iskeyword+=\

" Set Mappings for Vimscript and Vanilla Vim Management
nnoremap <F1> :cd $XDG_CONFIG_HOME/nvim<CR>:e init.vim<CR>| "Press F1 to Open User init.vim
nnoremap <C-F1> :cd $VIM<CR>:e sysinit.vim<CR>| "Press Ctrl+F1 to Open System sysinit.vim
nnoremap <F2> :tabe $XDG_CONFIG_HOME/nvim/init.vim<CR>:cd %:p:h<CR>| "Press F2 to Open User init.vim in New Tab
nnoremap <C-F2> :tabe $VIM/sysinit.vim<CR>:cd %:p:h<CR>| "Press Ctrl+F2 to Open System sysinit.vim in New Tab
nnoremap <F3> :cd %:p:h<CR>| "Press F3 to Change Working Directory to Current File
nnoremap <F4> :call delete(expand('%'))<CR>| "Press F4 to delete Current File
nnoremap <C-F4> :call delete(expand('%'))<CR>:bdelete!<CR>| "Press Ctrl+F4 to delete Current File and quit buffer
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
let g:seoul256_background = 235
colo seoul256
highlight EndOfBuffer guifg=bg | "Hide Tildes in Empty Buffer Space

" Additional Settings for the Startify Plugin
let g:startify_custom_header = [
            \ '                                 __ __                                   ',
            \ '               __               /\ \\ \                                  ',
            \ '      __   __ /\_\    ___ ___   \ \ \\ \                                 ',
            \ '     /\ \ /\ \\/\ \ /` __` __`\  \ \ \\ \                                ',
            \ '     \ \ \_/ / \ \ \/\ \/\ \/\ \  \ \_\\_\                               ',
            \ '      \ \___/   \ \_\ \_\ \_\ \_\  \/\_\\_\                              ',
            \ '       \/__/     \/_/\/_/\/_/\/_/   \/_//_/                              ',
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
let g:NERDTreeMinimalUI = 1
autocmd VimEnter * NERDTree | wincmd l
autocmd BufEnter * if (!exists("t:NERDTreeBufName") ) | silent NERDTreeMirror | wincmd l | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" | b# | endif | " If previous buffer was NERDTree, go back to it

" Additional Settings for the vim-indent-guides Plugin
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']
