set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set cursorline " Highlights the current line in the editor
set hidden " Hide unused buffers
set shiftwidth=4
set tabstop=4
set autoindent " Indent a new line
set inccommand=split " Show replacements in a split screen
set expandtab
set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set cc=80
set ttyfast
set ruler
set nowrap
set nocompatible

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/everforest'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'neovim/nvim-lspconfig'
call plug#end()

lua require("telescope").setup()

" For dark version.
set background=dark

colorscheme everforest

tnoremap <silent> <Esc> <C-\><C-n>
nnoremap <silent> fc :e ~/.config/nvim/<CR>
nnoremap <silent> fd :cd %:p:h<CR>:pwd<CR>

" Find files using Telescope command-line sugar.
nnoremap <silent>ff <cmd>Telescope find_files<cr>
nnoremap <silent>fg <cmd>Telescope live_grep<cr>
nnoremap <silent>fb <cmd>Telescope buffers<cr>
nnoremap <silent>fh <cmd>Telescope help_tags<cr>

nnoremap go  :tabnew<CR>
nnoremap gh  :tabfirst<CR>
nnoremap gj  :tabprev<CR>
nnoremap gk  :tabnext<CR>
nnoremap gl  :tablast<CR>
nnoremap gm  :tabm<Space>
nnoremap gd  :tabclose<CR>
