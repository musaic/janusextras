"===============================================================================
" vim:ft=vim:fdm=expr:fdl=1:tw=78:et:ts=4:
" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
"
"
"          File: bashsupport.vim
"
"   Description:
"
"         Usage: ---
"  Requirements: ---
"    References: ---
"          Bugs: ---
"         Notes: Folding is based on the number of double quotes at the beginning
"                of a line. Fold levels are L = N - 1, where N := number of 
"                double-quote (") marks.
"        Author: Robert Nobles (RSN) <musaic@icloud.com>
"  Organization: MuNet
"       Created: 08/07/2014
"      Modified: 08/08/2014 13:08:51
"       Version: 0.1
"      Revision: ---
"       License: MIT Public License
"
"
" Copyright (c) 2014, Robert Nobles
"===============================================================================

"let g:BASH_GuiSnippetBrowser     = 'commandline'                  " Alt is 'gui'
let g:BASH_CodeSnippets          = $HOME.'/.janus/codesnippets'
let g:BASH_InsertFileHeader      = 'yes'
let g:BASH_Executable            = $SHELL      "  (Linux/U**X)
let g:BASH_ManualReader          = 'man'       "  (Linux/U**X)
let g:BASH_MapLeader             = '\'
let g:BASH_Errorformat           = '%f:\ line\ %l:\ %m'
let g:BASH_AlsoBash              = [ '*.bash' , '*.zsh' ]
let g:BASH_LineEndCommColDefault = 49

" Unused settings
"let g:BASH_SyntaxCheckOptionsGlob=''
"let g:BASH_Printheader =          '%<%f%h%m%<  %=%{strftime('%x %X')}     Page %N'

