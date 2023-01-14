" COLORS
let base16colorspace=256
syntax enable                   " enable syntax processing

" TABS AND SPACES
set tabstop=2                   " nr of visual spaces for TAB
set softtabstop=2               " nr of spaces in TAB when editing
set expandtab                   " tabs are spaces

" UI CONFIG
set number                      " show line numbers
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line
set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw only when need to
set showmatch                   " highlight matching {[()]}

" Hybrid numbering
set number relativenumber
set nu rnu

" SEARCHING
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
hi Search ctermbg=Magenta

" Turn off search highlight
nnoremap <CR><CR> :noh <CR>

" Customize statusline
set laststatus=2
set statusline=
set statusline+=%f              " tail of the filename

" Disable windows beep
set visualbell
set t_vb=
