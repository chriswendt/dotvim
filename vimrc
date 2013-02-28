" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.
set encoding=utf-8								" Necessary to show Unicode glyphs

execute pathogen#infect('bundle/{}', '~/src/vim/bundle/{}')

syntax on                         " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

"runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set notitle                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" UNCOMMENT TO USE
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
"set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time

" statusline
"	cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"	format markers:
"		%< truncation point
"		%n buffer number
"		%f relative path to file
"		%m modified flag [+] (modified), [-] (unmodifiable) or nothing
"		%r readonly flag [RO]
"		%y filetype [ruby]
"		%= split point for left and right justification
"		%-35. width specification
"		%l current line number
"		%L number of lines in buffer
"		%c current column number
"		%V current virtual column number (-n), if different from %c
"		%P percentage through buffer
"		%) end of width specification
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

" Or use topfunky-light vividchalk 
colorscheme vividchalk

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove


