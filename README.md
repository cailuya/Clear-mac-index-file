# Windows 下清理 mac 索引文件
## 动机
ASP 课上没意思，索性就研究批处理吧，原来打算研究怎么一键导入hosts，但忽然发现优盘里的索引文件，于是就先研究怎么一键清除，在同学的帮助下算是弄出来了。
## 用途
或许用过 MAC 的人都经历过，在自己的电脑上插过的优盘上会出现莫名其面的文件，每个 4KB，一个文件都有对应的文件，以` ._ `开头，子文件夹里也有，文件结构复杂点的优盘，一点点删简直不可能，批处理的作用在这时候就体现出来了。
现在只是简单的功能，还需要手动输入盘符，下一步要实现自动识别盘符，最好能自动写入路径，以实现仅清理某一个文件夹的功能，当然还要有手动清理的功能。
## 代码
````
@echo off
set /p p=请输入盘符：
del /q/a/s/f %p%:\*._*
del /s/q/a/f .DS_Store
pause
````
## 结束/近期目标
非常简单的代码，只有区区五行代码，说实话在 Github 展示我都觉得小题大做了，能来这的应该都会用吧？就不在这写使用过程了。
争取最近把自动获取路径的功能做出来。
