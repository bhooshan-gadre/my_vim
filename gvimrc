" general settings

set nocompatible

set number " show line numbers
set ruler
set relativenumber
set undofile
set wildmenu
" This is for pathogen
execute pathogen#infect()
execute pathogen#helptags()

filetype plugin on
filetype plugin indent on
syntax on

" " Useful settings
" " Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set shiftround    " round indent to multiple of 'shiftwidth'
vnoremap > >gv
vnoremap < <gv
 " " easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" " Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

set showmatch     " set show matching parenthesis

 " " Disable stupid backup and swap files - they trigger too many events
" " for file system watchers
set nobackup
set nowritebackup
set noswapfile
set hidden
" set autoindent    " align the new line indent with the previous line
set copyindent    " copy the previous indentation on autoindenting
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile
set splitright

" stop autoindent etc and paste as it is in insert mode
set pastetoggle=<F2>
set clipboard=unnamed

" change leader key to ,
let mapleader=","
set timeoutlen=1000

" Mouse and backspace
set mouse=a
set backspace=indent,eol,start
" allow backspacing over everything in insert mode

nnoremap ; :

nnoremap <silent> <leader><space> :nohlsearch<CR>
vnoremap <silent> <leader><space> :nohlsearch<CR>
inoremap <silent> <leader><space> :nohlsearch<CR>

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>
" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows
nmap <Leader>t <Esc>:tabnew<CR>  "
nnoremap <leader>w :vnew<CR>
nnoremap <leader>v :vsp
nnoremap <leader>s :sh<CR>
nnoremap <leader>n :NERDTree<CR>
cnoremap <C-space> <Up>
cnoremap <C> <Down>

" no need to reach to farrr for esc
imap jj <Esc>
" " bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
" " Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

set t_Co=256
"color xoria256
" set background=dark
" color solarized
" let g:solarized_termcolor=25
color wombat256
set colorcolumn=80

"" Enable syntax highlighting
" " Showing line numbers and length
set number " show line numbers
set tw=80 " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing
" highlight ColorColumn ctermbg=7

" For powerline
set laststatus=2
set encoding=utf-8
" set fillchars+=stl:\ ,stlnc:\
" let g:Powerline_symbols = 'fancy'
" Disabled as not working neatly as on github page
" Till we use airline alternative
" let g:airlin#extensions#tabline#enabled = 1
"
"
" For syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers=['pep8', 'pylint', 'python']
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = "X"
let g:syntastic_style_error_symbol = ">"
let g:syntastic_warning_symbol = "!"
let g:syntastic_style_warning_symbol = ">"
let g:syntastic_echo_current_error=1
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_jump=1

" for ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" for jedi-vim
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 1
let g:jedi#usages_command = "<leader>N"
let g:jedi#show_call_signatures = 1
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

set completeopt=longest,menuone,preview
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

"  Plugin 'ervandew/supertab'

" let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabDefaultCompletionType    = "context"
let g:SuperTabCrMapping                = 0

" "  Plugin 'SirVer/ultisnips'
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"
" For YCM & Ultispin compatibility
"  YouCompleteMe and UltiSnips compatibility, with the helper of supertab
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
" let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_path_to_python_interpreter = '/home/bug/anaconda/bin/python'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

 " additional things for vim-latex
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf='xpdf'
au FocusLost * :wa

" For dictionaries: use :Dict [word] to use it
let g:dict_hosts = [
\["dict.org", ["gcide", "wn", "moby-thes", "vera", "jargon", "foldoc", "bouvier", "devil"]]
\]
" \["dict.org", ["all"]]
" \]
"
" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

" " ## for clang_complete: Do specify correct paths!!
" " can use locate command to locate libclang.so, index.db etc.
" au FileType c,cpp let g:clang_auto_select=1
" au FileType c,cpp let g:clang_complete_auto=0
" au FileType c,cpp let g:clang_complete_copen=1
" au FileType c,cpp let g:clang_hl_errors=1
" au FileType c,cpp let g:clang_periodic_quickfix=0
" au FileType c,cpp let g:clang_snippets=1
" au FileType c,cpp let g:clang_snippets_engine="clang_complete"
" au FileType c,cpp let g:clang_conceal_snippets=1
" au FileType c,cpp let g:clang_exec="clang"
" au FileType c,cpp let g:clang_user_options=""
" au FileType c,cpp let g:clang_auto_user_options="path, .clang_complete"
" au FileType c,cpp let g:clang_use_library=1
" " au FileType c, cpp  let g:clang_library_path="/directory/of/libclang.so/"
" au FileType c,cpp let g:clang_library_path="/usr/lib/llvm-3.4/lib/"
" au FileType c,cpp let g:clang_sort_algo="priority"
" au FileType c,cpp let g:clang_complete_macros=1
" au FileType c,cpp let g:clang_complete_patterns=0
" au FileType c,cpp nnoremap <Leader>q :call g:ClangUpdateQuickFix()<CR>
" au FileType c,cpp
" " au FileType c, cpp  let g:clic_filename="/path/to/index.db"
" au FileType c,cpp let g:clic_filename="/var/cache/man/index.db"
"
" nnoremap <Leader>r :call ClangGetReferences()<CR>
" nnoremap <Leader>d :call ClangGetDeclarations()<CR>
" nnoremap <Leader>c :call ClangGetSubclasses()<CR>
" "
" " ## for clang_complete
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
