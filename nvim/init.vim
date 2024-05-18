syntax on

" define mapleader variable.
" some possible (suggested) values are:
"  - space: " "
"  - win  : "\<D>"
"  - ctrl : "\<C-L>"
let mapleader = "<C-L>"

set number                   " This enables line numbers
set mouse=a                  " enable mouse interaction
set sw=2                     " set indentation width to 2
set noerrorbells             " disable error sounds
" set expandtab              " indent using spaces
set smartindent              " enable auto-indentation for next lines according to scope
set rnu                      " shows line numbers as distance from the current line
set numberwidth=1            " Fixes the line number with
set nowrap                   " do not wrap long lines
set noswapfile               " disable swap files
set nobackup                 " disable local file backup
set incsearch                " enhances search
set ignorecase               " ignore word case when searching
set clipboard=unnamedplus    " enable system level clipboard
set encoding=utf-8           " UTF-8 encoding
set showmatch                " highlights mathing words???
set cursorline               " highlight current line
set termguicolors            " changes theme
set colorcolumn=100          " Shows a line that shows a guideline for very long lines
highlight ColoColumn ctermbg=0 guibg=lightgray

" Install plugins
call plug#begin('~/.local/share/nvim/plugged')

" ===============================
" Theme
" ===============================
Plug 'tomasiser/vim-code-dark'

" ===============================
" git integration
" ===============================
Plug 'mhinz/vim-signify'                   " Show git changes
Plug 'tpope/vim-fugitive'                  " Git commands
Plug 'tpope/vim-rhubarb'                   " Fugitive extension
Plug 'junegunn/gv.vim'                     " Git commit browser
" Plug 'airblade/vim-gitgutter'

" ===============================
" visual enhancements
" ===============================
" Plug 'junegunn/goyo.vim'
Plug 'yggdroot/indentline'                  " Show indentation lines
Plug 'vim-airline/vim-airline'              " Status bar
Plug 'vim-airline/vim-airline-themes'       " Themes for airline
" Plug 'mhinz/vim-startify'                 " Start screen
Plug 'ryanoasis/vim-devicons'               " Icons for nerdtree
Plug 'lilydjwg/colorizer'                   " Highlight colors in css files
Plug 'sheerun/vim-polyglot'                 " Syntax highlighting for many languages
" Plug 'leafgarland/typescript-vim'         " Typescript syntax highlighting

" ===============================
" functionality
" ===============================
Plug 'tpope/vim-surround'                               " Surround text with brackets
Plug 'tpope/vim-repeat'                                 " Repeat last action
Plug 'tpope/vim-commentary'                             " Comment code
Plug 'tpope/vim-unimpaired'                             " Add useful mappings
Plug 'tpope/vim-abolish'                                " Abbreviate words
Plug 'tpope/vim-sleuth'                                 " Detect indentation
Plug 'tpope/vim-speeddating'                            " Change dates
Plug 'tpope/vim-eunuch'                                 " Unix commands
Plug 'tpope/vim-dispatch'                               " Async commands
Plug 'tpope/vim-sensible'                               " Sensible defaults
Plug 'tpope/vim-rsi'                                    " RSI prevention
Plug 'tpope/vim-scriptease'                             " Script debugging
Plug 'tpope/vim-projectionist'                          " Project configuration
Plug 'tpope/vim-obsession'                              " Save session
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }	    " Fuzzy finder
Plug 'junegunn/fzf.vim'	                                " Fuzzy finder
Plug 'scrooloose/nerdtree'                              " File explorer
" Plug 'Xuyuanp/nerdtree-git-plugin'                      " Git integration for nerdtree
Plug 'christoomey/vim-tmux-navigator'                   " Tmux navigation
" Plug 'preservim/nerdtree'                               " File explorer
Plug 'KabbAmine/vCoolor.vim'                            " Color picker
Plug 'easymotion/vim-easymotion'                        " Easy motion

" ===============================
" Code completion and LSP
" ===============================
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " LSP
Plug 'ddollar/nerdcommenter'                            " Comment code
Plug 'dense-analysis/ale'                               " Linting
Plug 'honza/vim-snippets'                               " Snippets
Plug 'SirVer/ultisnips'                                 " Snippets
Plug 'jiangmiao/auto-pairs'                             " Auto pairs
Plug 'mattn/emmet-vim'                                  " Emmet

