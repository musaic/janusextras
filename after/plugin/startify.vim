"
" vim: ft=vim

let g:startify_session_dir = '~/.vim/session'

let g:startify_list_order = [
      \ ['   Sessions:'],
      \ 'sessions',
      \ ['   Bookmarks:'],
      \ 'bookmarks',
      \ ['   LRU:'],
      \ 'files',
      \ ['   Directory:'],
      \ 'dir',
      \ ]

let g:startify_skiplist = [
            \ '.DS_Store',
            \ $VIMRUNTIME .'/doc',
            \ '*.o',
            \ ]

let g:startify_bookmarks = [
      \ '~/.zprezto',
      \ '~/.vimrc',
      \ '~/.vim',
      \ '~/.janus',
      \ '~/.config',
      \ '~/bin',
      \ '~/Sites/musaic.github.io',
      \ '~/Sites/octopress',
      \ '~/Sites/Bootstrap3',
      \ '~/Repos/Slogger',
      \ '~/Repos/jekyll',
      \ '~/Repos/homebrew-dotfile-generator',
      \ '~/Projects/octopress',
      \ '~/Projects/dotconfig',
      \ '~/Projects/spaced',
      \ '~/DevTools/autopkg-ci',
      \ ]

let g:startify_files_number = 10
let g:startify_session_detection = 1
let g:startify_session_autoload = 1           "Default is 0
let g:startify_session_persistence = 1        "Default is 0
let g:startify_session_delete_buffers = 0
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1

" let g:startify_custom_header =
"   \ map(split(system('fortune >| ~/tmp/fortunate; say < ~/tmp/fortunate&;cowsay < ~/tmp/fortunate;'), '\n'), '"   ". v:val') + ['','']
let g:startify_custom_header =
  \ map(split(system('fortune | cowsay -p'), '\n'), '"   ". v:val') + ['','']
" let g:startify_custom_header = [
"             \ '   __      ___            ______ ____   ',
"             \ '   \ \    / (_)           |____  |___ \ ',
"             \ '    \ \  / / _ _ __ ___       / /  __) |',
"             \ '     \ \/ / | | ''_ ` _ \     / /  |__ <',
"             \ '      \  /  | | | | | | |   / /   ___) |',
"             \ '       \/   |_|_| |_| |_|  /_(_) |____/ ',
"             \ '',
"             \ '',
"             \ ]

let g:startify_restore_position = 0
let g:startify_session_savevars = [
       \ 'g:startify_session_savevars',
       \ 'g:startify_session_savecmds',
       \ 'g:random_plugin_use_feature'
       \ ]

" let g:startify_session_savecmds
let g:startify_disable_at_vimenter = 0
let g:startify_relative_path = 1


