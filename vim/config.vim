" <IndentLine>
let g:indentLine_char = '│'
" </IndentLine>

" <ALELinter>
" let g:ale_fix_on_save = 1
let g:ale_fixers = {
\  'javascript': ['prettier', 'eslint']
\}
let g:ale_set_loclist = 1
let g:ale_open_list = 0
let g:ale_set_quickfix = 1
let g:ale_keep_list_window_open = 1
let g:ale_javascript_eslint_options = "--config /opt/loggi/web-builder/config/eslint.json"
" </ALELinter>

" <Editorconfig>
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
" </Editorconfig>

" <Nerdcommenter>
let g:NERDSpaceDelims = 1
" </Nerdcommenter>

" <NERDTree>
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos = "right"
map <C-n> :NERDTreeToggle<CR>
" change vim's root directory whe 'C' in nerdtree
let g:NERDTreeChDirMode=2

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

  call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
  call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('scss', 'cyan', 'none', 'cyan', '#151515')
  call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
  call NERDTreeHighlightFile('editorconfig', 'Gray', 'none', '#686868', '#151515')
  call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
  call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
" </NERDTree>

" <Airline>
let g:airline_powerline_fonts = 1                   " will automatically populate the g:airline_symbols dictionary with the powerline symbols.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1

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
" let g:airline#extensions#tabline#formatter = 'jsformatter' "show the folder name
" </Airline>

" <Tern>
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
" </Tern>

" <Deoplete>
call deoplete#custom#option({'complete_method': 'omnifunc'})
call deoplete#custom#option({
\ 'auto_complete_delay': 200,
\ })
call deoplete#custom#source('omni', 'functions', {
\ 'javascript': ['tern#Complete']
\ })
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#sources#ternjs#filetypes = [
\ 'jsx',
\ 'javascript.jsx',
\ 'vue'
\ ]
" <Deoplete>

" <VimJsx>
let g:jsx_ext_required = 0
" </VimJsx>

" <ColorScheme>
colorscheme apprentice                              " set the color scheme
" </ColorScheme>

" <FZF>
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" call fzf#vim#tags({'options': '-q '.shellescape(expand('<cword>')), 'down': '~40%'})
" call fzf#vim#tags(expand('<cword>'))
" ctags --language=javascript -R --exclude=.git --exclude=android
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>eu :Ag<CR>
nnoremap <silent> <Leader>fc :Colors<CR>
nnoremap <silent> <Leader>fh :History<CR>
nnoremap <silent> <Leader>bb :Buffers<CR>
nnoremap <silent> <Leader>; :Commands<CR>
nnoremap <silent> <Leader>h :Helptags<CR>
nnoremap <silent> <Leader>ll :Lines<CR>
nnoremap <silent> <Leader>lb :BLines<CR>
" </FZF>

" <ChooseWin>
map <C-L> <Plug>(choosewin)
" </ChooseWin>

" <Neosnipets>
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
" </Neosnipets>
