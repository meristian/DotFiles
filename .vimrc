syntax on
let python_highlight_all=1
set guicursor=i:
set noerrorbells
set tabstop =4 softtabstop=4
set shiftwidth=4
set expandtab 
set smartindent
set nu
set nowrap
set scrolloff=15
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile 
set clipboard=unnamed

set incsearch

set nohlsearch
set relativenumber

set colorcolumn=80
set signcolumn=yes
set updatetime=50

highlight ColorColum ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug '~/.vim/plugged/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'preservim/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()


colorscheme gruvbox                                                             
set background=dark    
if executable('rg')
        let g:rg_derive_root='true'
    endif

    let loaded_matchparen = 1

    let g:netrw_browse_split = 2
    let g:vrfr_rg = 'true'
    let g:netrw_banner = 0
    let g:netrw_winsize = 25

    let mapleader = " "
    nnoremap <leader>h :wincmd h<CR>                                                
    nnoremap <leader>j :wincmd j<CR>                                                
    nnoremap <leader>k :wincmd k<CR>                                                
    nnoremap <leader>l :wincmd l<CR>                                                
    nnoremap <leader>u :UndotreeShow<CR>                                            
    nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>            
    nnoremap <Leader>ps :Rg<SPACE>                                                  
    nnoremap <C-p> :GFiles<CR>                                                      
    nnoremap <Leader>pf :Files<CR>                                                  
    nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>                           
    nnoremap <Leader>+ :vertical resize +5<CR>                                      
    nnoremap <Leader>- :vertical resize -5<CR>                                      
    " YMC                                                                           
    "                                                                          
    nnoremap<silent><Leader>gd : YcmCompleter GoTo<CR>                              
    nnoremap<silent><Leader>gf : YcmCompleter FixIt<CR>    
    " Move things up and down
    nnoremap <A-j> :m .+1<CR>==
    nnoremap <A-k> :m .-2<CR>==
    inoremap <A-j> <Esc>:m .+1<CR>==gi
    inoremap <A-k> <Esc>:m .-2<CR>==gi
    vnoremap <A-j> :m '>+1<CR>gv=gv
    vnoremap <A-k> :m '<-2<CR>gv=gv
    " Indent visual with tab and shift tab
    vmap <Tab> > gv
    vmap <S-Tab> < gv
