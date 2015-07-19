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
