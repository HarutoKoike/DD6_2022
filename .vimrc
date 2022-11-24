set number
set cursorline
set noswapfile
set showcmd
set laststatus=2
set autoindent
" tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
    
"
set ignorecase
set smartindent
set showmatch 
set virtualedit=all 
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

syntax enable 
colorscheme ron
highlight Comment ctermfg=Blue
highlight LineNr ctermfg=237
set t_Co=256

" insert mode
inoremap <silent> jj <ESC>
inoremap <silent> JJ <ESC>
inoremap <silent> ｊｊ <ESC>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" normal mode
nnoremap ; :
noremap <Space><CR> o<ESC>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap gj 10<Down>
nnoremap gl 10<Right>
nnoremap gh 10<Left>
nnoremap gk 10<Up>
"nnoremap <C-c><C-c> ;<C-u>nohlesearch<cr><ESC>


" IDL setup
inoremap <silent> head1 ;-------------------------------------------------+<CR>;<CR>;-------------------------------------------------+<ESC>k0a<Space>
inoremap <silent> head2 ;<cr>;*----------<esc>3<space>i----------*<cr>;<esc><up>12<right>i 
inoremap head0<CR> <ESC>Ho<CR><CR>;===========================================================+<CR>; ++ NAME ++<CR>;  --> test.pro<CR>;<CR>; ++ PURPOSE ++<CR>;  --><CR>;<CR>; ++ POSITIONAL ARGUMENTS ++<CR>;  --><CR>;<CR>; ++ KEYWORDS ++<CR>; --><CR>;<CR>; ++ CALLING SEQUENCE ++<CR>;  --><CR>;<CR>; ++ HISTORY ++<CR>;  H.Koike 1/9,2021<CR>;===========================================================+
                            



set nospell
set spelllang=en,cjk

"fun! s:SpellConf()
"  redir! => syntax
"  silent syntax
"  redir END
"
"  set spell
"
"  if syntax =~? '/<comment\>'
"    syntax spell default
"    syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent containedin=Comment contained
"  else
"    syntax spell toplevel
"    syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent
"  endif
"
"  syntax cluster Spell add=SpellNotAscii,SpellMaybeCode
"endfunc
"
"augroup spell_check
"  autocmd!
"  autocmd BufReadPost,BufNewFile,Syntax * call s:SpellConf()
"augroup END




" lightline.vim
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night_Bright',
      \ }



"vimtex


call plug#begin()
Plug 'lervag/vimtex'
call plug#end()




