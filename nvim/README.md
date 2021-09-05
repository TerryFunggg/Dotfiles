# My neovim configuration

I'm currently using [dein.vim](https://github.com/Shougo/dein.vim) as my vim
plugin manager. Cuz I found that it support toml format which is really easy to
manage plugin list.

### setup
WARNING: You should checkout the dein.vim Qucik start first, it may have some
changed.
```
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

# I'm putting dein repo upder the .nvim
sh ./installer.sh ~/.nvim/dein
```

I usually put vim init files under the `.config` directory:
```
mv ../nvim ~/.config/
```

Last thing, open the nvim and it will download all the stuffs automatically.
if not, you can run `:call dein#install()` in nvim.

