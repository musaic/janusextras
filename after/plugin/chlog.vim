"
""" Changelog
" Notes: 
" You create the "ChangeLog" file first!
" Maps <leader>o, however, there is a local and global mapping.  These
" behave differently, as follows:
"     Local: Create a new changelog entry for the current user/date
"     Global: Switch to changelog buf opened for current directory or
"     create one and open it. Next <leader>o assumes local function 
"             
runtime ftplugin/changelog.vim 
hi link ChanglogError Error
hi link ChangelogError NONE

"TODO: Modify date format for compatibility with Day One

let g:changelog_dateformat="%Y-%m-%d"
let g:changelog_username="Bob Nobles"
let g:changelog_name="Changelog" 
let g:changelog_dateformat="%Y-%m-%d" 

let g:changelog_new_date_format="%d  %u\n\n\t* %c\n\n" 
let g:changelog_new_entry_format="\t*%c"

let g:changelog_date_entry_search='^\s*%d\_s*%u' 
let g:changelog_date_end_entry_search='^\s*$'     "Blank line 


let m =     ":map _f  :set ai<CR>"    " need 'autoindent' set
let m = m . "{O<Esc>"		            " add empty line above item
let m = m . "}{)^W"		            " move to text after bullet
let m = m . "i     <CR>     <Esc>"    " add space for indent
let m = m . "gq}"		                " format text after the bullet
let m = m . "{dd"		                " remove the empty line
let m = m . "5lDJ"		            " put text after bullet
execute m			                   |" define the mapping

" Helpful Example from Vim's map.txt. This inserts a list number 
" that increases: >

function! NumberList()
	let counter = 0
	inoremap <expr> <C-L> ListItem()
	inoremap <expr> <C-R> ListReset()

	func ListItem()
	  let g:counter += 1
	  return g:counter . '. '
	endfunc

	func ListReset()
	  let g:counter = 0
	  return ''
	endfunc
endfunction

"" vim:ft=vim
"" vim:fdm=expr:fdl=2
"" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
