scripte utf-8

" Language configuration

set nocompatible
call pathogen#infect()
syntax enable
set nu
set ai
set bs=indent,eol,start
set cindent
set smartindent
set ruler
set ts=4
set sw=4
set sts=4
set et
set history=999
set foldmethod=marker

set hlsearch
set sc
set magic
set sol
"set sel=exclusive
set hls
set nows
set scs
set ls=2
set wmnu

set fenc=utf-8
set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,latin1,ucs2-le

let NERDShutUp=1
set t_Co=256

"colorscheme solarized
if has('gui_running')
  set background=light
else
  set background=dark
endif

filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'saltstack/salt-vim'
Plugin 'klen/python-mode'
Plugin 'Shougo/unite.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'fatih/vim-go'
call vundle#end()            " required
filetype plugin indent on

filet on

runtime! macros/matchit.vim

augroup pythons
  autocmd!
  autocmd FileType python set ai sw=2 sts=2 et
augroup END

augroup rubies
  autocmd!
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256


"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

" Fireplace (Clojure support)
Bundle 'tpope/vim-fireplace'
  
" Rainbow parentheses
Bundle 'kien/rainbow_parentheses.vim'
"  Parentheses colours using Solarized
let g:rbpt_colorpairs = [
  \ [ '13', '#6c71c4'],
  \ [ '5',  '#d33682'],
  \ [ '1',  '#dc322f'],
  \ [ '9',  '#cb4b16'],
  \ [ '3',  '#b58900'],
  \ [ '2',  '#859900'],
  \ [ '6',  '#2aa198'],
  \ [ '4',  '#268bd2'],
  \ ]

" Enable rainbow parentheses for all buffers
augroup rainbow_parentheses
        au!
        au VimEnter * RainbowParenthesesActivate
        au BufEnter * RainbowParenthesesLoadRound
        au BufEnter * RainbowParenthesesLoadSquare
        au BufEnter * RainbowParenthesesLoadBraces
augroup END

" SlimV
Bundle 'kovisoft/slimv'
  
" vim-clojure-static
Bundle 'guns/vim-clojure-static'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

nnoremap <silent> ,g :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
if executable('pt')
    let g:unite_source_grep_command = 'pt'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor'
    let g:unite_source_grep_recursive_opt = ''
    let g:unite_source_grep_encoding = 'utf-8'
endif
