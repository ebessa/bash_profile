" <PluginList>
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
":PlugInstall
call plug#begin('~/.vim/plugged')
Plug 'romainl/Apprentice'
Plug 'Shougo/deoplete.nvim', {'do': 'python3 -m pip install pynvim'}
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
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
Plug 'tpope/vim-obsession'
Plug 't9md/vim-choosewin'
Plug 'marijnh/tern_for_vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern tern-jsx' }
Plug 'ludovicchabant/vim-gutentags'
" Vim notes {{{
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
" }}} vim notes
" Plug 'garbas/vim-snipmate'
" Plug 'junegunn/vim-emoji'
" Plug 'easymotion/vim-easymotion'
call plug#end()
" </PluginList>
