" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'nelstrom/vim-visual-star-search'
Plug 'wellle/targets.vim'
Plug 'majutsushi/tagbar'

Plug 'tpope/vim-fugitive'
Plug 'rstacruz/sparkup', {'rtp': 'vim'}
Plug 'gmarik/vundle'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'ervandew/supertab'

" Initialize plugin system
call plug#end()


set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

"move c <-> h
Plugin 'a.vim'

"browse mark
Plugin 'Marks-Browser'

"use manual way
"Plugin 'easyGrep'

"auto completion
"Plugin 'SearchComplete'

"show trailing white spaces
Plugin 'trailing-whitespace'

"change file, buffer
Plugin 'L9'
Plugin 'kien/ctrlp.vim'

"NERDTree
Plugin 'preservim/nerdtree'

Plugin 'flazz/vim-colorschemes'
Plugin 'rafi/awesome-vim-colorschemes'

"find using #, *
Plugin 'nelstrom/vim-visual-star-search'

"enable di'(delete in ') da'(delete around')
Plugin 'wellle/targets.vim'

"tag navigation in buffer
Plugin 'majutsushi/tagbar'

"git plugin, use :Git
Plugin 'tpope/vim-fugitive'

"help writing HTML
Plugin 'rstacruz/sparkup', {'rtp': 'vim'}

Plugin 'gmarik/vundle'

"move faster
Plugin 'easymotion/vim-easymotion'

Plugin 'bling/vim-airline'

"auto completion
Plugin 'ervandew/supertab'

Plugin 'zivyangll/git-blame.vim'

Plugin 'yuratomo/w3m.vim'

Plugin 'gauteh/vim-cppman'

call vundle#end()            " required
filetype plugin indent on    " required



"auto detect & set fileencoding for each file.
set fileencodings=utf-8,cp949

"if has('win32')
"temp file path
" set directory=d:\temp
"elseif has('mac')
"elseif has('unix')
" set directory=~/temp
"endif

" For regular expressions turn magic on
set magic

"following is options related with tab vs space
" Force tabs to be displayed/expanded to 4 spaces (instead of default 8).
set tabstop=4

" Make Vim treat key as 4 spaces, but respect hard Tabs.
set softtabstop=4

" Turn Tab keypresses into spaces. Sounds like this is happening to you.
" You can still insert real Tabs as [Ctrl]-V [Tab].
set noexpandtab
"set noexpandtab " Leave Tab keys as real tabs (ASCII 9 character).

":1,$retab! " Convert all tabs to space or ASCII-9 (per "expandtab"),
" on lines 1_to_end-of-file.
set shiftwidth=4 " When auto-indenting, indent by this much.

"display white spaces, not to enable use
set nolist
"set listchars=tab:>-,eol:$

"display current command
set showcmd
"ignore case when searching
set ignorecase
"when searching try to be smart about cases
set smartcase
"Don't redraw while executing macros (good performance config)
set lazyredraw
"use vim defaults
set nocompatible
"allways show status line
set ls=2
"highlight searches
set hlsearch
"do not keep a backup file
set nobackup
"show line numbers
set number
"show title in console title bar
set title
"make backspace work like most other apps
set backspace=2
"always set autoindenting on
set autoindent
"smart indent
set smartindent
"cindent
set cindent
"for {}, show matched {}
set showmatch
" auto saves changes when quitting and swiching buffer
set autowrite
"dont wrap lines
set nowrap
"wrap searching
set nowrapscan
"syntax highlighing
syntax on
"ignore whitespaces when vim diff
set diffopt+=iwhite
"undo buffer size
set history=100
"use : as a file, line no separator
set isfname-=:

"autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre :silent %s/\(\s\|\t\)\+$//ge
"
let mapleader=","
let g:ctrlp_map = ''
let did_install_default_menus = 1
let did_install_syntax_menu = 1
let skip_syntax_sel_menu = 1

"let g:SuperTabMappingForward = ''
"let g:SuperTabMappingBackward = ''

let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_section_c = '%t'
let did_install_default_menus = 1
let did_install_syntax_menu = 1
let skip_syntax_sel_menu = 1

