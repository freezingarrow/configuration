" File: .vimrc
" Author: Nguyen Thai Binh
" Description: Vim configuration file
" Last Modified: May 25, 2018
"
"
"---------- Plugin Settings ----------
" Vundle (abbr for Vim Bundle) is a Plugin Manager.
" To install:
" git clone https://github.com/VundleVim/Vundle.Vim.git ~/.vim/bundle/Vundle.vim

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" File browser
Plugin 'scrooloose/nerdtree'

" Syntax checker for several languages
Plugin 'scrooloose/syntastic'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" python autocomplete for vim
"Plugin 'davidhalter/jedi-vim'

" vim-rails
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-dispatch'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Tagbar 
" Be aware that this plugin depends on ctags
"Plugin 'majutsushi/tagbar'

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plugin 'vim-airline/vim-airline'

" indentLine
Plugin 'Yggdroot/indentLine'

" Snippet
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" surround
Plugin 'tpope/vim-surround'

" delimitMate
Plugin 'Raimondi/delimitMate'

" Colorscheme
Plugin 'flazz/vim-colorschemes'

call vundle#end()

"---------- Additional plugin tweaks ----------

" NERDTree settings
let NERDTreeWinSize = 30

" Tagbar settings
"let g:tagbar_width = 30

" Powerline settings
set laststatus=2
set noshowmode

" jedi-vim
"autocmd FileType python setlocal completeopt-=preview

" delimitMate settings
let delimitMate_expand_cr = 1

" indentLine settings
let g:indentLine_char = '|'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_python_checkers = ['pep8']
"let g:syntastic_python_python_exec = '/usr/bin/python2'

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion = 1

"---------- Basic Vim Settings ----------

set encoding=utf-8
set fileformat=unix

set showcmd
set wildmenu

set noswapfile
set nobackup

" wrap lines 
"set wrap
"set textwidth=80
"set colorcolumn=+1

" searching
set ignorecase
set smartcase
set incsearch
set showmatch
"set hlsearch

" set relative line number
set number relativenumber

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Color settings
colorscheme molokai

" Syntax highlight 
syntax on
filetype plugin indent on

" TAB settings
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Fuzzy finder
set path+=**

"---------- Mapping Key ----------

" Change <leader> key
let mapleader = ","

" Let ; be also :
noremap ; :

" Edit ~/.vimrc on-the-fly
nnoremap <leader>ed :vs $MYVIMRC<CR>

" Clear searching highlight
nnoremap <silent> <leader><space> :noh<CR>

" Remap window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

"---------- Surround Shortcuts ----------

" Surround a word(s) with double-quotes
nmap <leader>" ysiw"
vmap <leader>" S"

" Surround a word(s) with single-quotes
nmap <leader>' ysiw'
vmap <leader>' S'

" Surround a word(s) with parentheses
nmap <leader>( ysiw(
nmap <leader>) ysiw)
vmap <leader>( S(
vmap <leader>) S)

" Surround a word(s) with brackets
nmap <leader>[ ysiw[
nmap <leader>] ysiw]
vmap <leader>[ S[
vmap <leader>] S]

" Surround a word(s) with braces
nmap <leader>{ ysiw{
nmap <leader>} ysiw}
vmap <leader>{ S{
vmap <leader>} S}

"-------------------------------

" Map copy and paste to clipboard
vmap <leader>y "+y
vmap <leader>d "+d

nmap <leader>p "+p
nmap <leader>P "+P

"-------------------------------

" Map NERDTree toggle
map <silent> <F2> :NERDTreeToggle<CR>

" Map Tagbar toggle
map <silent> <F3> :TagbarToggle<CR>
