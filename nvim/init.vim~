set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath    
source ~/.vimrc

set nocompatible

source $HOME/.config/nvim/vim-plug/plugins.vim
autocmd vimenter * ++nested colorscheme gruvbox

nnoremap <C-n> :NERDTree<CR>

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

imap <c-'> <CMD>:call CompleteInf()<CR>

nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>

command Fs Files

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

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

" lua require("lspconfig").clangd.setup(require("coq").lsp_ensure_capabilities())
lua require("marks").setup{}

let g:UltiSnipsExpandTrigger="<tab>"

let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:55%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
