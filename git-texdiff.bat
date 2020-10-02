@echo off
:: REMOVE TMP DIRECTORY IF EXIST
::IF EXIST git-latexdiff (
::	@RD /S /Q "git-latexdiff"
::	echo [91mFolder "git-latexdiff" was removed[0m
::)
::mkdir git-latexdiff

:: REMOVE TMP & DIFF FILES
IF EXIST tmp.old.tex (
	del tmp.old.tex
)
IF EXIST diff.tex (
	del diff.tex
)
git show HEAD~1:"Vehicle Traffic Model.tex" > tmp.old.tex
git latexdiff --main "Vehicle Traffic Model.tex" --cleanup keeppdf "./tmp.old.tex"
::PAUSE