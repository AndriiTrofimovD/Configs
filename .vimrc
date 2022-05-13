
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  " Brief help
  " :PluginList       - lists configured plugins
  " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
  " :PluginSearch foo - searches for foo; append `!` to refresh local cache
  " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'tpope/vim-fugitive'
  Plugin 'git://git.wincent.com/command-t.git'
  Plugin 'file:///home/gmarik/path/to/plugin'
  Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
  Plugin 'morhetz/gruvbox'
  Plugin 'jiangmiao/auto-pairs'
"  Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required

filetype plugin indent on    " required

set showcmd
set encoding=utf-8
set vb t_vb=
set linebreak
set wrap
set number relativenumber
set autoindent
set shiftwidth=4
set smarttab
set cursorline
set path+=**
set wildmenu
set spell spelllang=en_us,de_de,ru,fr,pl
set hlsearch
set ignorecase
set incsearch
set noswapfile
set clipboard+=unnamedplus
set completeopt=menuone,noselect
"set nrformats+=alpha

filetype plugin on
syntax on
color torte
let &t_SI="\e[6 q"
let &t_EI="\e[2 q"
if !has('nvim')
  set ttymouse=xterm2
endif

function! CleverTab()
  if strpart( getline('.'), 0, col(',')-1 ) =~ '^\s*$'
    return "\<Tab>"
  else
    return "\<C-N"
  endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

hi clear SpellBad
hi SpellBad cterm=underline
colorscheme gruvbox
set background=dark

