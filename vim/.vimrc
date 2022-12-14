" {{{ Plugins

execute pathogen#infect('plugins/{}')

filetype plugin indent on


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Photon
colorscheme photon
" colorscheme antiphoton

" Airline
let g:airline_theme='cool'

" }}}

" {{{ Scripts

augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

" {{{ Indentation

set shiftwidth=4
set tabstop=4
set expandtab

" }}}

" {{{ Search

set hlsearch
set incsearch

" }}}

" {{{ Mapping

nnoremap ! :!vim ~/.vimrc<CR>
nnoremap , :Explore<CR>
nnoremap ; :Rex<CR>

" }}}

" {{{ Readability

syntax on

set scrolloff=10
set nowrap
set showcmd
set showmode
set showmatch
set nocompatible
set number

if &term =~ '256color'
    set t_ut=
endif

" }}}

" {{{ Backup

set nobackup
set noswapfile noundofile
set nobackup nowritebackup

" }}}
