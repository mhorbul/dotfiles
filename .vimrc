set background=dark
let g:terraform_fmt_on_save=1
let g:terraform_align=1

call plug#begin()
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'sainnhe/everforest'
call plug#end()

colorscheme everforest
