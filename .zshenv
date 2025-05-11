export LANG=en_US.utf-8
export LC_ALL=en_US.utf-8

export PATH=$HOME/bin:$PATH
alias brew="PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew"
alias ctags="PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin ctags"
export PATH="$(brew --prefix)/bin:$PATH"
export PATH="$(brew --prefix)/sbin:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"

# Docker
export DOCKER_HOST=unix:///${HOME}/.lima/default/sock/docker.sock
export DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}


# work
[ -f ~/zsh4work/.zshenv_work ] && source ~/zsh4work/.zshenv_work

# dev
[ -d "$HOME/pdbin" ] && export PATH="$HOME/pdbin:$PATH"

# Go
export GOPATH=$HOME/go
export PATH="$GOENV_ROOT/bin:$PATH"
export PATH="$GOROOT/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

# Rust
[ -d  "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# Yarn
export PATH="$HOME/dotfiles/lsp_modules/node_modules/.bin:$PATH"

# anyenv
# anyenv init - > ~/.anyenv-rc.sh
[ -f ~/.anyenv-rc.sh ] && source ~/.anyenv-rc.sh;

# PHP
export PATH="$HOME/.composer/vendor/bin:$PATH"
