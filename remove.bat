@echo off
:: REMOVE TMP DIRECTORY IF EXIST
::IF EXIST latexdiff (
::	@RD /S /Q "latexdiff"
::	echo [93mWARNING: Folder "latexdiff" was removed[0m
::)
::mkdir latexdiff

:: REMOVE TMP & DIFF FILES
IF EXIST %1 (
	@rd /s /q "%1"
	echo [91mFolder "%1" was removed[0m
) ELSE (
	echo File/Folder "%1" was not found
)