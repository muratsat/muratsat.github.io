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