# a radically cool zshell theme created by mel sawyer (@soybean)

gradient=(36 37 38 39 75 111 75 39 38 37 36)
iterator=1
CURRENT_FG=black

() {
  local LC_ALL="" LC_CTYPE="en_US.UTF-8"
  SEGMENT_SEPARATOR=$'\ue0b0'
}


render_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

end_prompt() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

render_git() {
  local ref mode repo_path

   if [[ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = "true" ]]; then
    ref=$(git symbolic-ref HEAD 2> /dev/null) || \
    ref="◈ $(git describe --exact-match --tags HEAD 2> /dev/null)" || \
    ref="➦ $(git rev-parse --short HEAD 2> /dev/null j)" 

    render_segment $gradient[1] $CURRENT_FG
    echo -n "\u26a1${${ref:gs/%/%%}/refs\/heads\/}"
  fi
}

render_directories() {
  local len
  len=(${#gradient[@]})
  IFS="/" read -rA PARTS <<< $(pwd)
  for value in "${PARTS[@]:1}"
    do
      render_segment $gradient[(($iterator%$len+1))] $CURRENT_FG $value
      ((iterator++))
    done
}


render_prompt() {
  render_git
  render_directories
  end_prompt
}

PROMPT='%{%f%b%k%}$(render_prompt) '
