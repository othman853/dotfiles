"==================================================================================================
""GENERAL CONFIG
"==================================================================================================
"
""Disable -C flag and reset system wide configuration. Better safe than sorry.
set nocompatible

"Show line numbers
"set number
"
""Enable syntax highlighting
syntax on

"Let Vim guess file types, adjust auto-indenting accordingly and enable plugins that are file-type
"" specific.
filetype indent plugin on

"A color scheme that does not burn the eyes so much.
"colorscheme desert
"
"set textwidth=100
"
""==================================================================================================
"PATHOGEN
""==================================================================================================

runtime bundle/vim-pathogen/autoload/pathogen.vim

call pathogen#infect()

"==================================================================================================
""INVISIBLE CHARS
"==================================================================================================
"
""Enable Invisibles
set list

"Configure Invisible tabs and spaces
"set listchars=tab:>-,trail:-
"
""==================================================================================================
"TABS AND SPACES
""==================================================================================================

"Configure tab size
"set tabstop=2
"set shiftwidth=2
"set expandtab
"set backspace=indent,eol,start
"
""==================================================================================================
"RULER
""==================================================================================================

"Enable ruler
"set ruler
"
""Format ruler to show current date and time
set rulerformat=%55(%{strftime('%d-%m-%Y\ %H:%M:%S\ %p')}\ %5l,%-6(%c%V%)\ %P%)

"==================================================================================================
""COLUMN DELIMITER
"==================================================================================================
"
""Column limit to 100
set cc=100

"Higlights pieces of line that match overlength regex
"highlight OverLength ctermbg=cyan ctermfg=black guibg=#C92D2D
"
""Create regex pattern for column overlength when line reachs column 101
match OverLength /\%101v.\+/

"==================================================================================================
""CTRL P and NERDTREE
"==================================================================================================
"
""Enable NERDTree to show hidden files and folders
let NERDTreeShowHidden = 1

"Enable ctrlp to find hidden files and folders
"let g:ctrlp_show_hidden = 1
"
""Allow ctrlp to be invoked with CTRL + P
let g:ctrlp_map = '<c-p>'

"Map ctrl + [ to toggle nerdtree
"silent! nmap <F3> :NERDTreeToggle<CR>
"
""Set ctrlp on vim's runpath
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Set ctrlp to ignore some undesired files and folders
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
