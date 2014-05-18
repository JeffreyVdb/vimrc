set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nu
set wmh=0
set laststatus=2
set encoding=utf-8

set guifont=Terminess\ Powerline
execute pathogen#infect()

if $TERM == 'linux'
    set t_Co=8
else
    set t_Co=256
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Highlighting
if has("gui_running") || &t_Co == 256
    set background=dark
    colorscheme xoria256
else
	colorscheme default
	set background=dark
endif

" For URxvt unicode
set mouse=a
set ttymouse=xterm2

" highlight Normal ctermfg=White cterm=None

syntax on
filetype plugin indent on
setlocal omnifunc=syntaxcomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab


let php_sql_query=1                                                
let php_htmlInStrings=1

" Mapping
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-A><C-A> ggvG$

" Format document
map <C-F><C-F> gg=G

" NMaps
nmap <C-N><C-N> :set invnumber<CR>
nmap <F10> <Esc>:tabnew<CR>
" nmap <F5>	<Esc>:!make<CR>
nmap ; :

" Ansi C
noremap <F2>T :!ctags -R *<CR>

" Imaps

set pdev=hpcolor
set printoptions=paper:A4,syntax:y,wrap:y,number:y

" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Abbreviations

