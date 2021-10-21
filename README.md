## ubuntu
`sudo apt install build-essential vim git exuberant-ctags zsh fzf curl`

`ln -s ~/myenv/.vimrc ~`

`ln -s ~/myenv/.zsh ~`

## zsh
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

### add fzf plugins
edit ~/.zshrc

`plugins=(git fzf)`


## vim
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

`vim +PluginInstall +qall`

## git
for github push

`git remote set-url origin git@github.com:thahiti/myenv.git`
