syntax on
filetype plugin indent on 
" Config gerais
set autoread
set nowrap
set nocompatible  " Be iMproved
set number
set relativenumber
set ruler
set title
set encoding=utf8
set backspace=2
set hlsearch
set incsearch
set smartcase
set expandtab
set tabstop=2
set shiftwidth=2
set guicursor=i:ver25-iCursor " make cursor a thin line
" set directory=$HOME/.vim/swapfiles//
set noswapfile
set backupdir=$HOME/.vim/backup//
set clipboard=unnamed " enable copy/past between vim/OS
set colorcolumn=120 " draw a vertical line at specified column"
set background=dark
if (has("termguicolors"))    " Set 16m colors
 set termguicolors
endif
" map leader
let mapleader=","

" set blank characters with colors
set list
set listchars=tab:‣\ ,trail:·,precedes:«,extends:»
" highlight NonText ctermfg=237 ctermbg=Blue guifg=NONE cterm=NONE

"altera bindings de setas
no <up> :m -2<CR>
no <right> <Nop>
no <left> <Nop>
no <down> :m +1<CR>

" Write buffer
nmap <leader>w :w<CR>

nnoremap <Space> za "toggle block code

" resize tabs
map <leader><up> 5<C-w>+
map <leader><down> 5<C-w>-
map <leader><right> 5<C-w>>
map <leader><left> 5<C-w><

ino <up> <Nop>
ino <right> <Nop>
ino <down> <Nop>
ino <left> <Nop>

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=NONE ctermbg=233
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=NONE ctermbg=235

set runtimepath+=~/.vim/bundle/Vundle.vim
" Required:
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" vim-jsx
let g:jsx_ext_required = 0

" Add or remove your Bundles here:
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tomasr/molokai'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'
Plugin 'honza/vim-snippets'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/fzf'
Plugin 'w0rp/ale'
" You can specify revision/branch/tag.
Plugin 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call vundle#end()

" color scheme
colorscheme apprentice

" Required:

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

" Indent guides
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_color_change_percent = 30
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level=2
let g:indent_guides_size=1

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "right"
map <C-n> :NERDTreeToggle<CR>
"let NERDTreeMapOpenInTab='k'

" Nerdcommenter
let g:NERDSpaceDelims = 1

" syntastic
"let g:syntastic_javascript_checkers=['eslint']
"let g:syntastic_javascript_eslint_args = "--config /opt/loggi/web-builder/config/eslint.json"
let g:ale_javascript_eslint_options = "--config /opt/loggi/web-builder/config/eslint.json"
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:ale_set_loclist = 1

"set list
" emmet config
let g:user_emmet_mode='inv'  "enable all functions, which is equal to

" editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

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
" Make ctrlp open selection in a new tab by default
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" fonts
set guifont=DroidSansMono_Nerd_Font:h14
let g:airline_powerline_fonts = 1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#tabline#formatter = 'jsformatter' "show the folder name
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>< <Plug>AirlineSelectPrevTab
nmap <leader>> <Plug>AirlineSelectNextTab

" Tests
" Wildmenu
set wildmenu
set wildmode=list:longest,full

" expand 'find'
set path+=**
