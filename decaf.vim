" Vim syntax file
" Language: decaf
" Maintainer: Zamua Nasrawt
" Latest Revision: 17 October 2016

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword decafKeyword def if else while return continue
syn keyword decafKeyword int bool void true false break


" Matches
"syn match syntaxElementMatch 'regexp' contains=syntaxElement1 nextgroup=syntaxElement2 skipwhite

" Regions
"syn region syntaxElementRegion start='x' end='y'
