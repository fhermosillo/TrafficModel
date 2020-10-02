@echo off
:: REMOVE TMP DIRECTORY IF EXIST
::IF EXIST latexdiff (
::	@RD /S /Q "latexdiff"
::	echo [93mWARNING: Folder "latexdiff" was removed[0m
::)
::mkdir latexdiff

:: REMOVE TMP & DIFF FILES
::IF EXIST tmp.old.tex (
::	del tmp.old.tex
::)
IF EXIST diff.tex (
	del diff.tex
)

:: Download previous version
::git show HEAD~1:"Vehicle Traffic Model.tex" > tmp.old.tex
:: Set current path
set PWD="%cd%"
:: Apply latexdiff
ECHO [-] Finding differences ...
latexdiff %PWD%/"tmp.old.tex" %PWD%/"Vehicle Traffic Model.tex" > %PWD%/"diff.tex"
echo [92mDONE![0m
::PAUSE
del tmp.old.tex