#!/bin/bash

directory=`pwd`
directory=`basename "$directory"`

# Is this the correct directory?
if [ ! -e "./$directory.tex" ]; then
    echo "$directory.tex does not exist. Exiting."
    exit 1
fi

# Compile asy files
files="asy/*.asy"

for file in $files
do
    echo "Compiling $file"
    file_basename=`basename "$file"`
    `asy "$file" -o "asy/$file_basename.eps"`
done

# Compile latex
echo "Compiling $directory.tex"
latex -interaction=nonstopmode $directory.tex > /dev/null
latex -interaction=nonstopmode $directory.tex > /dev/null
latex -interaction=nonstopmode $directory.tex > /dev/null

# Create PDF
echo "Creating $directory.pdf"
dvipdfm $directory.dvi &> /dev/null
