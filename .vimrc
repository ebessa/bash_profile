" vim options
if filereadable(expand('~/vim/.vimrc.options')) | source ~/vim/.vimrc.options | endif

" vimplug mappings
if filereadable(expand('~/vim/.vimrc.mappings')) | source ~/vim/.vimrc.mappings | endif

" vimplug plugins
if filereadable(expand('~/vim/.vimrc.plugins')) | source ~/vim/.vimrc.plugins | endif

" vimplug config
if filereadable(expand('~/vim/.vimrc.config')) | source ~/vim/.vimrc.config | endif
