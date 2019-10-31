" Allow the usage of mouse in all environments
set mouse=a

" Partial Behaviour Changes
behave mswin
set virtualedit=onemore "For Consistency in Selective AutoClosing

" Windows like clipboard
vnoremap <c-x> "+x
vnoremap <c-c> "+y
cnoremap <c-v> <c-r>+
exe 'ino <script> <C-V>' paste#paste_cmd['i']

" Un/Redo Like Windows
nnoremap <C-z> u
nnoremap <C-y> <C-r>
inoremap <C-z> <Esc>ui
inoremap <C-y> <Esc><C-r>i

" Save Like Windows
inoremap <C-s> <Esc>:update<CR>a
nnoremap <C-s> :update<CR>

" delete, yank, select a document
nnoremap dad ggVGd
nnoremap yad %y
nnoremap vad ggVG

set noundofile | "No Undo Files

" Set Paths to Various Interpreters for Faster Startup
let g:python_host_prog = 'C:\Python27\python.exe'
let g:python3_host_prog = 'C:\Python37\python.exe'
let g:ruby_host_prog = 'C:\tools\ruby26\bin\ruby.exe'

" Vim-Plug as Plugin Manager
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
    Plug 'mhinz/vim-startify' | " Installed Vim-Startify
    Plug 'dart-lang/dart-vim-plugin' | " Installed Dart-Vim Plugin
    Plug 'thosakwe/vim-flutter' | " Installed Vim-Flutter
    Plug 'scrooloose/nerdtree' | " Installed NERDTree
    Plug 'tpope/vim-fugitive' | "Installed vim-fugitive, a Git wrapper
    Plug 'vim-airline/vim-airline' | " Installed Vim-Airline
    Plug 'junegunn/seoul256.vim' | " Installed Seoul256 Theme
    Plug 'vim-latex/vim-latex' | " Installed Vim-Latex, a LaTeX Plugin
    Plug 'nathanaelkane/vim-indent-guides'
        " Installed vim-indent-guides, a visual indentation guide
    Plug 'sakhnik/nvim-gdb', {'do':':!./install.sh \| UpdateRemotePlugins'}
        "Installed nvim-gdb, a GDB Wrapper for Neovim
    Plug 'ntpeters/vim-better-whitespace'
        "Installed vim-better-whitespace, a visual whitespace manager
    Plug 'godlygeek/tabular' | "Installed tabular plugin
    Plug 'plasticboy/vim-markdown' | "Installed vim-markdown
    Plug 'tpope/vim-surround' | "Installed vin-surround
    Plug 'wakatime/vim-wakatime' | "Installed WakaTime, a Coding Timekeeper
    Plug 'udalov/kotlin-vim' | "Installed Kotlin-Vim, a Kotlin Support Plugin
    Plug 'PProvost/vim-ps1' | "Installed ps1.vim, a PowerShell Syntax Checker
  " Plug '~/local-config-reader'
        " Installed Local-Config-Reader, a secure local configuration reader
call plug#end()

filetype off
filetype plugin indent on | "Set plugin loading according to filetype

" Personal Settings
if has('win32')
    set shell=powershell
    set shellquote= shellpipe=\| shellxquote=
    set shellcmdflag=\ -NoLogo\ -ExecutionPolicy\ RemoteSigned\ -Command
    set shellredir=\|\ Out-File\ -Encoding\ UTF8
endif | "Set Default Shell Application to PowerShell
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
set iskeyword+=\
let g:tex_flavor = "latex"
set colorcolumn=80
set splitbelow | set splitright | "Split below and right of current buffer
set foldmethod=manual | "Fold Manually

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
    "Press Ctrl+F3 to Change Working Directory to Current File for Current Tab
nnoremap <S-F3> :cd ..<CR>
    "Press Shift+F3 to Change Working Directory to One Level Up
nnoremap <F4> :call delete(expand('%'))<CR>
    "Press F4 to delete Current File
nnoremap <S-F4> :call delete(expand('%<.log'))<CR>
    "Press Shift+F4 to delete Current File
nnoremap <C-F4> :call delete(expand('%'))<CR>:bdelete!<CR>
    "Press Ctrl+F4 to delete Current File and quit buffer
nnoremap <F10> :up<CR>:source $XDG_CONFIG_HOME/nvim/init.vim<CR>
    "Press F10 to Save and Reload User NVIMRC
nnoremap <C-F10> :up<CR>:execute "source $XDG_CONFIG_HOME/nvim/ftplugin/".&ft.".vim"<CR>
    "Press Ctrl+F10 to Save and Reload User FT_NVIMRC

