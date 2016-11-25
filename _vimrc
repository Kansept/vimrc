syntax on
color desert
set number
set cursorline
set tabstop=2
set shiftwidth=2
set gfn=Courier_New:h10:cRUSSIAN:qDRAFT
set ignorecase
set backspace=indent,eol,start
set smartindent

execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>
nnoremap d "_d

menu Encoding.koi8-r :e ++enc=koi8-r ++ff=unix<CR>
menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.cp866 :e ++enc=cp866 ++ff=dos<CR>
menu Encoding.utf-8 :e ++enc=utf8<CR>
menu Encoding.koi8-u :e ++enc=koi8-u ++ff=unix<CR>

map <F8> :emenu Encoding.<TAB>

let g:airline#extensions#tabline#enabled = 1
let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
let g:airline_section_b = airline#section#create(['filetype'])
let g:airline_section_c = airline#section#create(['%P'])
let g:airline_theme = 'dark'

hi ColorColumn ctermbg=235 guibg=#393939
let &colorcolumn=join(range(121,999),",")

" Syntastic
" git clone https://github.com/vim-syntastic/syntastic.git
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
