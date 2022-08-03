set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias code "/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias g git
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# RUBY
set -gx PATH /Users/yuu/.rbenv/versions/3.1.1/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

 # Rust
 set -gx PATH $HOME/.cargo/env $PATH
 set -gx PATH $HOME/.cargo/bin $PATH

# Sublime Text
set -g SUBL_PATH "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

alias atc "java -jar /usr/local/bin/atc/atc.jar "

#set -x PYENV_ROOT $HOME/.pyenv
#set -x PATH  $PYENV_ROOT/bin $PATH
#pyenv init - | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

