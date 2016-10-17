#!/bin/bash

if [ ! -f ~/.vim ]; then
    echo "Creating ~/.vim directory"
    mkdir ~/.vim
fi

if [! -f ~/.vim/syntax]; then
    echo "Creating ~/.vim/syntax directory"
    mkdir ~/.vim/syntax
    echo "Success! Created ~/.vim/syntax directory"
fi

cp decaf.vim ~/.vim/syntax

if [! -f ~/.vim/ftdetect]; then
    echo "Creating ~/.vim/ftdetect directory"
    mkdir ~/.vim/ftdetect
    echo "Success! Created ~/.vim/ftdetect directory"
fi

echo au BufRead,BufNewFile *.decaf set filetype=decaf >> ~/.vim/dtdetect/decaf.vim
