" Vim syntax file
" Language: decaf
" Maintainer: Zamua Nasrawt
" Latest Revision: 17 October 2016

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword decafType int bool void
syn keyword decafStatement def if else while return continue break

" Comments
syn keyword decafTodo contained TODO
syn match decafComment '//.*$' contains=decafTodo

" Literals
syn match decafConstant 'true\|false\|\d\+'

" Strings
" Match \n, etc in a string
syn match decafSpecialChar contained "\\\([4-9]\d\|[0-3]\d\d\|[\"\\'ntbrf]\|u\x\{4\}\)"
syn region decafString start=+"+ end=+"+ end=+$+ contains=decafSpecialChar


let b:current_syntax="decaf"

hi def link decafType           Type
hi def link decafStatement      Statement
hi def link decafConstant       Constant
hi def link decafTodo           Todo
hi def link decafString         String
hi def link decafSpecialChar    SpecialChar
hi def link decafComment        Comment
