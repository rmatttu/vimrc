""" normal

" itchyny/lightline.vim
" Powerline
if has('win32') || has('win64') || has('mac')
  let g:powerline_enable = 1
else
  let g:powerline_enable = 0
endif
let g:powerline_char_readonly           = g:powerline_enable ? '' : 'x'
let g:powerline_char_branch             = g:powerline_enable ? '' : ''
let g:powerline_char_separator_left     = g:powerline_enable ? "\ue0b0" : ''
let g:powerline_char_separator_right    = g:powerline_enable ? "\ue0b2": ''
let g:powerline_char_subseparator_left  = g:powerline_enable ? "\ue0b1": '|'
let g:powerline_char_subseparator_right = g:powerline_enable ? "\ue0b3": '|'
let g:lightline = {
  \ 'colorscheme': 'powerline',
  \ 'mode_map': { 'c': 'NORMAL' },
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
  \ },
  \ 'component': {
  \   'lineinfo': '%3l:%-2v',
  \ },
  \ 'component_function': {
  \   'modified': 'LightLineModified',
  \   'readonly': 'LightLineReadonly',
  \   'fugitive': 'LightLineFugitive',
  \   'filename': 'LightLineFilename',
  \   'fileformat': 'LightLineFileformat',
  \   'filetype': 'LightLineFiletype',
  \   'fileencoding': 'LightLineFileencoding',
  \   'mode': 'LightLineMode',
  \ },
  \ 'separator': { 'left': g:powerline_char_separator_left, 'right': g:powerline_char_separator_right },
  \ 'subseparator': { 'left': g:powerline_char_subseparator_left, 'right': g:powerline_char_subseparator_right }
  \ }
function! LightLineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction
function! LightLineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? g:powerline_char_readonly : ''
endfunction
function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
    \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
    \  &ft == 'unite' ? unite#get_status_string() :
    \  &ft == 'vimshell' ? vimshell#get_status_string() :
    \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
    \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction
function! LightLineFugitive()
if exists("*fugitive#head")
  let branch = fugitive#head()
  return branch !=# '' ? g:powerline_char_branch . branch : ''
endif
  return ''
endfunction
function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction
function! LightLineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction
function! LightLineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction
function! LightLineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
" power line font sample
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" fuenor/qfixhowm
let howm_dir = $HOME.'/.config/vim/howm'
let qfixmemo_fileformat = 'unix'
let QFixHowm_ListCloseOnJump = 1
let QFixHowm_Folding = 0
let howm_filename = '%Y-%m-%d-%H%M%S.txt'
let QFixHowm_FileType = 'markdown.qfix_memo'

" Shougo/unite.vim
let g:unite_enable_start_insert = 1
" バッファ一覧
" noremap <C-P> :Unite buffer<CR>
" ファイル一覧
"noremap <C-B> :Unite buffer<CR>
noremap tb :Unite buffer<CR>
" 最近使ったファイルの一覧
"noremap <C-Z> :Unite file_mru<CR>
noremap tz :Unite file_mru<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
" 初期設定関数を起動する
au FileType unite call s:unite_my_settings()
  function! s:unite_my_settings()
  " Overwrite settings.
endfunction

" Shougo/vimfiler
let g:vimfiler_as_default_explorer = 1

" junegunn/vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" terryma/vim-multiple-cursors
let g:multi_cursor_use_default_mapping = 1

" tyru/caw.vim.git
nmap <Leader>/ <Plug>(caw:hatpos:toggle)
vmap <Leader>/ <Plug>(caw:hatpos:toggle)

" tpope/vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100

" vim-snipmate
let g:snipMate = { 'snippet_version' : 1 }
set runtimepath+=~/.config/vim/local
