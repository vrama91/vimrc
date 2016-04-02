set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The bundles you install will be installed here
filetype plugin indent on
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
Plugin 'tpope/vim-fugitive'
Plugin 'aperezdc/vim-template'
Plugin 'file:///home/vrama91/misc'
Plugin 'file:///home/vrama91/lua-support'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmhedberg/SimpylFold'

call vundle#end()
" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Pymode setup
let g:pymode_rope = 0
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = 'pyflakes,pep8'
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_syntax = 0
let g:pymode_syntax_all = 0
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_folding = 0

" Docsrtring preview
"
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

" Templates setup
let g:templates_directory='~/.vim/templates'
let g:email='vrama91@vt.edu'

" Vim lua config
let g:lua_check_syntax = 1

" Rest of the config follows here
map <F2> :NERDTreeToggle<CR>
syntax on
colorscheme desert

set autoindent
set backspace=2
set tabstop=2
set number
set shiftwidth=2
set t_Co=256

" Highlight paired brackets
highlight MatchParen ctermbg=blue guibg=lightyellow

" Autocomplete parantheses, brackets and braces
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

" Remap za to space for folding
nnoremap <space> za
