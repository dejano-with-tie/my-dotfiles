
#start x
if [[ ! $DISPLAY && XDG_VTNR -eq 1 ]]; then
	exec startx
fi

export VISUAL=vim
export EDITOR=vim
export TERM=xterm-256color

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export PATH="$HOME/.local/bin:$PATH"

# qt5 apps scaling fix
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCALE_FACTOR=1

source "$HOME/.cargo/env"
source /usr/share/nvm/init-nvm.sh

# only start if it is first Xorg session (display=:0)
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ] && [ "$DISPLAY" = ":0" ]; then
  exec tmux
fi

# This will run a ssh-agent process if there is not one already, and save the output thereof. If there is one running already, we retrieve the cached ssh-agent output and evaluate it which will set the necessary environment variables. The lifetime of the unlocked keys is set to 1 hour.
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
