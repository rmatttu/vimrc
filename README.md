# vimrc

`.vimrc` for Windows/Mac/linux by rmatttu

## Install

```bash
mkdir vimrc && curl -sLJ https://github.com/rmatttu/vimrc/releases/latest/download/release.tar.gz | tar zxf - -C vimrc
./vimrc/install.sh
```

## Memo

### howm memo directory

Please backup `~/.config/vim/howm` directory.

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
