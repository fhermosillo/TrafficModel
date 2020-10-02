@echo off
:: REMOVE TMP DIRECTORY IF EXIST
IF EXIST latexdiff (
	@RD /S /Q "latexdiff"
	echo [93mWARNING: Folder "latexdiff" was removed[0m
)
mkdir latexdiff

::for /r %%i in (diff.*) do move %%i %%i


SET SourceDir=%cd%
SET CopyDir=%cd%/latexdiff
SET FilePatterName=diff.*

FOR %%A IN ("%SourceDir%\%FilePatterName%") DO ECHO F | XCOPY /Y /F "%%~A" "%CopyDir%\"
FOR %%A IN ("%SourceDir%\%FilePatterName%") DO del "%%~A"

::PAUSE