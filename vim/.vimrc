"   ameba's vimrc



" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype off                   " required!

" Change leader to a comma because the backslash is too far away
" *** That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ===========================================My Bundles here:
"
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'"
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
" git integration
Bundle 'tpope/vim-fugitive'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" Bundle 'Lokaltog/vim-easymotion'
" tab completion
Plugin 'ervandew/supertab'
" find files
Plugin 'ctrlp.vim'
Plugin 'The-NERD-tree'
" comment a line with gcc, and more... 
Plugin 'tComment'
" snippet manager
Plugin 'UltiSnips'
Plugin 'honza/vim-snippets'
" run code as you type
Plugin 'metakirby5/codi.vim'

" highlighting for slim html templates
Plugin 'slim-template/vim-slim.git'

" to change or select ruby blocks
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'

Plugin 'prettier/vim-prettier'
Plugin 'pangloss/vim-javascript'

"Plugin 'Valloric/YouCompleteMe'

" Automatic closing of quotes and brackets
Plugin 'cohama/lexima.vim'
"Plugin 'ranger.vim'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...
runtime macros/matchit.vim

" Deoplete - 'asynchronous keywork completion system'
"Plugin 'Shougo/deoplete.nvim'
"Plugin 'roxma/nvim-yarp'
"Plugin 'roxma/vim-hug-neovim-rpc'

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

call vundle#end()
filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles 
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.vimrc.before if it exists.
"if filereadable(expand("~/.vimrc.before"))
"  source ~/.vimrc.before
"endif

" ================ General Config ====================

set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on


" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup " 
set nowb
let g:auto_save = 1

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
" **** fix this -character problem
"set list listchars=tab:\ \ ,trail:·

" =============== Wrapping ===============
set linebreak    "Wrap lines at convenient points


" ,w toggles 'wrapping mode' which changes binding of cursor keys 
noremap <silent> <Leader>w :call ToggleWrap(0)<CR>
function! ToggleWrap(firstrun)
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
  else
    if a:firstrun != 1 
      echo "Wrap ON"  " only display message when called by keybinding
    endif
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap  <buffer> <silent> <Up>   gk
    noremap  <buffer> <silent> <Down> gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
  endif
endfunction


set nowrap   " Dont Wrap lines - so that calling ToggleWrap switches wrapping on
call ToggleWrap(1)  " Run above function (silently)

" ================ Folds ============================

"set foldmethod=syntax   "syntax or indent
"set foldnestmax=3       "deepest fold is 3 levels
"set foldminlines=10
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
"set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" ================ Custom Settings ========================
"so ~/.yadr/vim/settings.vim
set clipboard^=unnamed,unnamedplus
set visualbell

" smartcase for searching
set ignorecase
set smartcase

" Move visual block up and down with J and K -this is brilliant!!
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Toggle nerdtree with Ctrl-D
nmap <silent> <C-D> :NERDTreeToggle<CR>

" remove html tags
nmap <leader>tt vat<Esc>`<df>`>F<df>

" highlight line cursor is on
set cursorline

set number                      "Line numbers are good
" relative line numbers -very useful for vim motions
"set rnu

" toggle line numbers with Ctrl-n (sometimes i dont wanna see linenumbers
nmap <silent> <C-N> :set rnu! number! number?<CR>

" todo: map _ and + to Ctrl W - and Ctrl W + -resize window

" from steve losh: 
" ,ve -open .vimrc in split window
nnoremap <leader>ve :vsplit $MYVIMRC<cr>
" ,vr -source .vimrc
nnoremap <leader>vr :source $MYVIMRC<cr>

inoremap jk <esc> " not quite got the hang of this yet

" from drew niel:
set hlsearch  " highlight search terms
" remap <C-l> (redraw screen) to also unhighlight search terms 
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> 

" correct typos (todo: is there is simple way to switch these off?)
" put this in ftplugin?
iabbrev fuer für
iabbrev ueber über
iabbrev fro for
iabbrev amd and

set mouse=a " enable mouse

set incsearch " jump to search pattern as you type it

vnoremap <leader>sr :'<,'> write !xargs surfraw google <CR>

" enter in normal mode adds blank line (second mapping doesnt work.  why?)  
"nnoremap <Enter> o<ESC>
"nmap <Enter> o<ESC>
nnoremap <S-Enter> O<ESC>

" from my old vimrc, to paste from x clipboard?
"map <F2> "+gP  

 

" lazy about umlaut:
function! German()
  " add support for uppercase?  is this needed?
  " there are many words where this causes problems...
  %s/ae/ä/ge
  %s/ue/ü/ge
  %s/oe/ö/ge
  %s/sss/ß/ge
endfunction

nnoremap <leader>g :call German()<CR>
command! German call German()

command Wq wq
command W w

" format entire file to 75 columns (useful for emails)
command! Fmtfile %!fmt

" always show status line
set laststatus=2

" make pager look different to make me realise i cannot edit
func LessInitFunc()
  set laststatus=1
  set nocursorline
  set nonumber
  set nornu
endfunc

"set spelllang=en,de

" Ctrl + Arrows changes window.  -this requires either modifying urxvt or
" remapping using escape sequences.
nmap <C-Up> <C-w><Up> 
nmap <C-Down> <C-w><Down> 
nmap <C-Left> <C-w><Left> 
nmap <C-Right> <C-w><Right> 

map <Leader>v 0ma}b:'a,.j<CR>070 ?  *<Esc>dwi<CR><Esc>

" not sure about these, maybe get rid:
nmap <Leader>y "Ayy
nmap <Leader>p "ap:let @a = ''<cr>


nnoremap <leader>oe :vsplit $HOME/Documents/oftenlinks.md<cr>

let g:ctrlp_custom_ignore = {
  \'dir': '\v[\/](\.git|node_modules)$'
  \ }

" prettier
"autocmd FileType javascript set formatprg=prettier\ --stdin
"autocmd BufWritePre *.js :normal gggqG
"autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
