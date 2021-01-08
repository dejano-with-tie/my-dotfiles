`sudo pacman -S xorg-server xorg-server-common xorg-xfd xorg-xinit pulseaudio pulseaudio-alsa pulseaudio`
`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
`sudo pacman -S base-devel neofetch htop ranger unzip git vim neovim redshift i3-gaps i3lock rofi kitty tmux zathura
udiskie python-pip zsh zsh-completions maim xclip`

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```

`pip install dbus-python --user`

#### Yay
```
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

`yay -S polybar spotify google-chrome spicetify-cli nvm qxkb`
