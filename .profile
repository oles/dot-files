# set locale
export LC_ALL=en_US.UTF-8
export LANG=en_us.UTF-8


# set default editor
export EDITOR=nano


# fixes weird dpi scaling for qt apps (vlc, for example)
export QT_AUTO_SCREEN_SCALE_FACTOR=0


# adds local bins to $PATH
PATH="$HOME/.local/bin:$PATH"


# makes `npm install --global` install for current user
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules
