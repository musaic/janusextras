" vim:ft=vim:fdm=expr:fdl=1
" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='

"Need to guarantee the airline plugin loads before this--
"if !(exists('g:loaded_airline') && g:loaded_airline)
"  ru plugin/airline.vim
"endif

"" Unicode Symbols
 "let g:airline_left_sep = ''
 "let g:airline_left_sep = '»'
 "let g:airline_left_sep = '▶'
  let g:airline_left_sep = ''
 "let g:airline_left_alt_sep = ''
  let g:airline_left_alt_sep = '»'
 "let g:airline_right_sep = ''
 "let g:airline_right_sep = '«'
 "let g:airline_right_sep = '◀'
  let g:airline_right_sep = ''
 "let g:airline_right_alt_sep = ''
  let g:airline_right_alt_sep = '«'
 "let g:airline_linecolumn_prefix = '␊ '
  let g:airline_linecolumn_prefix = '␤ '
 "let g:airline_linecolumn_prefix = '¶ '
  let g:airline_branch_prefix = '⎇ '
  let g:airline_paste_symbol = 'ρ'
 "let g:airline_paste_symbol = 'Þ'
 "let g:airline_paste_symbol = '∥'

""" Defaults:
  " here are the the default values
  " let g:airline_section_a       (the mode/paste indicator)
  " let g:airline_section_b       (the fugitive/lawrencium branch indicator)
  " let g:airline_section_c       (bufferline or filename)
  " let g:airline_section_gutter
  " let g:airline_section_x       (tagbar, filetype)
  " let g:airline_section_y       (fileencoding, fileformat)
  " let g:airline_section_z       (percentage, line number, column number)
  " let g:airline_section_warning (syntastic, whitespace)

  " call s:check_defined('g:airline_mode_map', {
  "       \ '__' : '------',
  "       \ 'n'  : 'NORMAL',
  "       \ 'i'  : 'INSERT',
  "       \ 'R'  : 'REPLACE',
  "       \ 'v'  : 'VISUAL',
  "       \ 'V'  : 'V-LINE',
  "       \ 'c'  : 'CMD   ',
  "       \ '' : 'V-BLOCK',
  "       \ 's'  : 'SELECT',
  "       \ 'S'  : 'S-LINE',
  "       \ '' : 'S-BLOCK',
  "       \ })

    let g:airline_section_a = '%{get(w:, "airline_current_mode", "")}'
    let g:airline_section_b = '%{get(w:, "airline_current_branch", "")}'
    let g:airline_section_c = '%t%m%r'
  " let g:airline_section_gutter = ''
  " let g:airline_section_x = "%{strlen(&filetype)>0?&filetype:''}"
    let g:airline_section_y = '0x%B(%b) '
    let g:airline_section_z = '%3p%% '.g:airline_linecolumn_prefix.'%3l:%3c'



""" Options Most Likely to Change:
  " change the default theme
  let g:airline_theme='dark'

  " enable/disable usage of patched powerline font symbols
  let g:airline_powerline_fonts=0

  " determine whether inactive windows should have the left section collapsed to
  " only the filename of that buffer.
    let g:airline_inactive_collapse=1

  " define the set of text to display for each mode.
  " let g:airline_mode_map = {} " see source for current list

  " Should the preview window should be excluded from having its
  " statusline modified (helps when plugins use preview heavily)
  let g:airline_exclude_preview = 0

""" Plugin Integration Flags:
  " enable/disable fugitive/lawrencium integration
  let g:airline_enable_branch=1

  " enable/disable syntastic integration
  let g:airline_enable_syntastic=1

  " enable/disable tagbar integration
  let g:airline_enable_tagbar=1

""" Detections:
  " enable modified detection
  let g:airline_detect_modified=1

  " enable paste detection
  let g:airline_detect_paste=1

  " enable iminsert detection
  let g:airline_detect_iminsert=1
  let g:airline_detect_whitespace=1
  let g:airline_inactive_collapse=1



  " define the set of filename match queries which excludes a window from having
  " its statusline modified
  " let g:airline_exclude_filenames = [] " see source for current list

  " define the set of filetypes which are excluded from having its window
  " statusline modified
  " let g:airline_exclude_filetypes = [] " see source for current list





