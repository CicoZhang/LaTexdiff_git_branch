#!/bin/sh
#
# Author: Cico (PhD of Vrije Universteit Amsterdam)
#
temp=~/git_latexdiff_temp 
mkdir $temp
#
# Export the main tex files
git show $1 > ~/git_latexdiff_temp/old_main.tex
git show $2 > ~/git_latexdiff_temp/new_main.tex
#
# Export the whole git directory and decompress it into the temp folder
git archive --format=tar.gz $3 > ~/git_latexdiff_temp/tex.tar.gz
mkdir ~/git_latexdiff_temp/tex
tar -zxvf ~/git_latexdiff_temp/tex.tar.gz -C ~/git_latexdiff_temp/tex
#
# Use LaTeXDiff
latexdiff ~/git_latexdiff_temp/old_main.tex ~/git_latexdiff_temp/new_main.tex > ~/git_latexdiff_temp/tex/diff_main.tex
#
# Generate PDF files
cd ~/git_latexdiff_temp/tex/
pdflatex diff_main.tex
bibtex diff_main.aux
pdflatex diff_main.tex
pdflatex diff_main.tex
#
# Clean the files
mv diff_main.tex ../
mv diff_main.pdf ../
cd -
rm -rf ~/git_latexdiff_temp/tex
rm ~/git_latexdiff_temp/tex.tar.gz
#
# Conclude with some friendly messages.

echo "OUtput files are in the folder: $temp".