" ===============================
" Language support
" ===============================
Plug 'rust-lang/rust.vim'                               " Rust support
Plug 'elzr/vim-json'                                    " JSON support
Plug 'pangloss/vim-javascript'                          " Javascript support
Plug 'mxw/vim-jsx'                                      " JSX support
Plug 'leafgarland/typescript-vim'                       " Typescript support
Plug 'hashivim/vim-terraform'                           " Terraform support
Plug 'vim-python/python-syntax'                         " Python support
Plug 'rhysd/vim-clang-format'                           " C support
Plug 'octol/vim-cpp-enhanced-highlight'                 " C++ support
" Plug 'vim-scripts/cmake-syntax'                         " Cmake support
Plug 'plasticboy/vim-markdown'                          " Markdown support
Plug 'vim-scripts/SQLUtilities'                         " SQL support
Plug 'jparise/vim-graphql'                              " GraphQL support
Plug 'janko-m/vim-test'                                 " Test support

" ===============================
" Other
" ===============================
Plug 'github/copilot.vim'                               " Github copilot
Plug 'vimwiki/vimwiki'                                  " Vimwiki
" Plug 'johannesthyssen/vim-platformio'                   " Platformio
" Plug 'daniel-schroeder/vim-mbed'                        " Mbed support
Plug 'vim-scripts/DoxygenToolkit.vim'                   " Doxygen support
" Plug 'junegunn/goyo.vim'                                " Distraction free writing
" Plug 'junegunn/limelight.vim'                           " Focus on current paragraph
" Plug 'junegunn/vim-peekaboo'                            " Show registers
" Plug 'junegunn/vim-easy-align'                          " Align text
" Plug 'junegunn/vim-emoji'                               " Emoji support
" Plug 'junegunn/vim-visual-star-search'                  " Visual star search
" Plug 'junegunn/vim-visual-multi'                        " Visual multi selection


call plug#end()

" Set color theme to use "vim-code-dark" this is similar to vscode dark
colorscheme codedark

" ==================================================
" Key bindings
" ==================================================
"
" disable arrows in normal mode
" noremap <up> <nop>
" noremap <down> <nop>
" noremap <left> <nop>
" noremap <right> <nop>

nnoremap <c-s> :w<CR>                                 " Save file
nnoremap <c-q> :q<CR>                                 " Quit file
nnoremap <c-f> :FZF<CR>                               " Fuzzy finder
nnoremap <c-b> :NERDTreeToggle<CR>                    " Toggle nerdtree
nnoremap <c-p> :VCoolor<CR>                           " Open color picker
" nnoremap <c-e> :ALEToggle<CR>                         " Toggle linting
nnoremap <c-k><c-f> :ALEFix<CR>                       " Fix linting
nnoremap <c-g> :CocCommand<CR>                        " Coc commands
nnoremap <c-h> :CocList diagnostics<CR>               " Show diagnostics
nnoremap <c-j> :CocList extensions<CR>                " Show extensions
nnoremap <c-k> :CocList outline<CR>                   " Show outline
nnoremap <c-l> :CocList commands<CR>                  " Show commands
nnoremap <c-m> :CocList symbols<CR>                   " Show symbols
nnoremap <c-o> :CocList snippets<CR>                  " Show snippets
nnoremap <c-r> :CocList references<CR>                " Show references
nnoremap <c-t> :CocList extensions<CR>                " Show extensions

" Move between splits
nnoremap <c-right> :vertical resize +5<CR>            " Resize vertical split
nnoremap <c-left> :vertical resize -5<CR>             " Resize vertical split
nnoremap <c-up> :resize +5<CR>                        " Resize horizontal split
nnoremap <c-down> :resize -5<CR>                      " Resize horizontal split

nnoremap <a-t> :split<CR>:ter<CR>                     " Open terminal in split
vnoremap <a-t> :split<CR>:ter<CR>                     " Open terminal in split

nnoremap <c-pagedown> :bnext<CR>                      " Move to next buffer
nnoremap <c-pageup> :bprevious<CR>                    " Move to previous buffer
nnoremap <c-k><c-w> :bdelete<CR>                      " Close buffer
nnoremap <c-w> :close<CR>                             " Tab close
nnoremap <c-k><c-t> :tabe<CR>                         " New tab
nnoremap <c-\> :vsp<CR>                               " Vertical split
nnoremap <c-k><c-\> :sp<CR>                           " Horizontal split


