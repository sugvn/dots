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



