# Redirect to bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Start tmux as default
#if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    #tmux attach -t default || tmux new -s default
#fi
