## Installing arch

#### After chroot do the following:

#### EFI

mkdir /boot/efi
mount /dev/sdb2 /boot/efi

pacman -S grub efibootmgr dosfstools openssh os-prober mtools linux-headers

grub-mkconfig -o /boot/grub/grub.cfg
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=grub_uefi --recheck

cp /usr/share/locale/en\@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo

install microcode for cpu

grub-mkconfig -o /boot/grub/grub.cfg


----


#### Networking
https://wiki.archlinux.org/index.php/netctl
install: netctl, dialog, wpa_supplicant, dhcpcd

----
#### Programs
vi, vim, sudo 


## Post installation

`sudo pacman -S xorg-server xorg-server-common xorg-xfd xorg-xinit xorg-xset xorg-xinput pulseaudio pulseaudio-alsa pulseaudio`
`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
`sudo pacman -S base-devel neofetch htop ranger unzip git vim neovim redshift i3-gaps i3lock rofi kitty tmux zathura
udiskie python-pip zsh zsh-completions maim xclip telegram-desktop gnu-free-fonts ttf-opensans ttf-jetbrains-mono`

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
`pip install dbus-python --user`

#### Yay
```
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

`yay -S polybar spotify google-chrome spicetify-cli nvm siji-git qxkb slack-desktop`
