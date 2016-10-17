#!/bin/bash

if [ ! -d ~/.vim/ ]; then
    echo "Creating ~/.vim directory"
    mkdir ~/.vim
    echo "Success! Created ~/.vim/syntax directory"
fi

if [ ! -d ~/.vim/syntax/ ]; then
    echo "Creating ~/.vim/syntax directory"
    mkdir ~/.vim/syntax/
    echo "Success! Created ~/.vim/syntax directory"
fi

cp decaf.vim ~/.vim/syntax/

if [ ! -d ~/.vim/ftdetect/ ]; then
    echo "Creating ~/.vim/ftdetect directory"
    mkdir ~/.vim/ftdetect/
    echo "Success! Created ~/.vim/ftdetect directory"
fi

touch ~/.vim/ftdetect/decaf.vim
echo "au BufRead,BufNewFile *.decaf set filetype=decaf" > ~/.vim/ftdetect/decaf.vim

echo "Installation complete!"
echo "If your syntax highlighting appears to be working then feel free to delete this cloned directory"
