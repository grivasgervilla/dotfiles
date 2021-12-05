set number "Show line numbers.
set relativenumber "Show line numbers relative to current line.
set autoindent "Use the indent of previous line for new line.
set incsearch "Display matches for a search pattern while typing.
set timeoutlen=100
set mouse=a "Enable mouse click.
set tabstop=4 "Number of columns occupied by a tab.
set shiftwidth=4 "Set width for autoindents.
set expandtab "Converts tabs to white spaces.
set softtabstop=4 "See multiple spaces as tabstops so <BS> does the right thing.
set cursorline "Highlight current cursorline.

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

Plug 'jiangmiao/auto-pairs'

"Themes
Plug 'arcticicestudio/nord-vim'
call plug#end()

"Set Nord theme
colorscheme nord

"LaTeX
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-xelatex',
\}
let g:vimtex_compiler_latexmk = {
    \ 'executable' : 'latexmk',
    \ 'options' : [
        \ '-xelatex',
        \ '-file-line-error',
        \ '-synctex=1',
        \ '-interaction=nonstopmode',
    \],
\}


"Press j and k to go from INSERT mode to NORMAL mode:
imap jk <Esc>
imap JK <Esc>

source $HOME/.config/nvim/keys/which-key.vim

"Specify snippet directories for UltiSnips
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]
