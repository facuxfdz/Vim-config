"Numbers enable"
set number
set relativenumber

set expandtab
set autoindent
set smarttab
set softtabstop=4
set shiftwidth=2
set tabstop=4

"Enable mouse click for nvim
set mouse=a

"Fix cursor replacement after closing nvim
set guicursor=

"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"See invisible characters
set list listchars=tab:>\ ,trail:+,eol:$

"wrap to next line when end of line is reached
set whichwrap+=<,>,[,]

"Set icons in nerd tree plugin"
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"PLUGINS"
call plug#begin()

Plug 'vim-airline/vim-airline' " Status bar
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-surround' " Surrounding text
Plug 'tpope/vim-commentary' " For commenting gcc & gc
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro scheme
Plug 'tc50cal/vim-terminal' " Vim terminal
Plug 'ryanoasis/vim-devicons' " Developer icons
Plug 'mg979/vim-visual-multi' " For multiple cursors
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'neoclide/coc.nvim', {'branch': 'release'} " For autocompletion

call plug#end()

" Theme config
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }
set background=dark
colorscheme PaperColor

" For opening a tagbar
nmap <F2> :TagbarToggle<CR>

"Key binds"
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <Tab> :NERDTreeToggle<CR>
