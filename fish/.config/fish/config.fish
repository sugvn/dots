set -Ux COLORTERM truecolor
if status is-interactive
    # Commands to≡ run in interactive sessions can go here
end
zoxide init fish --cmd cd| source
# Soft clear screen in Foot terminal without erasing scrollback
function clear-screen-keep-sb
    for i in (seq (math $LINES - 2))
        echo ''
    end
    tput cup 1 2
end
if string match -q 'foot*' $TERM
    bind \cl 'clear-screen-keep-sb'
end
function last_history_item
    echo $history[1]
end
abbr --position anywhere -a "!!" --function last_history_item
abbr --add tm tmux

export EDITOR=nvim

set -gx PATH $HOME/.local/share/nvim/mason/bin $PATH
# pnpm
set -gx PNPM_HOME "/home/sugan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
