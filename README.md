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



其中 MATLAB 代码的运行环境为 `MATLAB2021a`

## 编译方式

`clone` 或 `下载 zip` 后在 `ODENumerical-exp` 文件夹下用命令行运行 
```bash
latexmk -pvc-
```
即可

## 开源协议

本文档遵循 GNU GPL 3.0 及以后的开源协议.