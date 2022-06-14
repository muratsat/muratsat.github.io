syntax on
set mouse=a
set number
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set bs=2
set si
set noswapfile
set clipboard=unnamedplus
set autoread

map <C-a> ggVG
map <C-c> "+y
map <C-v> "+p
map <Space> i_<Esc>r
map <C-e> :Explore <cr>


inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

autocmd filetype * nnoremap <F9> :w <bar> !clear; make <Enter>

autocmd filetype cpp nnoremap <F9> :w <bar> !clear; g++ % -o a.out <Enter>
autocmd filetype cpp nnoremap <F10> :!clear; time ./a.out <Enter>
autocmd filetype cpp nnoremap <F11> :w <bar> !clear; g++ % -o a.out; time ./a.out<Enter>

autocmd filetype c nnoremap <F8> :w <bar> !clear && gcc % -o a.out -lm <Enter>
autocmd filetype c nnoremap <F9> :w <bar> !clear && gcc % -o a.out <Enter>
autocmd filetype c nnoremap <F10> :!clear; time ./a.out <Enter>
autocmd filetype c nnoremap <F11> :w <bar> !clear && gcc % -o a.out; time ./a.out<Enter>

autocmd filetype python nnoremap <F9> :w <bar> !clear && time python3 % <Enter>

