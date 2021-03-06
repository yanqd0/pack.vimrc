""" The config of packages under pack

" extra-colors {{{

" molokai

" }}}

" Navigate {{{

" ctrlp {{{
try
    let s:ctrlp = g:loaded_ctrlp
catch
    let s:ctrlp = 0
endtry

if s:ctrlp
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_max_history = &history
    let g:ctrlp_max_files = 30000
    let g:ctrlp_max_depth = 10
    let g:ctrlp_mruf_max = 250
    let g:ctrlp_lazy_update = 0
    let g:ctrlp_show_hidden = 1
    let g:ctrlp_custom_ignore = {
                \ 'dir':  '\v[\/]\.(git|hg|svn)$',
                \ 'file': '\v\.(exe|so|dll)$',
                \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
                \ }
endif
" }}}

" ctrlp-funky {{{
try
    let s:ctrlp_funky = g:loaded_ctrlp_funky
catch
    let s:ctrlp_funky = 0
endtry

if s:ctrlp_funky
    noremap <Leader>cp :CtrlPFunky<CR>
    noremap <Leader>cf :execute 'CtrlPFunky ' . expand('<cword>')<CR>
    let g:ctrlp_funky_matchtype = 'path'
    let g:ctrlp_funky_sort_by_mru = 1
    let g:ctrlp_funky_syntax_highlight = 1
    let g:ctrlp_funky_use_cache = 1
    let g:ctrlp_funky_nolim = 1
endif
" }}}

" NERDTree {{{
try
    let s:NERDTree = g:loaded_nerd_tree
catch
    let s:NERDTree = 0
endtry

if s:NERDTree
    noremap <silent> <F6> :NERDTreeToggle<CR>
    noremap <C-F6> :NERDTreeFind<CR>
"   let loaded_nerd_tree=1              " Open NERD tree when start-up
    let NERDTreeChDirMode=2             " Set the root of NERD tree as current directory
"   let NERDTreeQuitOnOpen=1            " Closes the tree window after opening a file
    let NERDTreeShowBookmarks=1         " The bookmarks table will be displayed
    let NERDTreeWinPos=0                " Show the window at the left (1 means right)
    let NERDTreeWinSize=32              " Window size when the NERD tree is opened
    let NERDTreeRespectWildIgnore=1     " the 'wildignore' setting is respected
    let NERDTreeMouseMode=2             " Double click file and single click directory
    let NERDTreeAutoDeleteBuffer=1      " Auto delete invalid buffers
endif
" }}}

" gundo.vim {{{
try
    let s:gundo = g:loaded_gundo
catch
    let s:gundo = 0
endtry

if s:gundo
    noremap <Leader>ud :GundoToggle<CR>
    let g:gundo_right = 1               " Let the Gundo graph window at the right
    let g:gundo_preview_bottom = 1      " Let the preview window at the bottom
endif
" }}}

" TaskList.vim {{{
try
    let s:TaskList = g:loaded_tasklist
catch
    let s:TaskList = 0
endtry

if s:TaskList
    if !hasmapto('<Plug>TaskList')
        map <unique> <Leader>td <Plug>TaskList
    endif
endif
" }}}

" tagbar {{{
try
    let s:tagbar = g:tagbar_silent
    let s:tagbar = 1
catch
    let s:tagbar = 0
endtry

if s:tagbar
    noremap <silent> <F9> :TagbarToggle<CR>
    let g:tagbar_width = 40             " Width of the Tagbar window
    let g:tagbar_autofocus = 1          " Jump to Tagbar window on open
    let g:tagbar_show_linenumbers=2     " Show relative line numbers
    let g:tagbar_singleclick = 1        " Single-click on a tag jumps to it
endif
" }}}

" }}}

" Move {{{

" vim-easymotion {{{
try
    let s:EasyMotion = g:EasyMotion_loaded
catch
    let s:EasyMotion = 0
endtry

if s:EasyMotion
    let g:EasyMotion_smartcase = 1
    noremap <Space> <Plug>(easymotion-s2)
endif
" }}}

" vim-signature

" }}}

" Input {{{

" delimitMate {{{
try
    let s:DelimitMate = g:loaded_delimitMate
catch
    let s:DelimitMate = 0
endtry

if s:DelimitMate
    let delimitMate_expand_cr = 1       " <CR> complete a line
    let delimitMate_expand_space = 1    " <Space> complete another space behind
    let delimitMate_jump_expansion = 1  " Jump can cross lines
    let delimitMate_excluded_ft = "mail,txt"
    autocmd FileType vim,html,xml
                \ let b:delimitMate_matchpairs = "(:),[:],{:},<:>"
endif
" }}}

" vim-surround

" vim-repeat

" tabular

" }}}

" Comment {{{

" nerdcommenter

" vim-commentary

" }}}

" Completion {{{

" supertab {{{
try
    let s:SuperTab = g:loaded_supertab
catch
    let s:SuperTab = 0
endtry

if s:SuperTab
    let g:SuperTabDefaultCompletionType = '<C-x><C-p>'
    let g:SuperTabMappingForward = '<Tab>'
    let g:SuperTabMappingBackward = '<S-Tab>'
endif
" }}}

" TODO: neocomplcache

" }}}

" Syntax-check {{{

" syntastic {{{
try
    let s:Syntastic = g:loaded_syntastic_plugin
catch
    let s:Syntastic = 0
endtry

if s:Syntastic
    noremap <silent> <F4> :SyntasticToggleMode<CR>
    noremap <silent> <C-F4> :SyntasticCheck<CR>
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
endif
" }}}

" }}}

" Status-line {{{

" vim-airline

" }}}

" Git {{{

" Note: The command git is necessary in system.

" vim-gitgutter {{{
try
    let s:gitgutter = g:loaded_gitgutter
catch
    let s:gitgutter = 0
endtry

if s:gitgutter
    noremap <silent> <leader>gg <ESC>:GitGutterToggle<CR>:GitGutterLineHighlightsToggle<CR>
    let g:gitgutter_enabled = 1
    let g:gitgutter_highlight_lines = 1
    let g:gitgutter_escape_grep = 1
    let g:gitgutter_realtime = 0
    let g:gitgutter_eager = 0
endif
" }}}

" vim-fugitive

" }}}

" Snippets {{{

" Note: Python 2.7.x or 3.x is necessary in system.

" UltiSnips {{{
try
    let s:UltiSnips = g:UltiSnipsEnableSnipMate
    let s:UltiSnips = 1
catch
    let s:UltiSnips = 0
endtry

if s:UltiSnips
    noremap <leader>us :UltiSnipsEdit<CR>
    let g:UltiSnipsEditSplit = 'vertical'
    let g:UltiSnipsNoPythonWarning = 1
    let g:UltiSnipsSnippetsDir = $HOME."/.vim/.Snippets"
    let g:UltiSnipsSnippetDirectories = [".Snippets", "UltiSnips"]
    " Local snippets directory is `.Snippets`
    " Remote snippets directory is `UltiSnips`, provided by snippets-for-vim
endif
" }}}

" snippets-for-vim

" }}}

" Fullscreen {{{

" wimproved.vim {{{
if WINDOWS()
    packadd wimproved.vim
    noremap <silent> <F11> :WToggleFullscreen<CR>
    noremap! <silent> <F11> <Esc>:WToggleFullscreen<CR>a
endif
" }}}

" }}}

" Golang {{{
" TODO: 2 plugins to be added, since 2016-12-09
" Plugin 'fatih/vim-go'
" Plugin 'nsf/gocode'
" }}}

" HTML {{{
" TODO: 1 plugin, since 2016-12-09
" Plugin 'gorodinskiy/vim-coloresque'
" }}}

" csv {{{
" TODO: 1 plugin, since 2016-12-09
" Plugin 'chrisbra/csv.vim'
" }}}

" Vimperator {{{
" TODO: 1 plugin, since 2016-12-09
" Plugin 'superbrothers/vim-vimperator'
" }}}


" vim: set shiftwidth=4 softtabstop=-1 expandtab:
" vim: foldenable foldmethod=marker foldmarker={{{,}}} foldminlines=2:
" vim: set textwidth=80 colorcolumn=80:
