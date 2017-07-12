"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/samidarko/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/samidarko/.config/nvim/dein')
  call dein#begin('/home/samidarko/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/samidarko/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#add('Shougo/vimshell')
  call dein#add('Shougo/deoplete.nvim')

  call dein#add('vim-ruby/vim-ruby')
  call dein#add('python-mode/python-mode')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('kristijanhusak/vim-hybrid-material')
  call dein#add('jeffkreeftmeijer/vim-numbertoggle')

  call dein#add('tpope/vim-fugitive')

  call dein#add('scrooloose/nerdtree')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" ========================= NERDTree ===========================
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1
map <C-n> :NERDTreeToggle<CR>
" set fillchars=vert:│,fold:─
" let g:vimfiler_tree_leaf_icon = ""
" let g:vimfiler_tree_opened_icon = "▼"
" let g:vimfiler_tree_closed_icon = "▷"

" ======================== Python mode =========================

" Override go-to.definition key shortcut to Ctrl-]
" let g:pymode_rope_goto_definition_bind = "<C-]>"

" Override run current python file key shortcut to Ctrl-Shift-e
" let g:pymode_run_bind = "<C-S-e>"

" Override view python doc key shortcut to Ctrl-Shift-d
" let g:pymode_doc_bind = "<C-S-d>"
let g:pymode_python = 'python3'

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "hybrid"

" Hybrid material
let g:enable_bold_font = 1
set background=dark
colorscheme hybrid_material

" Toggle Trigger
let g:NumberToggleTrigger="<F2>"

" System 
set expandtab
set shiftwidth=4
set softtabstop=4
