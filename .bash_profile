# .bash_profile
# # Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
# .bashrc

# # Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export LIBGL_ALWAYS_INDIRECT=1
export PATH
source ~/enhancd/init.sh
