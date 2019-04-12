" Josh's vimrc

if has('vim_starting')
  set nocompatible
endif

" Plugins ------------------------------{{{

" set the runtime path to include Vundle and initialize
  set rtp+=~/dev/dotfiles/vim/.vim/bundle/Vundle.vim
  call vundle#begin()

" let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'vim-syntastic/syntastic.git'
  Plugin 'pangloss/vim-javascript'
  Plugin 'othree/yajs.vim'
  Plugin 'mxw/vim-jsx'
  Plugin 'hail2u/vim-css3-syntax'
  Plugin 'moll/vim-node'
  Plugin '1995eaton/vim-better-javascript-completion'
  Plugin 'vim-scripts/SyntaxComplete'
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'tpope/vim-markdown'
  Plugin 'suan/vim-instant-markdown'
  Plugin 'burnettk/vim-angular'
  Plugin 'matthewsimo/angular-vim-snippets'
  Plugin 'honza/vim-snippets'
  Plugin 'claco/jasmine.vim'

" Typescript
  Plugin 'HerringtonDarkHolme/yats.vim'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'Quramy/tsuquyomi'

" colorscheme $ syntax highlighting
  Plugin 'mhartington/oceanic-next'
  Plugin 'AlessandroYorba/Sierra'
  Plugin 'fcpg/vim-fahrenheit'
  Plugin 'Yggdroot/indentline'
  Plugin 'Raimondi/delimitMate'
  Plugin 'valloric/MatchTagAlways'

" utils
  Plugin 'valloric/YouCompleteMe'
  Plugin 'benekastah/neomake'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'AndrewRadev/switch.vim'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'bling/vim-airline'
  Plugin 'tpope/vim-surround'
  Plugin 'tomtom/tcomment_vim'
  Plugin 'Chiel92/vim-autoformat'
  Plugin 'gorodinskiy/vim-coloresque'

" Shougo
  Plugin 'Shougo/neco-vim'
  Plugin 'Shougo/neoinclude.vim'
  Plugin 'Shougo/vimproc.vim'

  call vundle#end()            " required
  filetype plugin indent on    " required

"}}}


" System Settings -------------------------------------{{{

" Vim settings
  filetype on                  " required filetype on
  filetype plugin on
  set noshowmode
  set noswapfile
  set number
  set backspace=2
  set autoindent
  set showmatch
  set tabstop=4
  set shiftwidth=4
  set ruler
  set backup
  set backupdir=/home/psg/.vim

  set colorcolumn=72

" NERDTree settings
  let g:NERDTreeWinSize=45

" syntastic settings
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_loc_list_height = 5
  let g:syntastic_aggregate_errors = 1

  let g:syntastic_python_checkers = ['pylint', 'pep8']
  let g:syntastic_html_checkers = ['']
  let g:syntastic_javascript_checkers = ['eslint']
  let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']

  let g:syntastic_error_symbol = '❌'
  let g:syntastic_style_error_symbol = '⁉️'
  let g:syntastic_warning_symbol = '⚠️'
  let g:syntastic_style_warning_symbol = '💩'

  highlight link SyntasticErrorSign SignColumn
  highlight link SyntasticWarningSign SignColumn
  highlight link SyntasticStyleErrorSign SignColumn
  highlight link SyntasticStyleWarningSign SignColumn

" ts
  autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

" remapping
  inoremap jj <Esc>
  nnoremap ; :
  map <silent> <C-n> :NERDTreeFocus<CR>

"}}}

" Themes, commands, etc ---------------------------------{{{
" Theme
  syntax enable
  set t_Co=256
  if (has("termguicolors"))
	set termguicolors
  endif

  set t_ut=
  colorscheme sierra

  let g:airline_theme='oceanicnext'
" highlight the current line number
  hi CursorLineNR guifg=#ffffff
" highlight bad words in red
  hi SpellBad guibg=#ff2929

"}}}
