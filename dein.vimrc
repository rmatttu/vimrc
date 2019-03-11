" win, kaoriya-vimのpowerline文字化け対策（dein.tomlがshift-jisで読まれてしまう？）
set encoding=utf-8

" Powerline
if has('win32') || has('win64')
    let g:powerline_enable = 1
else
    let g:powerline_enable = 0
endif

" プラグインが実際にインストールされるディレクトリ
let g:dein_dir = expand('~/.vim/dein.vim')
" dein.vim 本体
let s:dein_repo_dir = g:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif

  if has('win32') || has('win64')
    set runtimepath+=~/.vim/dein.vim/repos/github.com/Shougo/dein.vim
  else
    execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
  endif
endif

if dein#load_state(g:dein_dir)
  call dein#begin(g:dein_dir)
  let s:toml      = '~/.vim/dein.toml'
  let s:lazy_toml = '~/.vim/dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

