# VScode settings json file
```json
{
    "workbench.colorTheme": "One Dark Pro Darker",
    "vim.vimrc.path": "/home/murat/.vsvimrc",
    "vim.vimrc.enable": true,
    "editor.fontWeight": "550",
    "editor.fontSize": 15,

    "code-runner.runInTerminal": true,
    "code-runner.executorMap": {
        "c": "clear; cd $dir && gcc $fileName -o $fileNameWithoutExt.exe && time ./$fileNameWithoutExt.exe ", 
        "cpp": "clear; cd $dir && g++ $fileName -o $fileNameWithoutExt.exe && time ./$fileNameWithoutExt.exe ", 
        "python": "cd $dir; clear; time python3 $fileName; echo ''",
        // "c": "clear; cd $dir && gcc $fileName -o $fileNameWithoutExt.exe && time valgrind --leak-check=full ./$fileNameWithoutExt.exe", 
        // "cpp": "clear; cd $dir && g++ $fileName -o $fileNameWithoutExt.exe && time valgrind --leak-check=full ./$fileNameWithoutExt.exe", 
    },

    "editor.mouseWheelZoom": true,
    "git.confirmSync": false,
    "editor.cursorBlinking": "smooth",
    "editor.cursorSmoothCaretAnimation": true,
    "terminal.integrated.cursorBlinking": true
}
```

# VIMRC file
```vimrc
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

map <C-a> ggVG
map <C-c> "+y
map <C-v> "+p
map <Space> i_<Esc>r


inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}


autocmd filetype cpp nnoremap <F9> :w <bar> !clear && g++ % -o a.out <Enter>
autocmd filetype cpp nnoremap <F10> :!clear && ./a.out <Enter>

autocmd filetype c nnoremap <F9> :w <bar> !clear && gcc % -o a.out <Enter>
autocmd filetype c nnoremap <F5> :w <bar> !clear && gcc % -o a.out -lm <Enter>
autocmd filetype c nnoremap <F10> :!clear && ./a.out <Enter>

autocmd filetype python nnoremap <F5> :w <bar> !clear && python3 % <Enter>
```
