
set -g __fish_git_prompt_showdirtystate 1

# Use plain characters (* for dirty, etc)
set -g __fish_git_prompt_use_informative_chars 0
set -g __fish_git_prompt_char_dirtystate '*'
# Optional: Show untracked files with '?'
# set -g __fish_git_prompt_showuntrackedfiles 1

# Optional: Show upstream changes (+/-)
# set -g __fish_git_prompt_showupstream auto
# function fish_prompt
# 	echo (whoami) @ (prompt_pwd -d 0) (fish_git_prompt)
# 	echo "λ "
# end

function fish_prompt
    printf "%s @ %s%s\n" (whoami) (prompt_pwd -d 0) (fish_git_prompt)
    printf "λ "
end
