" Indents
set laststatus=2
set t_Co=256
set backspace=indent,eol,start
set whichwrap+=<,>,[,]
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Allow local settings
set exrc

vnoremap y "+y

" Python3 support
let g:python3_host_prog = '/usr/local/anaconda3/bin/python'

" Max character column
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Key bindings for tab
map <C-v><up> :tabr<cr>
map <C-v><down> :tabl<cr>
map <C-v><left> :tabp<cr>
map <C-v><right> :tabn<cr>

" Text wrapping
set tw=0

" Mouse support
set mouse=a

call plug#begin('~/.vim/plugged')

    " Centering text
    Plug 'junegunn/goyo.vim'

    " Tree structure
    Plug 'scrooloose/nerdtree'
    let NERDTreeMinimalUI = 1
    let NERDTreeDirArrows = 1
    noremap <C-w>t :NERDTreeToggle<cr>

    " Airline Settings
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    let g:airline#extensions#tabline#enabled = 1

    " Automatic commenting
    Plug 'scrooloose/nerdcommenter'

    " File finding
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    nmap <leader>gd <Plug>(coc-definition)
    nmap <leader>gr <Plug>(coc-references)

    " Markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

    " Themes
    Plug 'kaicataldo/material.vim'
    
    " Folder icons
    Plug 'ryanoasis/vim-devicons'

    " Better start screen
    Plug 'mhinz/vim-startify'

    " Better buffer support
    Plug 'qpkorr/vim-bufkill'
    nmap <leader>q :BD<CR>
call plug#end()

" Settings for autocomplete
set completeopt-=preview

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" Theme selection
syntax enable
colorscheme material

" Setting for nerd commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Syntax error checking settings
set statusline+=%#warningmsg#
set statusline+=%*

" Setting for finding files
map ; :Files<CR>

" Secure settings
set secure
