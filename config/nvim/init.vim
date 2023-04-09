set nocompatible					" disable compatibility to old-time vi
set showmatch						" show matching
set hlsearch						" highlight search
set incsearch						" incremental search
set tabstop=4						" number of columns occupied by a tab
set softtabstop=4					" see multiple spaces as tabstops so <bs> does the right thing
set expandtab						" converts tabs to white space
set shiftwidth=4					" width for autoinjects
set autoindent						" indent a new line the same amount as the line just typed
set number				    		" add line numbers
filetype plugin indent on			" allow auto-indenting depending on file type
syntax on						    " syntax highlighting
set clipboard=unnamedplus   		" using system clipboard filetype plugin on
set termguicolors

" plugs n that 
call plug#begin("~/.vim/plugged")
    Plug 'beardedfoo/vim-colemak'
	Plug 'preservim/nerdtree'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'preservim/nerdcommenter'
	Plug 'mhinz/vim-startify'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-python/python-syntax'
    Plug 'joshdick/onedark.vim'
    Plug 'ErichDonGubler/vim-sublime-monokai'
call plug#end()

" NERDTree shitte
nmap <F2> :NERDTreeToggle <CR>
nmap <A-Space> :NERDTreeFocus <CR>
let NERDTreeShowHidden=1
let NERDTreeMapOpenExpl='´'
autocmd User Startified for key in ['e','n'] |
      \ execute 'nunmap <buffer>' key | endfor

" shitte.
let g:startify_enable_special = 0
let g:coc_disable_startup_warning = 1
let g:airline#extensions#tabline#enabled = 1
nmap <A-h> :bp! <CR>
nmap <A-i> :bn! <CR>
nmap <A-o> :bd <CR>
nmap <A-z> :undo <CR>
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" coc.nvim kboard
source $HOME/.vim/custom/coc.nvim/keymap.vim 

" theming and stuff !!!
syntax on
colorscheme sublimemonokai
hi Normal guibg=NONE ctermbg=NONE
let g:airline_theme='base16_monokai'
let g:python_highlight_all = 1
