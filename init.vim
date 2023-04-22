call plug#begin()
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' , { 'on': 'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive'
call plug#end()
