function y --wraps='[ -n "$TMUX" ] && tmux neww yazi || yazi' --description 'alias y=[ -n "$TMUX" ] && tmux neww yazi || yazi'
  [ -n "$TMUX" ] && tmux neww yazi || yazi $argv
        
end
