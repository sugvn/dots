function n --wraps='[ -n "$TMUX" ] && tmux neww nvim || nvim' --description 'alias n=[ -n "$TMUX" ] && tmux neww nvim || nvim'
  [ -n "$TMUX" ] && tmux neww nvim $argv || nvim $argv
        
end
