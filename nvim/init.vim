set number "Show line numbers.
set relativenumber "Show line numbers relative to current line.
set autoindent "Use the indent of previous line for new line.
set incsearch "Display matches for a search pattern while typing.

syntax on "Turn on syntax highlighting.
syntax enable

"Autodetect filetype for syntax highlighting.
"Use the corresponding filetype plugin to use options for the detected
"filetype.
"Indent files according to the detected filetype.
filetype plugin indent on 

"Plugins

call plug#begin()
"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Snippets
Plug 'SirVer/ultisnips'

"Keybindings
Plug 'liuchengxu/vim-which-key'

"LaTeX
Plug 'lervag/vimtex'

"Themes
Plug 'arcticicestudio/nord-vim'
call plug#end()

"Set Nord theme
colorscheme nord

"Press j and k to go from INSERT mode to NORMAL mode:
imap jk <Esc>
