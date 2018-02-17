" <PluginList>
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
":PlugInstall
call plug#begin('~/.vim/plugged')
Plug 'romainl/Apprentice'
" <Deoplete>
" Plug 'Shougo/deoplete.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
" </Deoplete>
Plug 'Yggdroot/indentLine'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'ryanoasis/vim-devicons'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale', {'do': 'npm install -g prettier'}
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'tpope/vim-obsession'
Plug 't9md/vim-choosewin'
" Plug 'garbas/vim-snipmate'
" Plug 'xolox/vim-notes'
" Plug 'junegunn/vim-emoji'
" Plug 'easymotion/vim-easymotion'
call plug#end()
" </PluginList>
