" <InitialConfig>
syntax on
filetype plugin indent on 

let g:mapleader=","

" set gazillion colors
if (has("termguicolors"))                           " Set 16m colors.
 set termguicolors
endif
" </InitialConfig>

set list                                            " show invisibles
set listchars=tab:⇥',trail:␣                        " make tab char visible as codebase uses spaces
set nowrap                                          " don't wrap text
set ruler                                           " Show the line and column numbers of the cursor.
set nocompatible                                    " Be iMproved, disable vi compatability mode
set expandtab                                       " insert space characters whenever the tab key is pressed. if you want to enter a real tab character use Ctrl-V<Tab>
set tabstop=2                                       " set the default tab width
set shiftwidth=2                                    " Indentation <, =, >.
set showmatch                                       " Show matching brackets.
set noswapfile                                      " dont't write .swp files.
set clipboard=unnamed                               " enable copy/past between vim/OS.
set backupdir=$HOME/.vim/backup//                   " Set backup dir.
set colorcolumn=120                                 " draw a vertical line at specified column.
set laststatus=2                                    " Always show status line
set hlsearch                                        " highlight all search matches
set incsearch                                       " start searching when you type the first character of the search string
set wildmenu                                        " for command completion, show menu of available results
set wildmode=list:longest,full                      " for command completion, show menu of available results
set splitbelow                                      " Open new split panes to bottom.
set splitright                                      " Open new split panes to right.
set guifont=DroidSansMono_Nerd_Font:h14             " Set dev font.
set backspace=2                                     " Make backspace go up when reached begin of line.
set number                                          " Show line numbers.
set relativenumber                                  " Show line numbers relative to cursor position.
set complete-=i                                     " exclude 'include' files from autocomplete.
set complete-=t                                     " exclude tags from autocomplete.
set complete-=u                                     " exclude unloaded buffers from autocomplete.
set completeopt=menuone,longest,preview             " Use the popup menu even if only one match.
set ignorecase                                      " make search case insensitive
set smartcase                                       " When 'ignorecase' and 'smartcase' are both on, if a pattern contains an uppercase letter, it is case sensitive, otherwise, it is not
set scroll=5                                        " number of lines to scrolll with CTRL-D/CTRL-U"
set scrolloff=5                                     " always keep 5 lines of context around the cursor
set sidescrolloff=2                                 " The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set.
set showmatch                                       " Show matching brackets.
set hidden                                          " opening a new file when the current buffer has unsaved changes causes files to be hidden instead of closed.
set nojoinspaces                                    " only add 1 space when joining lines (J). One. Space. Not.  two spaces.
set nofoldenable                                    " Don't auto-fold code when opening file.
set foldmethod=syntax                               " Works best with vim-javascript.
set foldlevel=1                                     " only fold the fold imediate to cursor, not the entire file.
set foldnestmax=1                                   " trying to fold identations above this number will fold to this maximum.
set cursorline                                      " highlight the line the cursor is at
set history=1000                                    " Increase history from 20 default to 1000
set undodir=~/.vim/undo-dir                         " set undo dir
set undofile                                        " Save undo history. Even if vim reboots
