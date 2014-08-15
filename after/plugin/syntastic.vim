" vim:fdm=expr:fdl=2:ft=vim
" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
"
"
" Syntastic:

"let g:syntastic_debug=1

""" Mapping:
  nmap <Leader>st   :SyntasticToggleMode
  nmap <Leader>sc   :SyntasticCheck
  nmap <Leader>si   :SyntasticInfo

""" Misc Options:
  let g:syntastic_check_on_open=1
  let g:syntastic_check_on_wq=1
  let g:syntastic_echo_current_error=1
  if has('ballon_eval')
    let g:syntastic_enable_balloons = 1
  endif
"  let g:syntastic_ignore_files=['^/usr/include/', '\c\.h$']



""" Location List:
  let g:syntastic_always_populate_loc_list=1  "Default: 0
  let g:syntastic_loc_list_height=5
  let g:syntastic_auto_jump=1                 "Default: 0
  let g:syntastic_auto_loc_list=1             "0:noauto,1:auto open/close,2:autoclose


""" Status Line Formatting:
  let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

""" Signs:
  let g:syntastic_enable_signs=1
  let g:syntastic_error_symbol='✗'
  let g:syntastic_warning_symbol='⚠'
  "let g:syntastic_style_error_symbol=''
  "let g:syntastic_style_warning_symbol=''

""" Highlighting Groups:
  let g:syntastic_enable_highlighting = 1
  hi SyntasticErrorLine guibg=#2f0000

""" Mode Mapping:
  let g:syntastic_mode_map = { 'mode': 'active',
        \ 'active_filetypes': [],
        \ 'passive_filetypes': [] }

""" Checker Options:

""" Applescript:
    let g:syntastic_applescript_checkers = ['osacompile']

""" CSS:
    let g:syntastic_css_checkers = ['prettycss']

""" Cucumber:
    let g:syntastic_cucumber_checkers = ['cucumber']

""" HTML:
    let g:syntastic_html_checkers = ['tidy', 'validator']

"    g:syntastic_html_validator_api = 'http://validator.nu/'
"   URL of the service to use for checking; leave it to the default to run the
"   checks against http://validator.nu/, or set it to 'http://localhost:8888/'
"   if you're running a local service as per http://about.validator.nu/#src
"
"    g:syntastic_html_validator_parser = ''
"   parser to use; legal values are: xml, xmldtd, html, html5, html4, html4tr;
"   set it to 'html5' to check HTML5 files;  see the wiki for reference:
"   http://wiki.whatwg.org/wiki/Validator.nu_Common_Input_Parameters#parser
"
"    g:syntastic_html_validator_nsfilter = ''
"   sets the nsfilter for the parser; see the wiki for details:
"   http://wiki.whatwg.org/wiki/Validator.nu_Common_Input_Parameters#nsfilter

""" JSON:
    let g:syntastic_json_checkers = ['jsonlint']

""" YAML:
    let g:syntastic_yaml_checkers = ['jsyaml']

""" Javascript: (NOTE: Uses ~/.jshintrc, see http://www.jshint.com/docs/options/)
    let g:syntastic_javascript_checkers = ['jshint']

""" Java:
    let g:syntastic_java_checkers = ['javac']

  " g:syntastic_java_javac_executable (Default: 'javac')
  " Java compiler executable used for checking file
  " g:syntastic_java_maven_executable (Default: 'mvn')
  " Maven executable used for loading maven project classpath
  " g:syntastic_java_javac_options (Default: '-Xlint')
  " javac options
  " g:syntastic_java_javac_classpath (Default: '')
  " javac classpath; it can be changed by running the SyntasticJavacEditClasspath command
  " g:syntastic_java_javac_delete_output (Default: 1)
  " if set, the checker will delete the .class file created by javac
  " g:syntastic_java_javac_temp_dir (Default: set automatically based on OS)
  " temporary directory used for .class file output; this directory is automatically cleaned after running the checker
  " g:syntastic_java_javac_autoload_maven_classpath (Default: 1)
  " if enabled, and a file pom.xml is found in the current working directory, maven is used to load maven project's classpath
  " g:syntastic_java_javac_config_file_enabled (Default: 0)
  " if enabled, a file .syntastic_javac_config containing the classpath is created in the current working directory; you can edit this file using the SyntasticJavacEditClasspath command (the change will take effect next time you run the checker in the current directory)
  " g:syntastic_java_javac_config_file (Default: '.syntastic_javac_config')
  " name of the configuration file used by javac (you probably don't need to change this)

