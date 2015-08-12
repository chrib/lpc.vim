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
Unter Umstaenden hat man eigene Funktionsnamen, welche man gerne mit dem
Syntaxhighlighting hervorheben moechte. Natuerlich kann man das einfach in
dem allgemeinen Syntaxdatei einbauen, diese wird aber u.U. ueberschrieben.
Sinnvoller ist es, die eigenen Definitionen auszulagern. Vim bietet hierfuer
einen Mechanismus an.

Hierzu erstellt man unter *.vim/after/syntax/* die Datei lpc.vim mit z.B.
folgendem Inhalt

```vim
syn keyword lpcOwnFun level_check randomArray nextgroup=lpcLfunParen

hi lpcOwnFun term=NONE ctermfg=DarkGreen guifg=DarkGreen
```
Zwischen *lpcOwnFun* und *nextgroup* lassen sich dann die eigenen Lfuns 
hinzufuegegen, level_check und randomArray sind hier als Beispiele genannt


