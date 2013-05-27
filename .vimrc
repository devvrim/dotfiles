set pastetoggle=<F2>
set undofile
set undodir=/tmp
nnoremap <leader>g :GundoToggle<CR>
autocmd InsertEnter * set cursorline cursorcolumn
autocmd InsertLeave * set nocursorline
highlight cursorline cterm=none ctermfg=7 ctermbg=4
highlight cursorcolumn cterm=none ctermfg=7 ctermbg=4
set encoding=utf-8
set clipboard=unnamed
set bs=2
let mapleader = ","
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <Leader>tp <esc>:tabprevious<CR>
map <Leader>tn <esc>:tabnext<CR>
map <Leader>tc <esc>:tabclose<CR>
map <Leader>t <esc>:tabnew<CR>
map <Leader>B <esc>:! % <CR>
map <Leader>P <esc>:w<enter> <esc>:!python % CR>
map <Leader>bl <esc>:set bg=light<CR>
map <Leader>bd <esc>:set bg=dark<CR>
map <Leader>E  <esc>:E<CR>
vnoremap <Leader>sss :sort<CR>
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
set t_Co=256
color wombat256mod
filetype off
filetype plugin indent on
filetype plugin on
syntax on
set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233
vmap Q gq
nmap Q gqap
nmap <F6> :TagbarToggle<CR>
set history=700
set undolevels=700
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup
set nowritebackup
set noswapfile
execute pathogen#infect()
set laststatus=2
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction
inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>
set nofoldenable
let g:ackprg="<custom-ack-path-goes-here> -H --nocolor --nogroup --column"
map <C-n> :NERDTreeToggle<CR>
let g:pydiction_location = "~/.vim/complete-dict"
 if has("autocmd") 
    autocmd FileType python set complete+=k/path/to/pydiction iskeyword+=.,( 
endif " has("autocmd") )
let g:Powerline_symbols = 'fancy'
map <F4> I#<Esc><Esc>
map <F3> :s/#//g<Esc><Esc>
map <F12> :w<enter> :!python % <enter>
map <F10> <c-w>>
map <F9> <C-W><
