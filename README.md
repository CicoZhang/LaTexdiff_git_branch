**Git LaTeXDiff Branch** is a shell script that enables the comparison of two LaTeX documents in two git branches in one go. This tool is created to meet my own need during my research and it could be helpful to you if you have a similar user case.

## Instruction to use ##
1. The operation should be under the root directory of git.
2. The execution privilege should be given to this script,`chmod 755 git_latexdiff_branch.sh`
3. The command is like: `$ bash /path/git_latexdiff_branch.sh branchName1:main.tex branchName2:main.tex branchName2`; `main.tex` should be the real name of main tex file.
4. You will get two output files: one is `diff_main.tex`, the other is `diff_main.pdf` in the folder of `git_latexdiff_temp`.



