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

Mac/linux

```bash
./install.sh
```

Windows

```bash
install.bat
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
