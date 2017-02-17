" jk is mapped to escape
inoremap jk <esc>

" doesn't skip the fake lines when using j and k
nnoremap j gj
nnoremap k gk

" CDC = Change to Directory of Current file
command CDC cd %:p:h

" CDA = Change to :w

"better auto complete menu
set wildmenu

"more natural split setting
set splitbelow
set splitright

"set the line numebr on all documents
set number

"shows command line
set showcmd

"set cursor to go on character past the last
set virtualedit=onemore

"enable mouse use
set mouse=a

" reload file when it has been edited outside of vim
set autoread

"enable wordprocessing mode with spellcheck and other formatting
func! WordProcessorMode()
   setlocal textwidth=80
   setlocal smartindent
   setlocal spell spelllang=en_us
   setlocal noexpandtab
endfu

"command to enable WP mode above
com! WP call WordProcessorMode()

" use case if any case is used in searches
set smartcase

"search highlighting
set hlsearch

"show match as search proceeds
set incsearch

"easier window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"puts the cursos in the middle of the screen when scrolling j/k
set scrolloff=999

"show matching ( [ {
set showmatch

"set time between blink of cursor
set mat=1

"set syntax processing
syntax enable

"options for colors, and viewing
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
colorscheme darkglass
set background=dark
set encoding=utf8
set ffs=unix,dos,mac

"set tabs to spaces with width 3
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

"added column for viewing 80 characters
set colorcolumn=80

"turns off physical line wrapping
set wrapmargin=0
set textwidth=0

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines visually
