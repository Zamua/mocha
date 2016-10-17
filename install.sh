#!/bin/bash

if [ ! -d ~/.vim/syntax/ ]; then
    echo "Creating ~/.vim/syntax directory"
    mkdir -p ~/.vim/syntax/
    echo "Success! Created ~/.vim/syntax directory"
fi

cp decaf.vim ~/.vim/syntax/

if [ ! -d ~/.vim/ftdetect/ ]; then
    echo "Creating ~/.vim/ftdetect directory"
    mkdir ~/.vim/ftdetect/
    echo "Success! Created ~/.vim/ftdetect directory"
fi

echo "au BufRead,BufNewFile *.decaf set filetype=decaf" > ~/.vim/ftdetect/decaf.vim

echo "Installation complete!"
echo "Open up the included test file (test.decaf), and check the highlighting."
echo "If your syntax highlighting appears to be working then feel free to delete this cloned directory"
