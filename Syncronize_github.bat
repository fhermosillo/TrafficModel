@echo off 
IF EXIST .git (
	@RD /S /Q ".git"
	echo [91mFolder ".git" was removed[0m
)
echo .\git init
git init
echo.
echo [91m----------------------[0m
echo .\add .
git add .
echo.
echo [91m----------------------[0m
echo .\git status
git status
echo.
echo [91m----------------------[0m
set /p msg="Enter Commit: "
echo .\git commit -m "%msg%"
git commit -m "%msg%"
echo.
echo [91m----------------------[0m
set /p url="Enter URL: "
echo .\git remote add origin "%url%"
git remote add origin "%url%"
echo.
echo [91m----------------------[0m
echo [93mWARNING: If next command doesn't work, try to change master by another branch[0m
echo [93mWARNING: Also you must fill in your GitHub username and password[0m
echo .\git push -u origin main
git push -u origin main
::PAUSE