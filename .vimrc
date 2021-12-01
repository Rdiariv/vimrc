set nocompatible
filetype off
set number



" establece la ruta para incluir Vudle e lo inicializa
set rtp+=~/.vim/bundle/Vundle.vim



" PLUGINS----------------------------------------------------------
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugins para apariencia-------------------------------------
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'tyrannicaltoucan/vim-deep-space'          "TEMA DE VIM
Plugin 'tomasr/molokai'
Plugin 'preservim/tagbar'			"OUTLINE 
" fin--------------------------------------------------------
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
"------------------------------------------------------------------


" PLUGIN sobre el tema--------------------------
"set background=dark
"set termguicolors
colorscheme molokai
"Para hacer transparente el fondo
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
"------------------------------------------------


"PLUGIN YOUCOMPLETEME
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = ''

" PLUGIN NERDtree
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual



"ATAJOS DE TECLADO
" Abrir/cerrar NERDTree
map n :NERDTreeToggle<CR>
" Abrir tagbar
nmap b :TagbarToggle<CR>



" requerido
filetype plugin indent on
