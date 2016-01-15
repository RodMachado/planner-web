parse_git_branch() {
  git branch --color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}

export PS1='\[\e[1;32m\]\u@\[\e[1;32m\]\h\[\e[1;37m\]:\[\e[1;36m\]\w\[\e[1;33m\]$(parse_git_branch) $ \[\e[0m\]'

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

cd /planner-web

if [ ! -f /tmp/.X10-lock ]; then
  Xvfb :10 -screen 0 1366x768x24 -ac &
fi

export DISPLAY=:10

export devise_key='8c46ea8c44439699e46b066d36157cc9e0b239a9d69ce8b18672802b286a0cd01fa783c912fdf490461753a594ac3e129dbbd119163fba56957ab441cab206ad'
