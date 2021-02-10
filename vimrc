syntax on
set number
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set bs=2
map <C-a> ggVG
map <C-c> "+y
map <C-v> "+p

nnoremap <F8> :!g++ % -o %:r.exe <Enter>
nnoremap <F9> :!%:r.exe <Enter>
nnoremap <F10> :!cls <Enter> <Enter> 