"let g:SuperTabMappingForward = ''
"let g:SuperTabMappingBackward = ''

let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_section_c = '%t'

"set noimd
":set imi=1
"set ims=-1
"IM enable for specific modes
"following is for disabling IM when ESC is pressed
"set iminsert=0
"set imsearch=-1
"inoremap :set imdisable
"nnoremap i :set noimd<enter>i
"nnoremap I :set noimd<enter>I
"nnoremap a :set noimd<enter>a
"nnoremap A :set noimd<enter>A
"nnoremap o :set noimd<enter>o
"nnoremap O :set noimd<enter>O

"exploring buffers
map ,1 :b!1<enter>
map ,2 :b!2<enter>
map ,3 :b!3<enter>
map ,4 :b!4<enter>
map ,5 :b!5<enter>
map ,6 :b!6<enter>
map ,7 :b!7<enter>
map ,8 :b!8<enter>
map ,9 :b!9<enter>
map ,0 :b!0<enter>

"tagbar
map <f8> :TagbarToggle<enter>
map <f7> :NERDTree<enter>

"CtrlP
map ,. :silent!w<enter>:CtrlPBuffer<enter>
map ,f :silent!w<enter>:CtrlP<enter>

map ,a :A<enter><CR.

"Mark Down Browser
map ,m :MarksBrowse<enter>

"NERDTree
"map :NERDTree<enter>

"find all references
"mz : mark z, viw : slelect a w, : copy
"followings are not working some terminals
"map ff mzviw:e found.txt:%!grep -rHni "" */<enter>
"map fg 0f:lmzviw0gf:<enter>
"map ff mQlb"+yw:e found.txt:%!grep -rHni "+" */<enter>

"following removes
"map ff b"+ye:e found.txt:%!grep -rHni "+" */+<enter>
" "+y => copy word, "+ => 복사, 쌍따옴표가 중요함.
"map fg 0f:llb"+yw0gf:"+<enter>
"map fg 0f:l"+yw0gf:
noremap gf lgf

"map 500k<enter>
"map 500j<enter>

if has('win32')
map ,rl :source c:\Users\admin\_vimrc<enter>
else
map ,rl :source ~/.vimrc<enter>
endif
"map ( mzviw/[ ]*=[^=] ")<enter>
"map * mzviw/\<\><enter>
nnoremap :!python %

"following should be end of file
if has('win32')
lang mes en_US
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
source $VIMRUNTIME/mswin.vim
endif

if has("gui_running")
" set guifont=consolas:h12: " use this font
" set guifont=Dejavu\ Sans\ Mono:h10
set guifont=Hack\ Nerd\ Font:h16

"height = 50 lines
set lines=40
"width = 100 columns
set columns=150
set bg=dark " adapt colors for background
set selectmode=mouse,key,cmd
syntax enable

"color scheme
color solarized
"color deserta

"remove toolbar
set guioptions-=T

"position
winpos 0 0

"remove menu
"set guioptions-=m

"remove scrolbar
set guioptions-=l
set guioptions-=L
set guioptions-=R
set guioptions-=b
"only right side scrolbar
"set guioptions-=r
"highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:blinkon0
set guicursor+=i:ver20-iCursor
set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10

"
else

"use this color scheme
"colorscheme elflord
"adapt colors for background
"color hybrid
color jellybeans
"color elflord
"color molokai
"color seoul256
"color solarized8
syntax on

endif

"-w: match only with whole-word
set grepprg=ack\ --type\ cpp\ --nogroup\ --column\ -I\ -w\ $*
set grepformat=%f:%l:%c:%m
"can open result using :copen
noremap <F2> :grep! <cword><CR><CR>
"noremap <F2> :grep! <cword><CR><CR>:copen<CR><CR>
"nmap <F3> :silent!/<c-r>=expand("<cword>")<cr><cr>:grep! <cword><CR><CR>:copen<CR>

noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-k> <C-w>k
noremap <C-j> <C-w>j
noremap <C-i> <C-w>p

nnoremap <leader>1 1g,

nnoremap <f9> <C-w><
nnoremap <f10> <C-w>>
nnoremap <f11> <C-w>+
nnoremap <f12> <C-w>-

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
