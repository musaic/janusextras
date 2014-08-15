" ack.vim

"=====================
" Ack"
map <S-F12> :execute "Ack -w " . expand("<cword")<Bar> cw<CR>
map <F12> :execute "Ack -w --type=" . &filetype . " " . expand("<cword>")<Bar> cw<CR>


