### /r/unixporn
https://github.com/b4skyx/dotfiles/
https://gitlab.jaytaala.com/j.taala/jt-config-repo  -> https://confluence.jaytaala.com/display/TKB/My+Manjaro+i3+setup#space-menu-link-content

### notes

#### Sound over network
https://gavv.github.io/articles/roc-tutorial/

pulseaudio-dlna-python3-git -> for chromecast devices
pulseaudio-dlna --encoder-backend ffmpeg
https://wiki.archlinux.org/index.php/PulseAudio/Examples#PulseAudio_over_network

#### Time sync
sudo systemctl enable systemd-timesyncd.service
timedatectl set-ntp true # use timesync

#### SSH
sudo systemctl enable sshd.service

#### Trim ssd
Periodic TRIM
The util-linux package provides fstrim.service and fstrim.timer systemd unit files. Enabling the timer will activate the service weekly. The service executes fstrim(8) on all mounted filesystems on devices that support the discard operation.

The timer relies on the timestamp of /var/lib/systemd/timers/stamp-fstrim.timer (which it will create upon first invocation) to know whether a week has elapsed since it last ran. Therefore there is no need to worry about too frequent invocations, in an anacron-like fashion.

#### Change rofi theme
rofi-theme-selector
Theme files can be found in usr/share/rofi/themes.

### cool programs
spotify cli
https://github.com/khanhas/spicetify-cli
https://github.com/morpheusthewhite/spicetify-themes


### Install
mkdir .tmp
sudo pacman -S unzip git neovim redshift

#### neovim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

yay -S spotify

yay -S spicetify-cli
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R

git clone https://github.com/morpheusthewhite/spicetify-themes.git .tmp/
cd .tmp/spicetify-themes
cp -r Nord ~/.config/spicetify/Themes
