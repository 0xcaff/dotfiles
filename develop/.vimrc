" must be vim not vi
set nocompatible

" Initilize Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'junegunn/goyo.vim' " Prose
Plugin 'fatih/vim-go' " GoLang
Plugin 'dart-lang/dart-vim-plugin' " Dart Lang
Plugin 'groenewege/vim-less' " LESS CSS
Plugin 'godlygeek/tabular' " Alignment
Plugin 'plasticboy/vim-markdown' "Markdown
Plugin 'junegunn/limelight.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'chrisbra/Recover.vim'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'tikhomirov/vim-glsl'


call vundle#end()

" Enable use of file type plugin
filetype plugin on

" Indentation
set shiftwidth=2
set tabstop=2
set expandtab

" Line Wrapping
set textwidth=80
set formatoptions+=t

" Disable Arrow keys in Escape mode
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

" Disable Arrow keys in Insert mode
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>

" Make .md a valid markdown extension
au BufRead,BufNewFile *.md setf markdown

function! GoyoBefore()
  silent !tmux set status off
  set noshowcmd
  set scrolloff=999
endfunction

function! GoyoAfter()
  silent !tmux set status on
  set showcmd
  set scrolloff=0
endfunction

let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]

let g:vim_markdown_frontmatter=1
let g:vim_markdown_folding_disabled=1

" Annoying Uppercase Letters :(
ca W w
ca Q q
ca X x

" We can handle big buffers
set viminfo='20,<1000,s1000

