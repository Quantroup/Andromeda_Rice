" nvimrc "
" by quantrop "
set termguicolors
syntax on
set tabstop=4
set noshowmode
" stdpath('data') . '/plugged'
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()
lua require'colorizer'.setup()
colorscheme better
let g:lightline = {
      \ 'colorscheme': 'material',
      \ }
autocmd VimEnter * ColorizerToggle
