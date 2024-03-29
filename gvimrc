" Colorscheme
if has('win32') || has('win64')
  colorscheme badwolf
endif

if has('mac')
  " colorscheme pencil
  " let g:pencil_neutral_code_bg = 1

  set background=dark
  colorscheme badwolf

  " set termguicolors
  " colorscheme one

  " colorscheme solarized
  " set background=light
endif

" IME
if has('multi_byte_ime')
  highlight Cursor guifg=NONE guibg=YellowGreen
  highlight CursorIM guifg=NONE guibg=Purple
endif

" Kaoriya
SM3
set showtabline=1
set guioptions-=e
set lines=40
set columns=120

" Font
if has('win32') || has('win64')
  set guifont=Cica:h11:cSHIFTJIS:qDRAFT
  autocmd FocusGained * set transparency=240
  autocmd FocusLost * set transparency=220
endif

if has ('mac')
  set guifont=Cica:h12
endif

