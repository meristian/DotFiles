syntax on
set noerrorbells
set tabstop =4 softtabstop=4
set shiftwidth=4
set expandtab 
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
highlight ColorColum ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug '~/.vim/plugged/YouCompleteMe'
Plug 'mbbill/undotree'
call plug#end()

colorscheme gruvbox                                                             
set background=dark    
if executable('rg')
        let g:rg_derive_root='true'
    endif

    let loaded_matchparen = 1
    let mapleader = " "

    let g:netrw_browse_split = 2
    let g:vrfr_rg = 'true'
    let g:netrw_banner = 0
    let g:netrw_winsize = 25

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
        nnoremap<silent><Leader>gd : YmcCompleter GoTo<CR>                              
        nnoremap<silent><Leader>gf : YmcCompleter FixIt<CR>    
