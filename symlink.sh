## Symlink my dotfiles

cwd="$PWD"

# install fonts
sudo cp -rs "$cwd"/fonts/*.TTF /usr/share/fonts/TTF/
fc-cache

# install wallpapers
mkdir "$HOME"/.wallpapers
cp -rs "$cwd"/wallpapers/* "$HOME"/.wallpapers/

# install scripts
mkdir -p "$HOME"/.local/scripts
cp -rs "cwd"/scripts/* "$HOME"/.local/scripts/

# Vim/Nvim
ln -sfn "$cwd"/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -snf ~/.config/nvim/init.vim ~/.vimrc

# ln -sfn "$cwd"/.config/alacritty ~/.config/alacritty
ln -sfn "$cwd"/.config/kitty ~/.config/kitty

ln -sfn "$cwd"/.config/conky ~/.config/conky
ln -sfn "$cwd"/.config/mpv ~/.config/mpv
ln -sfn "$cwd"/.config/ranger ~/.config/ranger
ln -sfn "$cwd"/.config/gtk-3.0 ~/.config/gtk-3.0

# Zsh
ln -sfn "$cwd"/zsh/.zsh-plugins ~/.zsh-plugins
ln -sfn "$cwd"/zsh/.zprofile ~/.zprofile
ln -sfn "$cwd"/zsh/.zshenv ~/.zshenv
ln -sfn "$cwd"/zsh/.zshrc ~/.zshrc

ln -sfn "$cwd"/.config/picom ~/.config/picom
ln -sfn "$cwd"/.config/rofi ~/.config/rofi
ln -sfn "$cwd"/.config/zathura ~/.config/zathura

ln -sfn "$cwd"/redshift.conf ~/.config/redshift.conf

ln -sfn "$cwd"/.config/bspwm ~/.config/bspwm
ln -sfn "$cwd"/.config/polybar ~/.config/polybar
ln -sfn "$cwd"/.config/sxhkd ~/.config/sxhkd
