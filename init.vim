set mouse=a
set clipboard=unnamedplus
" Behave MS Windows
runtime mswin.vim

set noundofile | "No Undo Files

" Vim-Plug as Plugin Manager
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
    Plug 'mhinz/vim-startify' | " Installed Vim-Startify
    Plug 'scrooloose/nerdtree' | " Installed NERDTree
    Plug 'vim-airline/vim-airline' | " Installed Vim-Airline
    Plug 'junegunn/seoul256.vim' | " Installed Seoul256 Theme
    Plug 'vim-latex/vim-latex' | " Installed Vim-Latex, a LaTeX Plugin
    Plug 'tpope/vim-fugitive' | " Installed fugitive.vim, a Git wrapper
    Plug 'nathanaelkane/vim-indent-guides'
        " Installed vim-indent-guides, a visual indentation guide
    Plug 'sakhnik/nvim-gdb', {'do':':!./install.sh \| UpdateRemotePlugins'}
        "Installed nvim-gdb, a GDB Wrapper for Neovim
    Plug 'ntpeters/vim-better-whitespace'
        "Installed vim-better-whitespace, a visual whitespace manager
    Plug 'godlygeek/tabular' | "Installed tabular plugin
    Plug 'plasticboy/vim-markdown' | "Installed vim-markdown
  " Plug '~/local-config-reader'
        " Installed Local-Config-Reader, a secure local configuration reader
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
set number | "Line Numbering
set linespace=3 | "Set Line Spacing to 3 units
set expandtab | set shiftwidth=4 | set tabstop=4
set softtabstop=4 | set smarttab | "Set Tab Spacing
set cursorline
augroup CursorColumn
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
    au WinLeave * setlocal nocursorcolumn
augroup END
set breakindent | set linebreak
:set iskeyword+=\
let g:tex_flavor = "latex"
set colorcolumn=80

" Set Mappings for Vimscript and Vanilla Vim Management
nnoremap <F1> :cd $XDG_CONFIG_HOME/nvim<CR>:e init.vim<CR>
    "Press F1 to Open User init.vim
nnoremap <C-F1> :cd $VIM<CR>:e sysinit.vim<CR>
    "Press Ctrl+F1 to Open System sysinit.vim
nnoremap <S-F1> :cd $XDG_CONFIG_HOME/nvim<CR>:split init.vim<CR>
    "Press Shift+F1 to Split-Open User init.vim
nnoremap v<S-F1> :cd $XDG_CONFIG_HOME/nvim<CR>:vsplit init.vim<CR>
    "Press V and Shift+F1 to VSplit-Open User init.vim
nnoremap <F2> :tabe $XDG_CONFIG_HOME/nvim/init.vim<CR>:cd %:p:h<CR>
    "Press F2 to Open User init.vim in New Tab
nnoremap <C-F2> :tabe $VIM/sysinit.vim<CR>:cd %:p:h<CR>
    "Press Ctrl+F2 to Open System sysinit.vim in New Tab
nnoremap <F3> :cd %:p:h<CR>
    "Press F3 to Change Working Directory to Current File
nnoremap <C-F3> :tcd %:p:h<CR>
    "Press Ctrl+F3 to Change Working Directory to Current File only for Current Tab
nnoremap <S-F3> :cd ..<CR>
    "Press Shift+F3 to Change Working Directory to One Level Up
nnoremap <F4> :call delete(expand('%'))<CR>
    "Press F4 to delete Current File
nnoremap <C-F4> :call delete(expand('%'))<CR>:bdelete!<CR>
    "Press Ctrl+F4 to delete Current File and quit buffer
nnoremap <F10> :w<CR>:source %<CR>| "Press F10 to Save and Reload Current File

" AutoClose
inoremap " ""<lt>++><Esc>5ha
inoremap ( ()<lt>++><Esc>5ha
inoremap [ []<lt>++><Esc>5ha
inoremap { {}<lt>++><Esc>5ha
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
if (&ft != 'tex')
    inoremap ' ''<lt>++><Esc>5ha
    inoremap ` ``<lt>++><Esc>5ha
endif

" TODO: AutoClose in Selection

" LangMap Settings
set langmap=ㅂq,ㅃQ,ㅈw,ㅉW,ㄷe,ㄸE,ㄱr,ㄲR,ㅅt,ㅆT,ㅛy,ㅕu,ㅑi,ㅐo,ㅒO,ㅔp,ㅖP,
    \ㅁa,ㄴs,ㅇd,ㄹf,ㅎg,ㅗh,ㅓj,ㅏk,ㅣl,ㅋz,ㅌx,ㅊc,ㅍv,ㅠb,ㅜn,ㅡm

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
let g:NERDTreeWinSize = 30
autocmd VimEnter * NERDTree $HOME | wincmd l
autocmd BufEnter * if (!exists("t:NERDTreeBufName") ) | silent NERDTreeMirror | wincmd l | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Additional Settings for the vim-indent-guides Plugin
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']

"Additional Settings for the vim-better-whitespace Plugin
let g:better_whitespace_ctermcolor = '#FFFFFF'
let g:strip_whitespace_on_save = 1
let g:better_whitespace_filetypes_blacklist = ['help', 'nerdtree', 'startify']
