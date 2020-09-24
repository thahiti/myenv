ssh rd "rm ~/.vimrc"
ssh rd "rm -rf ~/.vim"
scp .vimrc rd:/home/deploy/
scp -r ~/.vim rd:/home/deploy/
