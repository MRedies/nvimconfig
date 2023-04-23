call plug#begin()
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' , { 'on': 'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive'

Plug 'KeitaNakamura/neodark.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }

Plug 'preservim/nerdcommenter'

call plug#end()

let mapleader=","

" Turn off default mapping
let g:NERDCreateDefaultMappings = 0
nmap <C-j>   <Plug>NERDCommenterToggle
vmap <C-j>   <Plug>NERDCommenterToggle<CR>gv

set termguicolors                " recommended
colorscheme neodark

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers

nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
tnoremap <Esc> <C-\><C-n>

