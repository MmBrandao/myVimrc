" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    "Better syntax Support
    Plug 'sheerun/vim-polyglot'

    "File Explorer
    Plug 'scrooloose/NERDTree'

    "Gruvbox - nice theme
    Plug 'morhetz/gruvbox'

    "Fuzzy Finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " fuzzy finder for files, buffers, tags, etc.
    Plug 'ctrlpvim/ctrlp.vim'

    " allows for repetition of movement commands with ';' -- i.e., 5j -> ; ...
    " etc
    Plug 'Houl/repmo-vim'

    Plug 'chentoast/marks.nvim'
    
"    " main one
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
"    " 9000+ Snippets
"    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
"
"    Plug 'neovim/nvim-lspconfig'

    Plug 'bfrg/vim-cpp-modern'

    Plug 'ludovicchabant/vim-gutentags'

    Plug 'preservim/tagbar'

    Plug 'SirVer/ultisnips'

    Plug 'exvim/ex-utility'
    Plug 'exvim/ex-tags'

call plug#end()
