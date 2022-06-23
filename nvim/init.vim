" REQUIRED SETUP

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath    
source ~/.vimrc

set nocompatible

source $HOME/.config/nvim/vim-plug/plugins.vim
autocmd vimenter * ++nested colorscheme gruvbox


" FUNCTIONS
function! PInsert2(item)
	let @z=a:item
	norm "zp
	call feedkeys('a')
endfunction

function! CompleteInf()
	let nl=[]
	let l=complete_info()
	for k in l['items']
		call add(nl, k['word']. ' : ' .k['info'] . ' '. k['menu'] )
	endfor 
	call fzf#vim#complete(fzf#wrap({ 'source': nl,'reducer': { lines -> split(lines[0], '\zs :')[0] },'sink':function('PInsert2')}))
endfunction 




" COMMANDS 
command Fs Files
command Ta Tags
command W :w


" MAPPINGS! 
imap <c-'> <CMD>:call CompleteInf()<CR>

nnoremap <C-n> :NERDTree<CR>

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
nnoremap TL  :tablast<CR>
nnoremap tt  :TagbarToggle<CR>

nnoremap <silent> <Leader>ts :TS <C-R><C-W><CR>

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown <C-E>
set signcolumn=yes


" PLUGIN SETUP/CONFIG
lua require("marks").setup{}

let g:UltiSnipsExpandTrigger="<tab>"

let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.95 } }
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:55%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

au! BufEnter *.cpp let b:fswitchdst = 'hpp,h' | let b:fswitchlocs = './include/'
au! BufEnter *.hpp let b:fswitchdst = 'cpp,c' | let b:fswitchlocs = '../, ./'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['line']
