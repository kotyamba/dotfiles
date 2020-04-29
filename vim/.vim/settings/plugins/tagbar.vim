" --- Plugin TAGBAR: majutsushi/tagbar
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_iconchars = ['+', '-']
let g:tagbar_map_close = '<C-m>'
" Remove variables from the list
let g:tagbar_type_php = {
	\'ctagstype': 'php',
	\'kinds': [
		\'i:interfaces',
		\'c:classes',
		\'d:constants',
		\'f:functions'
	\]
\}
