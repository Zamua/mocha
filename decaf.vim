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
syn keyword decafConstant true false

" Comments
syn keyword decafTodo contained TODO
syn match decafComment '//.*$' contains=decafTodo

" Strings
syn region decafString start=/\v"/ skip=/\v\\./ end=/\v"/

let b:current_syntax="decaf"

hi def link decafType           Type
hi def link decafStatement      Statement
hi def link decafConstant       Constant
hi def link decafTodo           Todo
hi def link decafString         String
hi def link decafComment        Comment

