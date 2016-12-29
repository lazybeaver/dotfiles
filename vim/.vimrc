"-------------------------------------------------------------------------------
" File   : .vimrc
" Author : ananth.shrinivas@gmail.com
"-------------------------------------------------------------------------------

" vim-plug {
    call plug#begin()
      Plug 'mbbill/undotree'
      Plug 'scrooloose/nerdtree'
      Plug 'majutsushi/tagbar'
      Plug 'godlygeek/tabular'
      Plug 'fatih/vim-go'
      Plug 'rust-lang/rust.vim'
      Plug 'itchyny/lightline.vim'
      Plug 'edkolev/tmuxline.vim'
      Plug 'benmills/vimux'
      Plug 'w0ng/vim-hybrid'
      Plug 'cocopon/lightline-hybrid.vim'
    call plug#end()
" }

" defaults {
"   basic {
      set nocompatible
      set encoding=utf-8
"   }
"   workarounds {
      set viminfo+=n~/.vim/.viminfo
      set backspace=indent,eol,start
"   }
"   tabs {
      set expandtab
      set nosmarttab
      set shiftwidth=2
      set softtabstop=2
      set tabstop=2
"   }
"   indent {
      set autoindent
      set nosmartindent
"   }
"   textui {
      syntax on
      set number
      set wrap
      set nofoldenable
      set nolist
      set nohlsearch
      let g:loaded_matchparen=1
"   }
"   colors {
      set t_Co=256
      set background=dark
"   }
" }

" plugins {
"   vim-hybrid {
      let g:hybrid_custom_term_colors=1
      colorscheme hybrid
"   }
"   lightline {
      set laststatus=2
      let g:lightline={'colorscheme': 'hybrid'}
"   }
"   tmuxline {
      let g:tmuxline_powerline_separators=0
      let g:tmuxline_theme='lightline_visual'
      let g:tmuxline_separators={'left' : '', 'left_alt': '❯', 'right' : '', 'right_alt' : '|', 'space' : ' '}
"   }
"   persistentundo {
      set undodir=~/.vim/undo
      set undofile
"   }
"   vim-go {
      let g:go_fmt_command='goimports'
"   }
"   rust.vim {
      let g:rustfmt_autosave=1
"   }
" }

" autocmd {
"   cursorline  {
      set cursorline
      augroup CursorLineConditions
        au!
        au VimEnter,WinEnter,BufWinEnter,InsertLeave * setlocal cursorline
        au VimLeave,WinLeave,BufWinLeave,InsertEnter * setlocal nocursorline
      augroup END
"   }
"   autoread {
      set autoread
      augroup AutoReadConditions
        au!
        au VimEnter,WinEnter,BufWinEnter,InsertEnter,FocusGained * checktime
        au VimLeave,WinLeave,BufWinLeave,InsertLeave,FocusLost * checktime
      augroup END
"   }
" }

" keyboard {
    nnoremap <F1> :UndotreeToggle <bar> redraw<CR>
    nnoremap <F2> :NERDTreeToggle <bar> redraw<CR>
    nnoremap <F3> :TagbarToggle<CR>
    nnoremap <F4> :VimuxPromptCommand<CR>
    nnoremap <F5> :checktime <bar> redraw<CR>
    nnoremap <F10> :set invpaste paste?<CR>
    nnoremap <F12> :wqall!<CR>
    set pastetoggle=<F10>
" }

" mouse {
    set mouse=
    set ttyfast
    set ttymouse=xterm2
" }

" vimrc-local {
    if filereadable(expand('~/.vimrc.local'))
      source ~/.vimrc.local
    endif
" }
