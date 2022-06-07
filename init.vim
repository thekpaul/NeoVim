" INIT.vim: Initialising Configuration for NeoVim

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
"
" Save Like Windows (Erase all Whitespace)
inoremap <C-s> <Esc>:%s/\s\+$//e<CR>:let @/=""<CR>:update<CR>a
nnoremap <C-s> :%s/\s\+$//e<CR>:let @/=""<CR>:update<CR>

" delete, yank, select a document
nnoremap dad ggVGd
nnoremap yad %y
nnoremap vad ggVG

set noundofile | "No Undo Files

" Source Plugin Vimscript
filetype off
filetype plugin indent on | "Set plugin loading according to filetype

set termguicolors " Apply True Coloring in Terminal
set encoding=utf8 | "Set File Encoding as UTF-8
let $LANG = 'en_US'
runtime delmenu.vim
runtime menu.vim
set langmenu=en_US.utf8 | "Set Menu Language
set fileencodings=utf8 | "Set NEW File Encoding to UTF-8
    if (&fileencodings != 'utf8')
        set fileencodings=utf8
    endif | "Set ALL File Encoding to UTF-8
set number | "Line Numbering
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
set nowrap | set sidescroll=8 | "Disable Line Wrapping to Buffer
set list
set lcs=trail:X
set scrolloff=10

" Vim-Plug as Plugin Manager
call plug#begin('C:\Users\thekp\XDG\nvim\plugged')
    Plug 'mhinz/vim-startify', { 'on':  'Startify' } " Vim-Startify
    Plug 'kyazdani42/nvim-web-devicons' | " Devicons for NeoVim
    Plug 'romgrk/barbar.nvim' " Tabline Plugin
    Plug 'tpope/vim-fugitive' " Git Wrapper
    Plug 'vim-airline/vim-airline' " Light Statusline
    Plug 'junegunn/seoul256.vim' " Seoul256 Theme
    Plug 'nathanaelkane/vim-indent-guides'
        " Visual Indentation Guide
    Plug 'tpope/vim-surround' " Surrounder Plugin
    Plug 'wakatime/vim-wakatime' " Official WakaTime Plugin
    Plug 'lervag/vimtex' " Plugin for LaTeX
call plug#end()

" Additional Settings for each External Plugin

" Additional Settings for the BarBar Plugin
let bufferline = get(g:, 'bufferline', {}) " Option Dictionary Creation
let bufferline.add_in_buffer_number_order = v:false " Buffer Adding Control
let bufferline.animation = v:true " Enable/disable animations
let bufferline.auto_hide = v:true " Auto-hiding tab bar with single buffer
let bufferline.tabpages = v:true " Current/total tabpages indicator (top right)
let bufferline.closable = v:true " Enable/disable close button
let bufferline.clickable = v:true " Clicking tabs | left-click: go to buffer
                                  "               | middle-click: delete buffer
let bufferline.icons = 'both' " Icon Display Control
let bufferline.icon_custom_colors = v:false " Icon Highlight Group
let bufferline.maximum_padding = 2 " Maximum Padding Width at Bufferline
let bufferline.maximum_length = 20 " Maximum Buffer Name Length.
let bufferline.semantic_letters = v:true " Buffer-Pick Char Designation
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'
" New Buffer Letter Designation
let bufferline.no_name_title = v:null " Unnamed Buffer Nomenclature
" Bufferline icons
let bufferline.icon_separator_active = '|'
let bufferline.icon_separator_inactive = '|'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = 'T'
" Buffer Exclusion from Tabline
let bufferline.exclude_ft = ['javascript']
let bufferline.exclude_name = ['package.json']
" BarBar Mapping
" Move to previous/next
nnoremap <silent> ,, :BufferPrevious<CR>
nnoremap <silent> ,. :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent> ,< :BufferMovePrevious<CR>
nnoremap <silent> ,> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent> ,1 :BufferGoto 1<CR>
nnoremap <silent> ,2 :BufferGoto 2<CR>
nnoremap <silent> ,3 :BufferGoto 3<CR>
nnoremap <silent> ,4 :BufferGoto 4<CR>
nnoremap <silent> ,5 :BufferGoto 5<CR>
nnoremap <silent> ,6 :BufferGoto 6<CR>
nnoremap <silent> ,7 :BufferGoto 7<CR>
nnoremap <silent> ,8 :BufferGoto 8<CR>
nnoremap <silent> ,9 :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent> ,p :BufferPin<CR>
" Close buffer
nnoremap <silent> ,c :BufferClose<CR>
" Wipeout buffer :BufferWipeout<CR>
" Magic buffer-picking mode :BufferPick<CR>
" Close commands
" - :BufferCloseAllButCurrent<CR>
" - :BufferCloseAllButPinned<CR>
" - :BufferCloseAllButCurrentOrPinned<CR>
" - :BufferCloseBuffersLeft<CR>
" - :BufferCloseBuffersRight<CR>
" Sort automatically by...
nnoremap <silent> ,bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> ,bd :BufferOrderByDirectory<CR>
nnoremap <silent> ,bl :BufferOrderByLanguage<CR>
nnoremap <silent> ,bw :BufferOrderByWindowNumber<CR>

" " Additional Settings for the Vim-Plug Plugin
" nnoremap <F12> :PlugInstall<CR>
"     " Press F12 to Install new Plugins
" nnoremap <C-F12> :PlugClean<CR>
"     " Press Ctrl+F12 to Delete Plugins
" nnoremap <S-F12> :PlugUpdate<CR>
"     " Press Shift+F12 to Update new Plugins

" Additional Settings for the Seoul256 Plugin
let g:seoul256_background = 234
colo seoul256
highlight EndOfBuffer guifg=bg | "Hide Tildes in Empty Buffer Space for GUI
highlight EndOfBuffer ctermfg=bg | "Hide Tildes for Terminal

" Additional Settings for the Startify Plugin
" nnoremap <F11> :Startify<CR>
"     " Press F11 to Startify current buffer
" nnoremap <C-F11> :tabe<CR>:Startify<CR>
"     " Press Ctrl+F11 to Startify new tab
let g:startify_custom_header = [
\ '                                              __ __                       ',
\ '                            __               /\ \\ \                      ',
\ '                   __   __ /\_\    ___ ___   \ \ \\ \                     ',
\ '                  /\ \ /\ \\/\ \ /` __` __`\  \ \ \\ \                    ',
\ '                  \ \ \_/ / \ \ \/\ \/\ \/\ \  \ \_\\_\                   ',
\ '                   \ \___/   \ \_\ \_\ \_\ \_\  \/\_\\_\                  ',
\ '                    \/__/     \/_/\/_/\/_/\/_/   \/_//_/                  ',
\ '                                                                          ',
\ '                                                                          ',
\ '                     ___                         ___                      ',
\ '                        \      / \  \   /\      /                         ',
\ '                         \    ㅣ       / ㅣ    /                          ',
\ '                          \___ \    __/  / ___/                           ',
\ '                                                                          ',
\ '                                                                          ']
set sessionoptions=blank,curdir,folds,help,tabpages,winpos
    " Startify respects Preset Values of the Preceding Options

" " Additional Settings for the NERDTree Plugin
" let g:NERDTreeMinimalUI = 1
" let g:NERDTreeWinSize = 20
" autocmd VimEnter * NERDTree $HOME | wincmd l
" autocmd BufEnter * if (!exists("t:NERDTreeBufName") ) | silent NERDTreeMirror | wincmd l | endif
" autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Additional Settings for the vim-indent-guides Plugin
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']

" Vim-Markdown
let g:vim_markdown_folding_disabled = 1

" Jump Mechanism
nnoremap <silent> <C-j> /<++><CR>:let @/ = ""<CR>4"_xi
inoremap <silent> <C-j> <Esc>/<++><CR>:let @/ = ""<CR>4"_xi

" Set Mappings for Vimscript and Vanilla Vim Management
" nnoremap <F1> :cd $HOME/.config/nvim<CR>:e init.vim<CR>
"     "Press F1 to Open User init.vim
" nnoremap <C-F1> :cd $VIM<CR>:e sysinit.vim<CR>
"     "Press Ctrl+F1 to Open System sysinit.vim
" nnoremap <S-F1> :cd $HOME/.config/nvim<CR>:split init.vim<CR>
"     "Press Shift+F1 to Split-Open User init.vim
" nnoremap v<S-F1> :cd $HOME/.config/nvim<CR>:vsplit init.vim<CR>
"     "Press V and Shift+F1 to VSplit-Open User init.vim
" nnoremap <F2> :tabe $HOME/.config/nvim/init.vim<CR>:cd %:p:h<CR>
"     "Press F2 to Open User init.vim in New Tab
" nnoremap <C-F2> :tabe $VIM/sysinit.vim<CR>:cd %:p:h<CR>
"     "Press Ctrl+F2 to Open System sysinit.vim in New Tab
" nnoremap <F3> :cd %:p:h<CR>
"     "Press F3 to Change Working Directory to Current File
" nnoremap <C-F3> :tcd %:p:h<CR>
"     "Press Ctrl+F3 to Change Working Directory to Current File for Current Tab
" nnoremap <S-F3> :cd ..<CR>
"     "Press Shift+F3 to Change Working Directory to One Level Up
" nnoremap <F4> :call delete(expand('%'))<CR>
"     "Press F4 to delete Current File
" nnoremap <S-F4> :call delete(expand('%<').'.log')<CR>
"     "Press Shift+F4 to delete Current File
" nnoremap <C-F4> :call delete(expand('%'))<CR>:bdelete!<CR>
"     "Press Ctrl+F4 to delete Current File and quit buffer
" "F5 is universally reserved for Compiling and Executing Various Code
" "F6 is universally reserved for Auxiliary Tasks related to Compilation
" "F7 is not (yet) assigned for a mapping.
" "F8 is not (yet) assigned for a mapping.
" nnoremap <F9> :tabe<CR>:terminal<CR>a
"     "Press F9 to OPEN NEW TAB to TERMINAL
" nnoremap <C-F9> :terminal<CR>a
"     "Press Ctrl+F9 to change CURRENT buffer to TERMINAL
" nnoremap <F10> :up<CR>:source $HOME/.config/nvim/init.vim<CR>
"     "Press F10 to Save and Reload User NVIMRC
" nnoremap <C-F10> :up<CR>:execute "so $HOME/.config/nvim/ftplugin/".&ft.".vim"<CR>
"     "Press Ctrl+F10 to Save and Reload User FT_NVIMRC
" nnoremap <C-S-F10> :up<CR>:tabe "so $HOME/.config/nvim/ftplugin/".&ft.".vim"<CR>
"     "Press Ctrl+Shift+F10 to Save and Open User FT_NVIMRC in New Tab

" AutoClose
inoremap ( ()<lt>++><Esc>5ha
inoremap [ []<lt>++><Esc>5ha
inoremap { {}<lt>++><Esc>5ha
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
if (&ft != 'tex')
    if (&ft != 'verilog')
        inoremap ' ''<lt>++><Esc>5ha
    endif
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
    if (&ft != 'verilog')
        vmap ' di'<Esc>p
    endif
    vmap ` di`<Esc>p
    vmap " di"<Esc>p
endif
