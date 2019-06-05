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
  Plugin 'Yggdroot/indentline'
  Plugin 'Raimondi/delimitMate'
  Plugin 'valloric/MatchTagAlways'

" fonts
  Plugin 'ryanoasis/vim-webdevicons'

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
  Plugin 'ryanoasis/vim-devicons'

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
  set showmatch
  set ruler
  set backup
  set backupdir=/home/psg/.vim

  " tab/indentation settings
  set smartindent
  set shiftwidth=4
  set expandtab
  set tabstop=4
  set smarttab
  set listchars=tab:>-,trail:-,nbsp:_
  set list

  set colorcolumn=72
  highlight ColorColumn ctermbg=7 guibg=LightGrey

  autocmd FileType json let g:instentLine_enabled = 0
  autocmd FileType json let g:indentLine_setConceal = 0

" NERDTree settings
  let g:NERDTreeWinSize=40

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  endfunction

  call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
  call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
  call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
  call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
  call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
  call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
  call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')


" airline settings
  let g:airline_powerline_fonts = 1
  let g:airline_theme='oceanicnext'

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
    endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

  " airline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''

"    syntastic settings
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
  let g:tsuquyomi_disable_quickfix = 1
  let g:syntastic_typescript_checkers = ['tsuquyomi']

  let g:syntastic_error_symbol = 'X'
  let g:syntastic_style_error_symbol = '?X'
  let g:syntastic_warning_symbol = '!!'
  let g:syntastic_style_warning_symbol = '??'

  highlight link SyntasticErrorSign SignColumn
  highlight link SyntasticWarningSign SignColumn
  highlight link SyntasticStyleErrorSign SignColumn
  highlight link SyntasticStyleWarningSign SignColumn

  " highlight bad words in red
  hi SpellBad guibg=#ff2929

" ts
  autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

" remapping
  inoremap jj <Esc>
  nnoremap ; :
  map <silent> <C-n> :NERDTreeFocus<CR>

"}}}

" Themes, commands, etc ---------------------------------{{{
" Theme
  syntax on
  set background=dark
  set t_Co=256
  set encoding=utf8
  set t_ut=
  " let g:sierra_Midnight = 1
  colorscheme sierra
  "  colorscheme OceanicNext 

  " cursor settings
  let &t_ti.="\e[1 q"
  let &t_SI.="\e[5 q"
  let &t_EI.="\e[1 q"
  let &t_te.="\e[0 q"
  set cursorline
  " highlight the current line number
  hi CursorLineNR guifg=#ffffff
"}}}
