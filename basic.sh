#!/usr/bin/sh

echo "---- Global ----"
read -p 'Username: ' uservar
echo "export USER=$uservar" >> ~/.bashrc

echo "---- SETUP ----"
cp -R basic/.vim ~/
cp basic/.vimrc ~/

echo "---- Finished ----"
exit 0
