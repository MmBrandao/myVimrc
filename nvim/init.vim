" REQUIRED SETUP
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath    

set nocompatible

" let g:polyglot_disabled = ['c/c++', 'cpp-modern']

source $HOME/.config/nvim/vim-plug/plugins.vim

" autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox

" let g:tokyonight_style = 'storm' " available: night, storm
" let g:tokyonight_terminal_colors = 1
" let g:tokyonight_italic_comments = 0
" let g:tokyonight_enable_italic = 1
" colorscheme tokyonight

" COMMANDS 
command Fs Files
command Gs GFiles
command Gst GFiles?
command Ta Tags
command W :w

" MAPPINGS! 

nnoremap <C-n> :NERDTree<CR>

nnoremap <C-p> :Lines<CR>

nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>

nnoremap <silent> <Leader>fs :FSHere<CR>

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
noremap <Leader>d "*d

noremap <Leader>j 10j
noremap <Leader>k 10k

noremap <Leader>o o<Esc>
noremap <Leader>O o<Esc>

nnoremap th  :tabprev<CR>
nnoremap tl  :tabnext<CR>
nnoremap tH	 :tabfirst<CR>
nnoremap tL  :tablast<CR>
nnoremap tt  :TagbarToggle<CR>

nnoremap <silent> <Leader>ts :TS <C-R><C-W><CR>

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown <C-E>
set signcolumn=yes


" PLUGIN SETUP/CONFIG
lua require("marks").setup{}

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.95 } }
let $FZF_DEFAULT_OPTS="--ansi --info=inline --preview-window='right:55%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

au! BufEnter *.cpp let b:fswitchdst = 'hpp,h' | let b:fswitchlocs = './include/'
au! BufEnter *.hpp let b:fswitchdst = 'cpp,c' | let b:fswitchlocs = '../, ./'

let g:perl_host_prog = '/usr/bin/perl'


" ORIGINAL VIM VIMRC
source ~/.vimrc
