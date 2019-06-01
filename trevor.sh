#!/usr/bin/sh 

OS="`uname`"
case $OS in
  'Linux')
    echo "----- Linux -----";
    ;;
  'Darwin')
    echo "----- MacOS -----";
    osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true';
    echo "DarkMode";
    defaults write com.apple.dock static-only -bool true; killall Dock;
    cp .zshrc ~
    ;;
  *) ;;
esac

echo "----- Global -----";
read -p 'Username: ' uservar;
echo "export USER=$uservar" >> ~/.zshrc;

echo "----- Setup -----";
cp -R .vim ~/;
echo "Color + 42Header";
cp .vimrc ~/;
echo "Vimrc";
cp .gitignore ~/;
git config --global core.excludesfile ~/.gitignore;
echo "Gitignore";

source ~/.zshrc

echo "----- Github -----";
echo "Would you like to clone a repo?"
read gbool;
if [ "$gbool" = "y" ] || [ "$gbool" = "Y" ]
then
	read -p 'Github username: ' guser;
	read -p 'Repo Name: ' repo;
	git clone "https://github.com/${guser}/${repo}" ~/Desktop/${repo}
else
	echo "Cool Beans";
fi
echo "----- Finished -----";
exit 0
