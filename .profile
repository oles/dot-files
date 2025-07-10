# sets the default locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# sets nano as the default editor
export EDITOR=nano

# adds syntax highlighting to less
export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '

# disables funding messages for composer
export COMPOSER_FUND=0

# makes `npm install --global / npm install -g` install for current user
export npm_config_prefix=~/.node_modules

# adds local bins to $PATH
PATH="$HOME/.local/bin:$PATH"

# adds installed stuff from npm to $PATH
PATH="$HOME/.node_modules/bin:$PATH"

# adds installed stuff from deno to $PATH
PATH="$HOME/.deno/bin:$PATH"
