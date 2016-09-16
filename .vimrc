" Config gerais
set number
set ruler
set title
set encoding=utf8
set backspace=2
set hlsearch
set incsearch
set smartcase
set expandtab
set tabstop=2

"altera bindings de setas
no <up> :m -2<CR>
no <right> <Nop>
no <left> <Nop>
no <down> :m +1<CR>

ino <up> <Nop>
ino <right> <Nop>
ino <down> <Nop>
ino <left> <Nop>

"remap movement keys for dvorak
noremap s l
noremap h k
noremap t j
noremap n h
noremap b n

" mappings
map <C-n> :NERDTreeToggle<CR>


set runtimepath+=~/.vim/bundle/vim-colorschemes
set runtimepath+=~/.vim/bundle/neobundle.vim/

"set list
"set statusline=SL%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
"let listchars=eol:¬ ",tab:――,trail:~,extends:>,precedes:<,space:·
syntax on
set background=dark
colorscheme molokai
set guifont=UbuntuMonoDerivativePowerline\ Nerd\ Font\ Complete:h14

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible  " Be iMproved
endif

" Required:
call neobundle#begin(expand('/Users/erickbessa/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'ryanoasis/vim-devicons'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'valloric/youcompleteme'
NeoBundle 'honza/vim-snippets'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

  call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
  call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
  call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
  call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
  call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
  call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
  call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
  call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
  call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
  call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
  call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
  call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')
" Ctrlp
let g:ctrlp_map = '<c-p>'
