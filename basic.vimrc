" Settings {{{
set clipboard=unnamed

set directory=~/.config/vim/tmp
set backupdir=~/.config/vim/tmp
set noswapfile
set noundofile
set nowritebackup
set nobackup

set scrolloff=8
set sidescrolloff=5
set sidescroll=5

set fileencodings=utf-8,cp932,euc-jp,sjis,utf-16le
set ffs=unix,dos,mac

set tabstop=2
set shiftwidth=2
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
filetype plugin indent on

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
map <silent> <F2> :bp<cr>
map <silent> <F3> :bn<cr>

inoremap jj <Esc>

nmap <Space> <Leader>
vmap <Space> <Leader>

" 80行目に線を引く設定
nmap <Leader>l :execute "set colorcolumn=" . join(range(81, 9999), ',')<CR>
nmap <Leader>k :set colorcolumn=<CR>

" Ref: https://vim.fandom.com/wiki/Moving_lines_up_or_down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
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

