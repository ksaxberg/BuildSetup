" Check vim version with $(vim --version), otherwise you may be dissapointed
" Utilize system clipboard with "* register. (needs +clipboard in version)

colo elflord
let mapleader = ","
filetype plugin on
" Remove files from netrw listing
let g:netrw_list_hide = '.*\.pyc$,.*\.png'
" Fix how new files are opened (keep netrw topleft)
let g:netrw_altv = 1
let g:netrw_alto = 1
" Turn off the banner
let g:netrw_banner = 0
" Open new files in previous buffer
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3
" When opening file, leave 30% of split for netrw
let g:netrw_winsize = 30
" Display directories first
let g:netrw_sort_sequence='[\/]$'
" Case insensitive sorting
let g:netrw_sort_options='i'
" Allow gx to open html with default command
let g:netrw_browsex_viewer="xdg-open"


set rnu
set nu
set tabstop=4 expandtab
set autoindent

set foldenable
set foldmethod=syntax
set foldcolumn=3
"set cc=80

highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%100v', 10)
"set textwidth=80
"set wrap

"An intensely plugged session would have followed
""Using vim-plug
"call plug#begin('~/.vim/plugged')
"Plug 'townk/vim-autoclose'
"Plug 'rstacruz/sparkup'
"Plug 'scrooloose/syntastic'
"Plug 'bronson/vim-trailing-whitespace'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'calebsmith/vim-lambdify'
"Plug 'easymotion/vim-easymotion'
"call plug#end()
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


:inoremap jk <Esc>
:inoremap jh <C-x><C-i>
" To accept other suggestions, add C-y mapping
:inoremap jj <C-y>  
" Note that <Leader>ig toggles indent coloring
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
