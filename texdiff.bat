@echo off
:: REMOVE TMP DIRECTORY IF EXIST
::IF EXIST latexdiff (
::	@RD /S /Q "latexdiff"
::	echo [93mWARNING: Folder "latexdiff" was removed[0m
::)
::mkdir latexdiff

:: Set current path
set PWD=%1%
ECHO Current folder is "%PWD%"
cd %PWD%

:: REMOVE TMP & DIFF FILES
IF EXIST tmp.old.tex (
	ECHO File tmp.old.tex was removed
	del tmp.old.tex
)
IF EXIST diff.tex (
	ECHO File diff.tex was removed
	del diff.tex
)

:: Download previous version
git show HEAD:"Vehicle Traffic Model.tex" > tmp.old.tex

:: Apply latexdiff
ECHO [-] Finding differences ...
latexdiff %PWD%/"tmp.old.tex" %PWD%/"Vehicle Traffic Model.tex" > %PWD%/"diff.tex"
echo [92mDONE![0m
::PAUSE
del tmp.old.tex

:: Apply pdflatex command
pdflatex diff.tex