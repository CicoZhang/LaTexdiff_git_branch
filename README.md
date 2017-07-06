**Git LaTeXDiff Branch** is a shell script that enables the comparison of two LaTeX documents in two git branches or commits in one go. This tool is created to meet my own need during my research and it could be helpful to you if you have a similar use case.

## Instruction to use ##
1. **The operation should be under the root directory of git.**
2. The execution privilege should be given to this script,`chmod 755 git_latexdiff_branch.sh`
3. The command is like: `$ bash /path/git_latexdiff_branch.sh branchName1:main.tex branchName2:main.tex branchName2`; `main.tex` should be the real name of main tex file. (`branchName1` is the old version, `branchName2` is the new version), the standard annotation of this command is:
> `$bash /path/git_latexdiff_branch.sh older_branch_or_commit:subpath/main.tex newer_branch_or_commit:subpath/main.tex newer_branch_or_commit:subpath`

NB: this command is not limited to branch, it is also applicable to a specific commit. It also supports a path to the tex file, in case that tex file is in a subfolder. Here is a better example using commits and subfolder.

> `bash ~/Documents/code/LaTexdiff_git_branch/git_latexdiff_branch.sh d7f644c:final/main.tex 60e32da:final/main.tex 60e32da:final`
4. You will get two output files: one is `diff_main.tex`, the other is `diff_main.pdf` in the folder of `git_latexdiff_temp`.

NB: When running this tool, you might need to press the enter key a few times to give a go-ahead.
