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

for file in $files; do
	if [ ! -e "$file" ] \
        || [ `stat -c%Y "$file"` -ge `stat -c%Y "$directory.pdf"` ]; then
		echo "Compiling $file"
		file_basename=`basename "$file"`
		`asy "$file" -o "asy/$file_basename.eps"`
	fi
done

# Compile latex
echo "Compiling $directory.tex"
latex -interaction=nonstopmode $directory.tex > /dev/null
makeindex 2005 &> /dev/null
latex -interaction=nonstopmode $directory.tex > /dev/null
latex -interaction=nonstopmode $directory.tex > /dev/null

# Create PDF
echo "Creating $directory.pdf"
dvipdfm $directory.dvi &> /dev/null

