# VScode settings json file
```json
{
    "workbench.colorTheme": "GitHub Dark Default",
    "workbench.list.smoothScrolling": true,

    "vim.vimrc.enable": true,
    "vim.vimrc.path": "/home/murat/.vsvimrc",

    "editor.fontWeight": "bold",
    "editor.fontSize": 14,
    "editor.mouseWheelZoom": true,
    "editor.cursorBlinking": "smooth",
    "editor.cursorSmoothCaretAnimation": true,
    "editor.smoothScrolling": true,

    "code-runner.runInTerminal": true,
    "code-runner.executorMap": {
        "c": "clear; cd $dir && gcc $fileName -o $fileNameWithoutExt.exe && time ./$fileNameWithoutExt.exe ", 
        "cpp": "clear; cd $dir && g++ -O2 $fileName -o $fileNameWithoutExt.exe && time ./$fileNameWithoutExt.exe; rm ./$fileNameWithoutExt.exe", 
        // "cpp": "clear; cd $dir && cc -O2 $fileName; time ./a.out",
        "python": "cd $dir; clear; time python3 $fileName; echo ''",
        // "c": "clear; cd $dir && gcc $fileName -o $fileNameWithoutExt.exe && time valgrind --leak-check=full ./$fileNameWithoutExt.exe", 
        // "cpp": "clear; cd $dir && g++ $fileName -o $fileNameWithoutExt.exe && time valgrind --leak-check=full ./$fileNameWithoutExt.exe", 
        "assembly": "cd $dir; make"
    },

    "git.confirmSync": false,

    "terminal.integrated.cursorBlinking": true,
    "terminal.integrated.fontWeight": "bold",
    "terminal.integrated.fontSize": 15,
    "editor.unicodeHighlight.allowedCharacters": {
        "Н": true
    },
    "editor.unicodeHighlight.ambiguousCharacters": false,
    "hexeditor.columnWidth": 32,
    "hexeditor.showDecodedText": true,
    "hexeditor.defaultEndianness": "little",
    "hexeditor.inspectorType": "aside",
    "workbench.editor.enablePreview": false,
    "terminal.integrated.enableMultiLinePasteWarning": false,
    "liveServer.settings.donotShowInfoMsg": true,
    "terminal.integrated.inheritEnv": false,
    "C_Cpp.clang_format_fallbackStyle": "{ BasedOnStyle: Google, IndentWidth: 4 }"
}
```

# Vim configuration

```vim
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


{% raw %}inoremap { {}<Left> {% endraw %}
{% raw %}inoremap {<CR> {<CR>}<Esc>O {% endraw %}
{% raw %}inoremap {{ { {% endraw %}
{% raw %}inoremap {} {} {% endraw %}

autocmd filetype * nnoremap <F9> :w <bar> !clear; make <Enter>

autocmd filetype cpp nnoremap <F9> :w <bar> !clear; g++ % -o a.out <Enter>
autocmd filetype cpp nnoremap <F10> :!clear; time ./a.out <Enter>
autocmd filetype cpp nnoremap <F11> :w <bar> !clear; g++ % -o a.out; time ./a.out<Enter>

autocmd filetype c nnoremap <F8> :w <bar> !clear && gcc % -o a.out -lm <Enter>
autocmd filetype c nnoremap <F9> :w <bar> !clear && gcc % -o a.out <Enter>
autocmd filetype c nnoremap <F10> :!clear; time ./a.out <Enter>
autocmd filetype c nnoremap <F11> :w <bar> !clear && gcc % -o a.out; time ./a.out<Enter>

autocmd filetype python nnoremap <F9> :w <bar> !clear && time python3 % <Enter>

```

# Chrome flags
```
--disable-gpu-driver-bug-workarounds 
--enable-native-gpu-memory-buffers 
--enable-gpu-rasterization 
--enable-oop-rasterization 
--disable-gpu-vsync 
--enable-zero-copy 
--use-gl=desktop 
--enable-accelerated-video-decode 
--enable-accelerated-video-encode 
--ignore-gpu-blocklist 
--enable-gpu-compositing 
--enable-smooth-scrolling 
--disable-gpu-driver-workarounds 
--disable-font-subpixel-positioning 
--enable-features=VaapiVideoDecoder 
--disable-features=UseChromeOSDirectVideoDecoder 
```
