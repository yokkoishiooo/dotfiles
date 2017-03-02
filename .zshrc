source ~/.bashrc
source ~/.nvm/nvm.sh
powerline-daemon -q
# . /Users/yokoishiho/.pyenv/versions/3.5.0/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh
. /Users/yokoishiho/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
# eval "$(pyenv init -)"
# valid powerline regardless of pyrhon version
#PYV=(`python --version`)
#
#if [ "$PYV" == "Python 3.5.0" ] ; then
#    #.~/.local/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh
#    . /Users/yokoishiho/.pyenv/versions/3.5.0/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh
#elif [ "$PYV" == "Python 2.7.9" ] ; then
#    . /Users/yokoishiho/.pyenv/versions/2.7.9/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#fi

source ~/.zplug/init.zsh
zplug "zsh-users/zsh-syntax-highlighting", nice:10
zplug "b4b4r07/enhancd", use:enhancd.sh

alias ctags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt share_history

fpath=(/usr/local/share/zsh-completions $fpath)

VIM=/usr/local/Cellar/neovim/0.1.7/share/nvim
export VIM

export M3_HOME=/usr/local/apache-maven-3.3.9
M3=$M3_HOME/bin
export PATH=$M3:$PATH
alias vim='nvim'

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=$M3:$JAVA_HOME:$PATH
