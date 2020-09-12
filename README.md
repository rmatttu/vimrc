# vimrc

`.vimrc` for Windows/Mac/linux by rmatttu

## Install

```bash
cd ~/
git clone https://github.com/rmatttu/vimrc.git .vim
cd .vim
git submodule init
git submodule update
```

and...

### Mac/linux

```bash
./install.sh
```

### Windows

```bash
install.bat
```

and

* Install python3 [Python Releases for Windows | Python.org](https://www.python.org/downloads/windows/)
  * Download "Stable Release", "Windows x86-64 executable installer"
* Copy `python.exe` as `python3.exe`
  * ref [Not working on Windows · Issue #9 · roxma/vim-hug-neovim-rpc](https://github.com/roxma/vim-hug-neovim-rpc/issues/9)

```bat
cd "%USERPROFILE%\AppData\Local\Programs\Python\Python38"
copy python.exe python3.exe
```

* Set python dll path in `local/py.vimrc`

```vimrc
set pythonthreedll=C:\Users\<USER_NAME>\AppData\Local\Programs\Python\Python38\python38.dll
```

## Memo

### How to manage package

Add

```bash
cd pack/default/start
# or cd pack/default/opt
git submodule add <some-repo-URL>
```

Remove

```bash
git submodule deinit -f <some-repo-DIR>
git rm -f <some-repo-DIR>
```
