" Alex Eastaugh ~/.vimrc

" Startup
  set nocompatible " explicitly get out of vi-compatible mode
   
" Colours
  syntax on " enable syntax highlighting
    
" Spaces and Tabs
  set expandtab " tabs are spaces
  set tabstop=2 " number of visual spaces per TAB
  set shiftwidth=2 " number of spaces in a tab when editing

" General and UI Config
  set ruler " displays line number and curser position 
  set showcmd " show the command in bottom bar
  set cursorline " highlight current line
  set wildmenu " visual autocomplete for command menu
  set showmatch " highlight matching [{()}]
  
" Searching
  set incsearch " search as characters are entered
  set hlsearch " highlight matches
