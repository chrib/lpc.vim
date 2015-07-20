lpc.vim
=======

LPC-Syntax fuer MG-Mudlib

Die Syntaxdatei gehoert unter ~/.vim/syntax. Da LPC die gleiche Dateiendung
wie C nutzt, will man wahrscheinlich nur die LPC-Syntax haben, wenn man sich
im Mudlib-Verzeichnis befindet. Hierzu muss folgender Code in die ~/.vimrc
eingefuegt werden

```vim
autocmd BufNewFile,BufRead ~/mud/mudlib/*.[c|h]
	\ set filetype=lpc
```
Alternativ kann man auch unter ~/.vim/ftdetect eine Datei namens. lpc.vim
mit folgenden Inhalt anlegen.

```vim
autocmd BufNewFile,BufRead ~/mud/mudlib/*.[c|h]
        \ set filetype=lpc

" Tabstop, Shiftwidth und Softtabstop 2 Zeichen, Textwidth 78 Zeichen
" Tabstops als Spaces einfuegen
autocmd BufEnter ~/mud/mudlib/*.[c|h] set ts=2 sw=2 sts=2 tw=78 expandtab
```


