# VScode settings json file
```json
{
  // workbench
  "workbench.colorTheme": "One Dark Pro Darker",
  "workbench.list.smoothScrolling": true,

  // vim
  "vim.vimrc.enable": true,
  "vim.vimrc.path": "/home/murat/.vsvimrc",
  "vim.handleKeys": {
    "<C-w>": false,
    "<C-o>": false,
    "<C-n>": false
  },

  // editor
  "editor.fontWeight": "bold",
  "editor.fontSize": 14,
  "editor.mouseWheelZoom": false,
  "editor.cursorSmoothCaretAnimation": "on",
  "editor.cursorBlinking": "phase",
  "editor.smoothScrolling": true,
  "editor.unicodeHighlight.ambiguousCharacters": false,
  "editor.inlineSuggest.enabled": true,
  "editor.tabSize": 2,
  "editor.renderWhitespace": "trailing",
  "editor.detectIndentation": false,
  "editor.lineNumbers": "relative",

  // code runner
  "code-runner.runInTerminal": true,
  "code-runner.executorMap": {
    "c": "clear; cd $dir && gcc $fileName -o $fileNameWithoutExt.exe && time ./$fileNameWithoutExt.exe ",
    "cpp": "clear; cd $dir && g++ -O2 -std=c++20 $fileName -o $fileNameWithoutExt.exe && time ./$fileNameWithoutExt.exe; rm ./$fileNameWithoutExt.exe",
    "python": "cd $dir; clear; time python3 $fileName; echo ''",
    "JavaScript": "cd $dir; clear; time node $fileName; echo ''",
    "assembly": "cd $dir; make"
  },

  // terminal
  "terminal.integrated.cursorBlinking": true,
  "terminal.integrated.fontWeight": "bold",
  "terminal.integrated.fontSize": 15,
  "terminal.integrated.enableMultiLinePasteWarning": false,
  "terminal.integrated.inheritEnv": false,

  "liveServer.settings.donotShowInfoMsg": true,

  "C_Cpp.clang_format_fallbackStyle": "{ BasedOnStyle: Google, DerivePointerAlignment: false, PointerAlignment: Left, AlignOperands: true, IndentWidth: 2, TabWidth: 2, AllowShortFunctionsOnASingleLine: None}",

  "[javascript]": {
    "editor.defaultFormatter": "vscode.typescript-language-features"
  },
  "[json]": {
    "editor.defaultFormatter": "vscode.json-language-features"
  },
  "[python]": {
    "editor.tabSize": 4,
  },
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

" copy/paste shortcuts
map <C-a> ggVG
map <C-c> "+y
map <C-v> "+p
map <Space> i_<Esc>r
map <C-e> :Explore <cr>

" keep visual mode after indentation 
vnoremap > >gv
vnoremap < <gv

" auto complete braces
{% raw %}inoremap { {}<Left> {% endraw %}
{% raw %}inoremap {<CR> {<CR>}<Esc>O {% endraw %}
{% raw %}inoremap {{ { {% endraw %}
{% raw %}inoremap {} {} {% endraw %}

" compile and run shortcuts
autocmd filetype * nnoremap <F9> :w <bar> !clear; make <Enter>

autocmd filetype cpp nnoremap <F9> :w <bar> !clear; g++ % -o a.out <Enter>
autocmd filetype cpp nnoremap <F10> :!clear; time ./a.out <Enter>
autocmd filetype cpp nnoremap <F11> :w <bar> !clear; g++ % -o a.out; time ./a.out<Enter>

autocmd filetype c nnoremap <F8> :w <bar> !clear && gcc % -o a.out -lm <Enter>
autocmd filetype c nnoremap <F9> :w <bar> !clear && gcc % -o a.out <Enter>
autocmd filetype c nnoremap <F10> :!clear; time ./a.out <Enter>
autocmd filetype c nnoremap <F11> :w <bar> !clear && gcc % -o a.out; time ./a.out<Enter>

autocmd filetype python nnoremap <F9> :w <bar> !clear && time python3 % <Enter>

highlight ExtraWhitespace ctermbg=grey guibg=grey
match ExtraWhitespace /\s\+$/
```

# Chrome flags
```
--force-dark-mode --disable-gpu-driver-bug-workarounds --use-gl=desktop --ignore-gpu-blocklist --enable-gpu-rasterization --enable-zero-copy --enable-features=VaapiVideoDecoder,WebUIDarkMode --disable-features=UseChromeOSDirectVideoDecoder
```
