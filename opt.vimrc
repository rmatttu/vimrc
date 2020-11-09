" nathanaelkane/vim-indent-guides.git
if has('gui_running')
  packadd vim-indent-guides
  " let g:indent_guides_enable_on_vim_startup=1
  let g:indent_guides_start_level=2
  " let g:indent_guides_auto_colors=0
  "autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#161616 ctermbg=gray
  "autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#4f4f4f ctermbg=darkgray
  let g:indent_guides_color_change_percent = 5
  let g:indent_guides_guide_size = 1
  IndentGuidesEnable
endif

" Yggdroot/indentLine
if !has('gui_running')
  packadd indentLine
  let g:indentLine_enabled = 1
  " let g:indentLine_setColors = 0
  let g:indentLine_color_term = 239
  let g:indentLine_char = '|'
  " let g:indentLine_concealcursor = '.'
  " let g:indentLine_conceallevel = 2
  " let g:indentLine_setConceal = 0
endif

" Shougo/deoplete.nvim
" Windowsかつguiのとき
if (has('win32') || has('win64')) && has('gui_running')
  let g:deoplete#enable_at_startup = 1

  " Shougo/neosnippet-snippets
  imap <C-k> <Plug>(neosnippet_expand_or_jump)
  smap <C-k> <Plug>(neosnippet_expand_or_jump)
  xmap <C-k> <Plug>(neosnippet_expand_target)

  " SuperTab like snippets behavior.
  imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: "\<TAB>"

  " For snippet_complete marker.
  if has('conceal')
    set conceallevel=2 concealcursor=i
  endif

  "" Enable snipMate compatibility feature.
  let g:neosnippet#enable_snipmate_compatibility = 1
  "" Tell Neosnippet about the other snippets
  let g:neosnippet#snippets_directory= $HOME ."/.vim/snip"
endif
