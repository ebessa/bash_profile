```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.vim/backup
ln -s ~/Projects/dotfiles/.zshrc ~/.zshrc
ln -s ~/Projects/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/Projects/dotfiles/.dircolors ~/.dircolors
ln -s ~/Projects/dotfiles/.functions ~/.functions
ln -s ~/Projects/dotfiles/tmux ~/tmux
ln -s ~/Projects/dotfiles/vim ~/vim
ln -s ~/Projects/dotfiles/.vimrc ~/.vimrc
ln -s ~/Projects/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/Projects/dotfiles/powerline-block-gray.tmuxtheme ~/.tmuxtheme
```
