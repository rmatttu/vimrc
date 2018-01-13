"カラー設定した後にCursorIMを定義する方法

if has('win32') || has('win64') || has('mac')
    " Ctrl+Vの挙動を変更
    "imap <C-v> <S-Insert>
    "colorscheme desert
    "colorscheme japanesque
    colorscheme badwolf
endif

if has('multi_byte_ime')
  highlight Cursor guifg=NONE guibg=YellowGreen
  highlight CursorIM guifg=NONE guibg=Purple
endif


SM3
" タブページを常に表示
set showtabline=2
" gVimでもテキストベースのタブページを使う
set guioptions-=e
"set guioptions+=r "scroll bar
"set guioptions+=b
set lines=40
set columns=120


if has('win32') || has('win64')
    set guifont=VL_Gothic_for_Powerline:h11:cSHIFTJIS:qDRAFT
endif

if has ('mac')
    set guifont=Osaka-Mono:h14
endif


" フォントレンダリングを独自に行う
"set renderoptions=type:directx
"set antialias

"set colorcolumn=80
"execute "set colorcolumn=" . join(range(81, 9999), ',')

" noremap <C-V> <C-V>


