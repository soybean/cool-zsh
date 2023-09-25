#     __   ___    ___   _     
#    /  ] /   \  /   \ | |    
#   /  / |     ||     || |    
#  /  /  |  O  ||  O  || |___ 
# /   \_ |     ||     ||     |
# \     ||     ||     ||     |
#  \____| \___/  \___/ |_____|
# a zshell theme created by mel sawyer (@soybean)

gradient=(36 37 38 39 75 111 75 39 38 37 36)
iterator=1
len=(${#gradient[@]})
fg="%F{black}"

() {
  local LC_ALL="" LC_CTYPE="en_US.UTF-8"
  SEGMENT_SEPARATOR=$'\ue0b0'
}


render_segment() {
  local bg
  non_formatted=$gradient[(($iterator%$len))]
  bg="%K{$non_formatted}"
  echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  CURRENT_BG=$non_formatted
  ((iterator++))
  [[ -n $1 ]] && echo -n $1
}

end_prompt() {
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
    echo -n "%{%f%}"
}

render_git() {
  local ref
   if [[ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = "true" ]]; then
    ref="\u26a1$(git symbolic-ref --short HEAD 2> /dev/null)"
    render_segment
    echo -n "${ref}"
  fi
}

render_directories() {
  IFS="/" read -rA dir_path <<< $(pwd)
  for value in "${dir_path[@]:1}"
    do
      render_segment $value
  done
}


render_prompt() {
  render_git
  render_directories
  end_prompt
}

PROMPT='%{%f%b%k%}$(render_prompt) '
