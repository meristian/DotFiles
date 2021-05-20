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
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile 
set clipboard=unnamed
" Prevent the preview scratch suggestion from appearing
set completeopt-=preview        
:filetype plugin on

set lazyredraw
set incsearch

set nohlsearch
set relativenumber

set encoding=UTF-8

set colorcolumn=80
set signcolumn=yes
set updatetime=50


highlight ColorColum ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'lervag/vimtex'
"Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'preservim/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'Chiel92/vim-autoformat'
Plug 'cohama/lexima.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'chrisbra/csv.vim'
call plug#end()

nnoremap ; :

colorscheme gruvbox                                                             
set background=dark    
if executable('rg')
        let g:rg_derive_root='true'
    endif

    let loaded_matchparen = 1
    let g:formatter_yapf_style = 'pep8'


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
    nnoremap <silent> <C-p> :execute 'silent! update' <Bar>:GFiles<CR>
    nnoremap <Leader>pf :Files<CR>                                                  
    nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>                           
    nnoremap <Leader>+ :vertical resize +5<CR>                                      
    nnoremap <Leader>- :vertical resize -5<CR>                                      
    " YMC                                                                           
    "                                                                          
    nnoremap<silent><Leader>gd : YcmCompleter GoTo<CR>                              
    nnoremap<silent><Leader>gf : YcmCompleter FixIt<CR>    
    nnoremap<silent><Leader>gr : YcmCompleter GoToReferences<CR>    
    " Remap Ctrl-O to save when jumping back
    nnoremap <silent> <C-o> :execute 'silent! update'<CR> <C-o> 

    
    " Move things up and down
    " This mapping depends on wether you are in mac or in other os 
    nnoremap ¶ :m .+1<CR>==
    nnoremap § :m .-2<CR>==
    inoremap ¶ <Esc>:m .+1<CR>==gi
    inoremap § <Esc>:m .-2<CR>==gi
    vnoremap ¶ :m '>+1<CR>gv=gv
    vnoremap § :m '<-2<CR>gv=gv1
    " Indent visual with tab and shift tab
    vmap <Tab> > gv
    vmap <S-Tab> < gv
    autocmd BufWritePost *.py Autoformat



" settings for sumatraPDF
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options
    \ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
