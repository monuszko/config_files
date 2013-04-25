" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Comment color
hi Comment ctermfg=DarkGreen


" Fake word wrap: (colorcolumn=80 in vim 7.3)
augroup vimrc_autocmds
  autocmd BufEnter,BufNew * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  autocmd BufEnter,BufNew * match OverLength /\%80v.\+/
augroup END

" typ poradzil function! ShowOverLength 
" endfunction
" autocmd BufEnter,BufNew * :call ShowOverLength()<cr>



" It's easy to forget about semicolons when switching Python -> C
" highlight NoSemicolon ctermbg=white  
" match NoSemicolon /[^;]$/

" Python style tabs (4 spaces):
:set expandtab
:set tabstop=4
:set shiftwidth=4

" Show invisible characters
":set list

" Show line numbers
" :set number
" :highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE guibg=NONE


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Menu for autocompletion (opening files)

" set wildmenu "is annoying

" F7, F8 = previous tab, next tab

map <F7> :tabp <CR>
map <F8> :tabn <CR>

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

