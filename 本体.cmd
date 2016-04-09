@echo off
set /p p=请输入盘符：
del /q/a/s/f %p%:\*._*
del /s/q/a/f .DS_Store
pause
