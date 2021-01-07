" ====================================================================
" 			Vim-Plug Settings				
" ====================================================================

" Initialize vim-plug
" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'tpope/vim-vinegar'
" =======================
" Improved newtr
" - go one dir up
" ~ go home
" . current file path
" y. yank current file path
" I to toggle help in newtR
" =======================
Plug 'vim-airline/vim-airline' " Status line
Plug 'vim-airline/vim-airline-themes' " Status line themes
Plug 'arzg/vim-colors-xcode' " xcode colors
Plug 'scrooloose/nerdtree' " Tree
Plug 'tpope/vim-commentary' " comments, trigger with gc/gcc/gcgc
Plug 'airblade/vim-gitgutter' " git diffs
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multi cursor
Plug 'ctrlpvim/ctrlp.vim'         " fuzzy file finder
Plug 'ryanoasis/vim-devicons'    " icons
Plug 'arcticicestudio/nord-vim'		" color scheme
Plug 'machakann/vim-sandwich'		" surround text objects 
Plug 'tpope/vim-obsession'    " save session state so it can be loaded later by tmux plugin
" =======================
" Add
" 	Press sa{motion/textobject}{addition}. For example, a key sequence saiw( makes foo to (foo).
" Delete
"	sdb or sd{deletion}
" Replace
" 	srb{addition} or sr{deletion}{addition}.
" =======================
"
Plug 'mhinz/vim-startify'		" start page
Plug 'ap/vim-css-color'			" css colors highlighted
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine
Plug 'jremmen/vim-ripgrep'

" Language specific
" Plug 'dominikduda/vim_current_word' " Highlight word under cursor, similar to # and *
Plug 'sheerun/vim-polyglot' " Syntax highlight for many langs
Plug 'rust-lang/rust.vim'		" Rust syntax
Plug 'arzg/vim-rust-syntax-ext' " Extend rust-lang/rust.vim plugin with better highlight support

" Finish initialization of vim-plug
call plug#end()

" ====================================================================
" 			Vim Color Configuration				
" ====================================================================

set termguicolors
let g:nord_italic = 1			" enable italics
let g:nord_underline = 1		" enable underlining
" colorscheme nord			" color scheme selection
colorscheme xcodedark
" hi Comment cterm=italic
" hi Comment guifg=#5C6370 ctermfg=59
let g:airline_theme='minimalist'

" ====================================================================
" 			Vim Core Configuration				
" ====================================================================

set scrolloff=7				" Show 7 lines around the cursorline
let g:netrw_banner = 0			" Hide banner shown in the file explorer
let g:netrw_liststyle = 3		" Use tree view in file explorer
set number relativenumber		" Enable line numbers
set hidden  				" allow buffer switching without saving
set cursorline				" Show cursor line
set showtabline =2			" Show tabline always
set guicursor=				" Status bar shows mode; cursor doesn't need to
set clipboard+=unnamedplus		" Enable copy to system clipboard
set mouse=a				" Enable mouse support
set tabstop=2      			" The width of a TAB is set to 4.
                    			" Still it is a \t. It is just that
                    			" Vim will interpret it to be having
                    			" a width of 4.
set shiftwidth=2    			" Indents will have a width of 4
set softtabstop=2   			" Sets the number of columns for a TAB
set expandtab       			" Expand TABs to spaces
filetype plugin indent on		" Turns on the detection, plugin, and indent configurations
syntax on				" Enable syntax
set updatetime=100 " gitgutter update time but also vim's write to buffer
set laststatus=2 " always display status line
set cmdheight=2 " Better display for messages
" ====================================================================
" 			     Keybindings			
" ====================================================================

" Define my leader key
let mapleader = "\<Space>"
" let mapleader = ","

" Quick-save
nmap <leader>w :w<CR>

" Ctrl+h to stop searching, ':noh'
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>
" ====================================================================
" 			Plugin Configuration			
" ====================================================================

map <M-1> :NERDTreeToggle %<CR>

let g:rg_command = 'rg --vimgrep -S'

" Format rust file on save (rust-vim plugin)
let g:rustfmt_autosave = 1

" Git gutter config
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
nnoremap <silent> <C-g>p :GitGutterPreviewHunk<cr>
nnoremap <silent> <C-g>u :GitGutterUndoHunk<cr>

" CtrlP plugin config
let g:ctrlp_working_path_mode = 'ra' " r -> the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs 
let g:ctrlp_map = '<c-p>' " browse files
let g:ctrlp_cmd = 'CtrlP'
" most recent files
map <C-]> :CtrlPMRU<cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn|)|(target|node_modules))$',
    \ 'file': '\v\.(exe|so|dll)$',
\ }

source ~/.config/nvim/startify.vim
source ~/.config/nvim/coc.vim
