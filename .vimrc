" vim options
if filereadable(expand('~/vim/.options.vimrc')) | source ~/vim/.options.vimrc | endif

" vimplug mappings
if filereadable(expand('~/vim/.mappings.vimrc')) | source ~/vim/.mappings.vimrc | endif

" vimplug plugins
if filereadable(expand('~/vim/.plugins.vimrc')) | source ~/vim/.plugins.vimrc | endif

" vimplug config
if filereadable(expand('~/vim/.config.vimrc')) | source ~/vim/.config.vimrc | endif
