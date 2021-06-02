# ODENumerical-exp

## 2021 春季学期常微分方程数值解法课程报告

## 编译环境

编译环境为 `Win10 20H2`+`TeX Live 2021` + `python 3.8.5` + Python module `Pygments 2.8.1`

字体部分使用了外部字体 [`Source Han Serif SC`](https://github.com/adobe-fonts/source-han-serif/tree/release/OTF/SimplifiedChinese), [`Source Han Sans SC`](https://github.com/adobe-fonts/source-han-sans/tree/release/OTF/SimplifiedChinese) 与 [`JetBrains Mono`](https://download.jetbrains.com/fonts/JetBrainsMono-2.225.zip?_ga=2.81906070.1241310076.1619968372-1664148514.1619968372), 点击字体名即可获取下载链接, 下载字体后右键选择 `为所有用户安装`, 并在安装后在命令行中运行
```bash
fc-cache -fv
```
来刷新字体缓存, 即可使用这三种字体. 

如果不想使用这三种字体, 可以自行选择使用的字体或者直接注释 `ODE.sty` 中的
```latex
\setCJKmainfont{Source Han Serif SC}
\setCJKsansfont{Source Han Sans SC}
\setmonofont{JetBrains Mono}
```

## `minted` 宏包
本文档使用了 [`minted`](https://www.ctan.org/pkg/minted) 宏包来排版代码, 该宏包需要 `python` 与 python 模块 `pygments`. 安装方法:
1. 从 [python 官网](https://www.python.org/) 下载最新版的 `python`,
2. 在命令行运行 `pip install pygments` 安装 `pygments`,
3. 命令行运行 `pygmentize -L lexers` 来查看 `pygments` 可以渲染的语言,
4. 编译的时候记得添加编译选项 `-shell-escape`

如果是 [`Anaconda`](https://www.anaconda.com/) 用户, 可以将第 2 步中的 `pip` 改为 `conda` 来使用 `conda` 安装. 


其中 MATLAB 代码的运行环境为 `MATLAB2021a`

## 编译方式

`clone` 或 `下载 zip` 后在 `ODENumerical-exp` 文件夹下用命令行运行 
```bash
latexmk -pvc-
```
即可

## 开源协议

本文档遵循 GNU GPL 3.0 及以后的开源协议.