# sets the default locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# sets nano as the default editor
export EDITOR=nano


# adds local bins to $PATH
PATH="$HOME/.local/bin:$PATH"


# makes `npm install --global / npm install -g` install for current user
export npm_config_prefix=~/.node_modules

# adds installed stuff from npm to $PATH
PATH="$HOME/.node_modules/bin:$PATH"

# adds installed stuff from deno to $PATH
PATH="$HOME/.deno/bin:$PATH"
