paths_to_search="~/personal ~/personal/scripts ~/projects ~/school ~/.dotfiles ~/"
pstdout="${TMPDIR:-/tmp}/fzf-pstdout-tmux-sessionizer"

if [[ $# -eq 1 ]]; then
    selected=$1
else
    # start fuzzy finder on new popup pane and write results on a temp file
    tmux popup -d '#{pane_current_path}' -xC -yC -E "find $paths_to_search -mindepth 1 -maxdepth 1 -type d | fzf > $pstdout"
    # get contents of the temp file to get selected path
    selected=`cat $pstdout`
fi

# if selected string is null, exit
if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected_name -c $selected
    exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selected
fi

tmux switch-client -t $selected_name
