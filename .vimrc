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

map <C-a> ggVG
map <C-c> "+y
map <C-v> "+p
map <Space> i_<Esc>r

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

autocmd filetype cpp nnoremap <F9> :w <bar> !cls && g++ % -o %:r.exe <Enter>
autocmd filetype cpp nnoremap <F10> :!cls && %:r.exe <Enter>

autocmd filetype cs nnoremap <F10> :!cls && dotnet run %<CR>

