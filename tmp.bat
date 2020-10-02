@echo off
:: REMOVE TMP DIRECTORY IF EXIST
::IF EXIST latexdiff (
::	@RD /S /Q "latexdiff"
::	echo [93mWARNING: Folder "latexdiff" was removed[0m
::)
::mkdir latexdiff

:: REMOVE TMP & DIFF FILES
if exist latexdiff (echo 1) else (echo 0)