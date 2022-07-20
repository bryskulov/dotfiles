# Remove the initial message of Mac Terminal
export BASH_SILENCE_DEPRECATION_WARNING=1

# Environment setup
if [ -f ~/.env ]; then
    source ~/.env
fi

# ALIASES
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Load the shell dotfiles, and then some:
source ~/.bash_prompt

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add Homebrew to the PATH
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Load pyenv automatically by adding
# the following to ~/.zshrc:

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)" 
eval "$(pyenv virtualenv-init -)"

# Set terminal as vi
set -o vi
