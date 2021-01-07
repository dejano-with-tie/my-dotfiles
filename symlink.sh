## Symlink dotfiles
## Write this script in a way it perserves old config with "original-name.bak" pattern

cwd="$PWD"

# install fonts
sudo cp -rs "$cwd"/fonts/*.TTF /usr/share/fonts/TTF/
fc-cache

# install wallpapers
mkdir "$HOME"/.wallpapers
cp -rs "$cwd"/wallpapers/* "$HOME"/.wallpapers/

# install scripts
mkdir -p "$HOME"/.local/bin
cp -rs "cwd"/scripts/* "$HOME"/.local/bin/

# Vim/Nvim
ln -sfn "$cwd"/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -snf ~/.config/nvim/init.vim ~/.vimrc

# Zsh
ln -sfn "$cwd"/zsh/.zshenv ~/.zshenv
ln -sfn "$cwd"/zsh/.zshrc ~/.zshrc

# Bash
ln -sfn "$cwd"/bash/.bash_aliases ~/.bash_aliases
ln -sfn "$cwd"/bash/.bash_logout ~/.bash_logout
ln -sfn "$cwd"/bash/.bash_profile ~/.bash_profile
ln -sfn "$cwd"/bash/.bashrc ~/.bashrc

ln -sfn "$cwd"/.gitconfig ~/.gitconfig

ln -sfn "$cwd"/.profile ~/.profile

ln -sfn "$cwd"/.config/coc ~/.config/coc
ln -sfn "$cwd"/.config/htop ~/.config/htop
ln -sfn "$cwd"/.config/i3/config ~/.config/i3/config
ln -sfn "$cwd"/.config/kitty ~/.config/kitty
ln -sfn "$cwd"/.config/mimeapps.list ~/.config/mimeapps.list
ln -sfn "$cwd"/.config/neofetch ~/.config/neofetch
ln -sfn "$cwd"/.config/polybar ~/.config/polybar
ln -sfn "$cwd"/.config/qxkb.cfg ~/.config/qxkb.cfg
ln -sfn "$cwd"/.config/ranger ~/.config/ranger
ln -sfn "$cwd"/.config/rofi ~/.config/rofi
ln -sfn "$cwd"/.config/spicetify ~/.config/spicetify
# Tmux
ln -sfn "$cwd"/.config/tmux ~/.tmux
ln -sfn "$cwd"/.config/tmux/.tmux.conf ~/.tmux.conf

ln -sfn "$cwd"/.xinitrc ~/.xinitrc


# sudo ln -sfn "$cwd"/timesyncd.conf /etc/systemd/timesyncd.conf
