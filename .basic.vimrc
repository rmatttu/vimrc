" Settings {{{
set clipboard=unnamed

" set noswapfile
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set noundofile
set nowritebackup
set nobackup

set scrolloff=8
set sidescrolloff=5
set sidescroll=5

" textwidthが上書かれてしまうらしい
autocmd FileType text setlocal textwidth=0

set encoding=utf-8
set ff=unix
set ffs=unix,dos,mac

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set ignorecase
set smartcase
set number
set nowrap
set noshowmode
set autoread
set laststatus=2
syntax on
autocmd QuickFixCmdPost *grep* cwindow

if has('unix')
    set backspace=indent,eol,start
    set viminfo='100,<50,s10,h,rA:,rB:
endif

" 対応括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>
" }}}


" KeyMap {{{
noremap <ESC><ESC> :noh<ENTER>
nnoremap gw <C-w><C-w>

" ノーマルモードのときにF2で前のバッファ、F3で次のバッファに移動する
map <silent>    <F2>    :bp<cr>
map <silent>    <F3>    :bn<cr>

inoremap jj <Esc>

nmap <Space> <Leader>
vmap <Space> <Leader>

" 80行目に線を引く設定
nmap <Leader>l :execute "set colorcolumn=" . join(range(81, 9999), ',')<CR>
nmap <Leader>k :set colorcolumn=<CR>
" }}}


" Colorscheme {{{
if has('mac')
    " colorscheme desert256
    " colorscheme molokai256
    " colorscheme one

    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    let g:solarized_degrade=0
    let g:solarized_bold=1
    let g:solarized_underline=1
    let g:solarized_italic=1
    let g:solarized_contrast='normal'
    let g:solarized_visibility='normal'
    set background=light
    colorscheme solarized
endif
" }}}

