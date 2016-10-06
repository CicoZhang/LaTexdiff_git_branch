#!/bin/sh
#
#
#
mkdir ~/git_latexdiff_temp
git show $1 > ~/git_latexdiff_temp/old_main.tex
git show $2 > ~/git_latexdiff_temp/new_main.tex
git archive --format=tar.gz $3 > ~/git_latexdiff_temp/tex.tar.gz
mkdir ~/git_latexdiff_temp/tex
tar -zxvf ~/git_latexdiff_temp/tex.tar.gz -C ~/git_latexdiff_temp/tex
latexdiff ~/git_latexdiff_temp/old_main.tex ~/git_latexdiff_temp/new_main.tex > ~/git_latexdiff_temp/tex/diff_main.tex
cd ~/git_latexdiff_temp/tex/
pdflatex diff_main.tex
bibtex diff_main.aux
pdflatex diff_main.tex
pdflatex diff_main.tex
mv diff_main.tex ../
mv diff_main.pdf ../
cd -
rm -rf ~/git_latexdiff_temp/tex
rm ~/git_latexdiff_temp/tex.tar.gz
