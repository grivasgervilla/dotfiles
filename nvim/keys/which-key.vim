"WhickKey configuration
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

let g:which_key_map =  {}

let g:which_key_map.b = {
	\ 'name' : '+buffer',
	\ 'n' : ['bnext', 'next-buffer'],
	\ 'p' : ['bprevious', 'previous-buffer'],
	\ 'l' : ['blast', 'last-buffer'],
	\}

call which_key#register('<Space>', "g:which_key_map")
