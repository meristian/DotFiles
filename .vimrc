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
let $PATH .= ":~/.DotFiles/remotecopy/"
set lazyredraw
set incsearch
set nohlsearch
set relativenumber

set encoding=UTF-8

set colorcolumn=80
set signcolumn=yes
set updatetime=50

set shell=bash 



call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-autoformat/vim-autoformat'
Plug 'ryanoasis/vim-devicons'
Plug 'chrisbra/csv.vim'
" Symbols for git
Plug 'mhinz/vim-signify'
Plug 'justone/remotecopy-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bluz71/vim-moonfly-colors'
Plug 'Pocco81/AutoSave.nvim'
call plug#end()

" Show hidden files in NERDtree by default
let NERDTreeShowHidden=1


colorscheme moonfly                                                             

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
    nnoremap <silent> <C-p> :GFiles<CR>
    nnoremap <Leader>pf :Files<CR>                                                  
    nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>                           
    nnoremap <Leader>+ :vertical resize +5<CR>                                      
    nnoremap <Leader>- :vertical resize -5<CR>                                      
    "
    " COC
    function! s:GoToDefinition()
      if CocAction('jumpDefinition')
        return v:true
      endif

      let ret = execute("silent! normal \<C-]>")
      if ret =~ "Error" || ret =~ "错误"
        call searchdecl(expand('<cword>'))
      endif
    endfunction

    nmap <silent>gd :call <SID>GoToDefinition()<CR>
    nnoremap<silent><Leader>gr : YcmCompleter GoToReferences<CR>    

    " Git integration maps
    nmap <leader>gh :diffget //3 <CR>
    nmap <leader>gu :diffget //2 <CR>
    " get status
    nmap <leader>gs :G <CR> 
    "
    
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
    autocmd BufWritePost *.json %!python3 -m json.tool


    " use <tab> for trigger completion and navigate to the next complete item
    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <Tab>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<Tab>" :
          \ coc#refresh()


" Get List of TODO's and FIXME's

function! s:ShowTodoList()

    let my_project = system('git rev-parse --show-toplevel')
    " We have to do a cd to the current repository root
    execute 'cd' my_project
    silent grep 'TODO\\|FIXME\\|XXX' **/*.[hc]
    cwindow
    if &buftype == 'quickfix'
    resize 10
    let w:quickfix_title = 'To-do list for $my_project'
    endif
endfunction

let g:autoformat_verbosemode=1
let g:formatters_python = ['autopep8']

let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
" settings for sumatraPDF
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options
    \ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

" Vimspector

nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver
