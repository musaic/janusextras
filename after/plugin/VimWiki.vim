""" VimWiki Settings

""" Wiki's

    " Default to Dropbox storage
    let personalwiki = {}
    let personalwiki.path = '~/Dropbox/vimwiki/personal/'
    let personalwiki.index = 'index'
    let personalwiki.auto_export = 1

    let codewiki = {}
    let codewiki.path = '~/Dropbox/vimwiki/code/'
    let codewiki.index = 'index'
    let codewiki.auto_export = 1
    let codewiki.nested_syntaxes = {'python': 'python', 
                                  \ 'c++': 'cpp',
                                  \ 'zsh': 'sh',
                                  \ 'sh': 'sh',
                                  \ 'java': 'java',
                                  \ 'ruby': 'ruby'}

    let projectwiki = {}
    let projectwiki.path = '~/Dropbox/vimwiki/project'
    let projectwiki.index = 'index'
    let projectwiki.auto_export = 1

    let sysnotes = {}
    let sysnotes.path = '~/Dropbox/vimwiki/sysnotes/'
    let sysnotes.index = 'index'
    let sysnotes.auto_export = 1
    let sysnotes.nested_syntaxes = {'python': 'python', 
                                  \ 'c++': 'cpp',
                                  \ 'zsh': 'sh',
                                  \ 'sh': 'sh',
                                  \ 'java': 'java',
                                  \ 'ruby': 'ruby'}

    let cheats = {}
    let cheats.path = '~/Dropbox/vimwiki/cheats/'
    let cheats.index = 'index'
    let cheats.auto_export = 1
    let cheats.nested_syntaxes = {'python': 'python', 
                                  \ 'c++': 'cpp',
                                  \ 'zsh': 'sh',
                                  \ 'sh': 'sh',
                                  \ 'java': 'java',
                                  \ 'ruby': 'ruby'}

    let g:vimwiki_list = [personalwiki, projectwiki, codewiki, sysnotes, cheats]


"""Global Options:

  " Register Extensions:
  let g:vimwiki_ext2syntax = {'.md': 'markdown', 
                  \ '.mkd': 'markdown',
                  \ '.wiki': 'media'}

  let g:vimwiki_hl_headers = 1

  "Customize Header Colors
  "  :hi VimwikiHeader1 guifg=#FF0000
  "  :hi VimwikiHeader2 guifg=#00FF00
  "  :hi VimwikiHeader3 guifg=#0000FF
  "  :hi VimwikiHeader4 guifg=#FF00FF
  "  :hi VimwikiHeader5 guifg=#00FFFF
  "  :hi VimwikiHeader6 guifg=#FFFF00

  let g:vimwiki_hl_cb_checked = 0
  let g:vimwiki_global_ext = 1
  let g:vimwiki_auto_checkbox = 0
  let g:vimwiki_menu = ''
  let g:vimwiki_listsyms = ' .oOX'
  let g:vimwiki_use_mouse = 1
  let g:vimwiki_folding = ''
  let g:vimwiki_list_ignore_newline = 1

""" Diary:

  let g:vimwiki_use_calendar = 1
" let g:vimwiki_diary_sort = 0
" let g:vimwiki_ = 0
" let g:vimwiki_ = 0
" let g:vimwiki_ = 0
" let g:vimwiki_ = 0



"" vim:fdm=expr:fdl=2
"" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='

