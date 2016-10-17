" Vim syntax file
" Language: decaf
" Maintainer: Zamua Nasrawt
" Latest Revision: 17 October 2016

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword decafType def int bool void
syn keyword decafStatement if else while return continue break
syn keyword decafBoolLiteral true false

" Comments
syn keyword decafTodo contained TODO
syn match decafComment "//.*$" contains=decafTodo

let b:current_syntax="decaf"

hi def link decafType           Type
hi def link decafStatement      Statement
hi def link decafBoolLiteral    Statement
hi def link decafConstant       Constant
hi def link decafTodo           Todo
