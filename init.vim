call plug#begin()
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' , { 'on': 'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive'

Plug 'KeitaNakamura/neodark.vim'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdcommenter'

" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'https://github.com/tpope/vim-surround.git'
Plug 'vim-autoformat/vim-autoformat'

" Copilot
Plug 'https://github.com/github/copilot.vim.git'
call plug#end()

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300


" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes


" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let mapleader=","

" Turn off default mapping
let g:NERDCreateDefaultMappings = 0
let g:NERDTreeWinSize=50
nmap <C-j>   <Plug>NERDCommenterToggle
vmap <C-j>   <Plug>NERDCommenterToggle<CR>gv


" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set termguicolors                " recommended
colorscheme moonfly

au BufWrite *.cpp,*.hpp :Autoformat

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers

nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
tnoremap <Esc> <C-\><C-n>

set number
set expandtab
set shiftwidth=4

"let &runtimepath.=', "~/.config/nvim/lua"'
lua require("autodisablecopilot")