" AutoClose
inoremap ( ()<lt>++><Esc>5ha
inoremap [ []<lt>++><Esc>5ha
inoremap { {}<lt>++><Esc>5ha
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
if (&ft != 'tex')
    inoremap ' ''<lt>++><Esc>5ha
    inoremap ` ``<lt>++><Esc>5ha
    inoremap " ""<lt>++><Esc>5ha
endif

" AutoClose in Selection
vmap ( di(<Esc>p
vmap [ di[<Esc>p
vmap { di{<Esc>p
vmap {<CR> di{<CR><Esc>p
vmap {;<CR> di{;<CR><Esc>p
if (&ft != 'tex')
    vmap ' di'<Esc>p
    vmap ` di`<Esc>p
    vmap " di"<Esc>p
endif

" Automatic Soft Tab Usage
autocmd FileReadPre * if(&modifiable == 1) | retab | w | endif

" LangMap Settings
set langmap=ㅂq,ㅃQ,ㅈw,ㅉW,ㄷe,ㄸE,ㄱr,ㄲR,ㅅt,ㅆT,ㅛy,ㅕu,ㅑi,ㅐo,ㅒO,ㅔp,ㅖP,
    \ㅁa,ㄴs,ㅇd,ㄹf,ㅎg,ㅗh,ㅓj,ㅏk,ㅣl,ㅋz,ㅌx,ㅊc,ㅍv,ㅠb,ㅜn,ㅡm

" Additional Settings for the Vim-Plug Plugin
nnoremap <F12> :PlugInstall<CR>
    " Press F12 to Install new Plugins
nnoremap <C-F12> :PlugClean<CR>
    " Press Ctrl+F12 to Delete Plugins
nnoremap <S-F12> :PlugUpdate<CR>
    " Press Shift+F12 to Update new Plugins

" Additional Settings for the Seoul256 Plugin
let g:seoul256_background = 235
colo seoul256
highlight EndOfBuffer guifg=bg | "Hide Tildes in Empty Buffer Space for GUI
highlight EndOfBuffer ctermfg=bg | "Hide Tildes for Terminal

" Additional Settings for the Startify Plugin
nnoremap <F11> :Startify<CR>
    " Press F11 to Startify current buffer
nnoremap <C-F11> :tabe<CR>:Startify<CR>
    " Press Ctrl+F11 to Startify new tab
let g:startify_custom_header = [
\ '                                              __ __                        ',
\ '                            __               /\ \\ \                       ',
\ '                   __   __ /\_\    ___ ___   \ \ \\ \                      ',
\ '                  /\ \ /\ \\/\ \ /` __` __`\  \ \ \\ \                     ',
\ '                  \ \ \_/ / \ \ \/\ \/\ \/\ \  \ \_\\_\                    ',
\ '                   \ \___/   \ \_\ \_\ \_\ \_\  \/\_\\_\                   ',
\ '                    \/__/     \/_/\/_/\/_/\/_/   \/_//_/                   ',
\ '                                                                           ',
\ '                                                                           ',
\ '                     ___                         ___                       ',
\ '                        \      / \  \   /\      /                          ',
\ '                         \    ㅣ       / ㅣ    /                           ',
\ '                          \___ \    __/  / ___/                            ',
\ '                                                                           ',
\ '                                                                           ',
\ '    * Remember to DEL /s /q **.exe for quiet, recursive .exe cleaning      ',
\ '                                                                           ',
\ '    * Press F1 to Open User init.vim                                       ',
\ '    * Press Ctrl-F1 to Open System sysinit.vim                             ',
\ '    * Press F2 to Open User init.vim in New Tab                            ',
\ '    * Press Ctrl-F2 to Open System sysinit.vim in New Tab                  ',
\ '    * Press F3 to Change Working Directory to that of Current File         ',
\ '    * Press F10 to Save and Source a Vimscript File                        ',
\ '    * Press F11 to Startify the Current Buffer                             ',
\ '    * Press Ctrl-F11 to Open and Startify a New Tab                        ',
\ '    * Press F12 to Install new Plugins via Vim-Plug                        ',
\ '    * Press Shift-F12 to Update Plugins via Vim-Plug                       ',
\ '    * Press Ctrl-F12 to Delete Plugins via Vim-Plug                        ']
set sessionoptions=blank,curdir,folds,help,tabpages,winpos
    " Startify respects Preset Values of the Preceding Options

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

" Additional Settings for the vim-better-whitespace Plugin
let g:better_whitespace_ctermcolor = '#FFFFFF'
let g:strip_whitespace_on_save = 1
let g:better_whitespace_filetypes_blacklist = ['help', 'nerdtree', 'startify']

" Additional Settings for the vim-wakatime Plugin
let g:wakatime_PythonBinary = 'C:\Python37\python.exe'

" Additional Settings for the vim-markdown Plugin
let g:vim_markdown_folding_disabled = 1
