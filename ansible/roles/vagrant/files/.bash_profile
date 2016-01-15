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
