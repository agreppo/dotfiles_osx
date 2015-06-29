# !/bin/bash
# Script to backup / install dotfiles
# Add path to store backup files

case "$1" in
	install)
		echo "Install dotfiles"
		echo "- .bash_profile"
		cp bash_profile ~/.bash_profile
		echo "- .aliases"
		cp aliases ~/.aliases
		echo "- .aliases"
		cp brew_github_key ~/.brew_github_key
		echo "- .vimrc"
		cp vimrc ~/.vimrc
		echo "- .slate"
		cp slate ~/.slate
		echo "- .htoprc"
		cp htoprc ~/.htoprc
		echo "mjolnir"
		cp -r mjolnir/* ~/.mjolnir
		echo "vim"
		cp -r vim/* ~/.vim
		;;
	backup)
		echo "Backup dotfiles"
		echo "- .bash_profile"
		cp ~/.bash_profile bash_profile
		echo "- .aliases"
		cp ~/.aliases aliases
		echo "- .aliases"
		cp ~/.brew_github_key brew_github_key
		echo "- .vimrc"
		cp ~/.vimrc vimrc
		echo "- .slate"
		cp ~/.slate slate
		echo "- .htoprc"
		cp ~/.htoprc htoprc
		echo "- .mjolnir"
		cp -r ~/.mjolnir/ mjolnir
		echo "- .vim"
		cp -r ~/.vim/ vim
		;;
	*)
		echo "Using install or backup in parameter" 
		echo `dirname $0`
		;;

esac
