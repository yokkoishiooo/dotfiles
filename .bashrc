export PATH=/usr/local/bin:$PATH
PATH=$PATH:/usr/texbin
export PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYTHONPATH=" /usr/local/lib/python3.4/site-packages/"
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
export LESS='-i -M -R -W'
eval "$(pyenv init -)"
# export MANPATH=/pot/local/man:$MANPATH
alias ls='ls -G'
alias rm='rm -rf'
alias grep='grep --color=auto'
# alias raspi='ssh -Y 192.168.23.70 -l shiho -p 50022'
alias poc_ssh='ssh -Y 192.168.58.30 -l yokkoishiooo -p 7012'
alias less='less -i'
alias ll='ls -l'
alias la='ls -la'
# alias vi='vim'

uuidgen-c++()
{
	local UUID=$(uuidgen)
	echo "// $UUID"
	echo "#define NS__IID \\"
	echo "{ 0x${UUID:0:8}, 0x${UUID:9:4}, 0x${UUID:14:4}, \\"
	echo -n "  { 0x${UUID:19:2}, 0x${UUID:21:2}, 0x${UUID:24:2}, "
	echo -n "0x${UUID:26:2}, 0x${UUID:28:2}, 0x${UUID:30:2}, "
	echo "0x${UUID:32:2}, 0x${UUID:34:2} } }"
}
eval export PATH="/Users/yokoishiho/.pyenv/shims:${PATH}"
export PYENV_SHELL=zsh
source '/usr/local/Cellar/pyenv/1.0.2_1/libexec/../completions/pyenv.zsh'
command pyenv rehash 2>/dev/null
pyenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}
