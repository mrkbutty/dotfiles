

set mouse-=a
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4

set scrolloff=1
set sidescrolloff=5
syntax enable
set laststatus=2
set ruler

set cursorline
set number relativenumber
set noerrorbells
set visualbell
set title
set background=dark
set history=1000

" Set so that absolute and hybrid mode toggles:
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END


