@echo off
echo 输入想要清理的盘符，按下回车就搞定了。
echo 如果说没找到文件，那说明不用清理，或者盘符写错了。
set /p p=请输入盘符：
del /q/a/s/f %p%:\*._*
del /s/q/a/f .DS_Store
pause
