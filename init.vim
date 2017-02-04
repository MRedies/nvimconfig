"allow for project specific vimrc's
set exrc
set secure

"tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"line numbers on the right
set number

"match brackets
set showmatch


"improved searching
set incsearch
set ignorecase
set smartcase

"indentations
set ai
set si
set wrap

"Fortran90 setup
"use free format Fortran
let fortran_free_source=1

"allow for tabs
let fortran_have_tabs=1

"better syntax highlighting (but slower)
let fortran_more_precise=1

let fortran_do_enddo=1

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"UltiSnips & youcompleteme
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"vim-plug
call plug#begin('~/.config/nvim/plugged')
"julia
Plug 'JuliaLang/julia-vim'

Plug 'junegunn/vim-easy-align'

"Themes
Plug 'vim-scripts/Solarized'
Plug 'kamwitsta/nordisk'
Plug 'KeitaNakamura/neodark.vim'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'kiith-sa/DSnips'
Plug 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab'

"Nerd commentor
Plug 'scrooloose/nerdcommenter'

"Command line
Plug 'lrvick/Conque-Shell'

"Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'
"Plug 'powerline/fonts'
"Plug 'powerline/powerline'
"Plug 'vim-airline/vim-airline'

call plug#end()


syntax enable
"set t_Co=256   " This is may or may not needed.

"set background=light
colorscheme neodark
let g:neodark#background='brown'


set nocp
filetype plugin on

"set leader key
let mapleader=","

"NERDTree appears on Ctrl-n
map <C-n> :NERDTreeToggle<CR>

"JSON auto formating
command J :%!python -m json.tool


" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