""" C:
    let g:syntastic_c_checkers = ['gcc']

""" CPP:
    let g:syntastic_cpp_checkers = ['gcc']

""" ObjectiveC:
    let g:syntastic_objc_checkers = ['gcc']

" In order to also check header files add this to your .vimrc:
" (this usually creates a .gch file in your source directory)
"
"   let g:syntastic_objc_check_header = 1
"
" To disable the search of included header files after special
" libraries like gtk and glib add this line to your .vimrc:
"
"   let g:syntastic_objc_no_include_search = 1
"
" To disable the include of the default include dirs (such as /usr/include)
" add this line to your .vimrc:
"
"   let g:syntastic_objc_no_default_include_dirs = 1
"
" To enable header files being re-checked on every file write add the
" following line to your .vimrc. Otherwise the header files are checked only
" one time on initially loading the file.
" In order to force syntastic to refresh the header includes simply
" unlet b:syntastic_objc_includes. Then the header files are being re-checked on
" the next file write.
"
"   let g:syntastic_objc_auto_refresh_includes = 1
"
" Alternatively you can set the buffer local variable b:syntastic_objc_cflags.
" If this variable is set for the current buffer no search for additional
" libraries is done. I.e. set the variable like this:
"
"   let b:syntastic_objc_cflags = ' -I/usr/include/libsoup-2.4'
"
" In order to add some custom include directories that should be added to the
" gcc command line you can add those to the global variable
" g:syntastic_objc_include_dirs. This list can be used like this:
"
"   let g:syntastic_objc_include_dirs = [ 'includes', 'headers' ]
"
" Moreover it is possible to add additional compiler options to the syntax
" checking execution via the variable 'g:syntastic_objc_compiler_options':
"
"   let g:syntastic_objc_compiler_options = ' -ansi'
"
" Additionally the setting 'g:syntastic_objc_config_file' allows you to define a
" file that contains additional compiler arguments like include directories or
" CFLAGS. The file is expected to contain one option per line. If none is
" given the filename defaults to '.syntastic_objc_config':
"
"   let g:syntastic_objc_config_file = '.config'
"
" Using the global variable 'g:syntastic_objc_remove_include_errors' you can
" specify whether errors of files included via the g:syntastic_objc_include_dirs'
" setting are removed from the result set:
"
"   let g:syntastic_objc_remove_include_errors = 1
"
" Use the variable 'g:syntastic_objc_errorformat' to override the default error
" format:
"
"   let g:syntastic_objc_errorformat = '%f:%l:%c: %trror: %m'
"
" Set your compiler executable with e.g. (defaults to gcc)
"
"   let g:syntastic_objc_compiler = 'clang'
"
""" ObjCPP:
    let g:syntastic_objcpp_checkers = ['gcc']

""" Python:
    let g:syntastic_python_checkers = ['flake8']
    let g:syntastic_python_flake8_args = '--ignore="E501,E302,E261,E701,E241,E126,E127,E128,W801"'

""" Puppet:
    let g:syntastic_puppet_checkers = ['puppet', 'puppetlint']

""" Ruby:
    let g:syntastic_ruby_checkers = ['mri']
    " let g:syntastic_ruby_exec = system("rbenv which ruby")  " locate the current ruby version

""" Shells:
    let g:syntastic_bash_checkers = ['sh']
    let g:syntastic_sh_checkers   = ['sh']
    let g:syntastic_zsh_checkers  = ['sh']

""" XML:
    let g:syntastic_xml_checkers = ['xmllint']


