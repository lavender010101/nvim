# Neovim 配置 中文版

## 依赖
### [coc.nvim](https://github.com/neoclide/coc.nvim)
`coc.nvim` 是一个轻量化的**代码补全框架**，它不仅提供很多方便使用的函数，还支持多种语言服务，可以满足各种语言的补全功能。由于它的后端使用`nodejs`实现，所有你需要安装`nodejs`，另外还需要`yarn`来下载`其他的coc插件`。
#### ArchLinux 安装
```sh
pacman -S nodejs yarn
```

### instant-markdown-preview


## 参考

### 介绍项目
- [ ] 文件介绍
- [ ] 键位绑定
- [ ] 插件介绍和使用
- [ ] 相关依赖

# Neovim 配置说明 中文版

## 00-前言

这份配置的很大一部分参考了 [@theCW](https://github.com/theniceboy/nvim) 的 `Neovim` 配置，在此非常感谢这位大佬。

默认的 `master` 主分支是针对 `Linux` 配置的，理论上兼容 `MacOS` ，对于使用 `Windows` 的，请切换至 `win` 分支；`minimal` 分支则去除了插件支持。

## 01-文件介绍
配置文件主要有多个文件集成，方便的维护和管理。
* `init.vim`是最主要的配置文件，`neovim`的配置文件都从这读取，而我个人只是用于集合下列几个配置文件，该文件内并无实际配置内容。
* `base.vim`是最基本的自带的配置，不包含插件相关内容。该文件包含了部分`neovim`自带的键位绑定和基础设置。
* `plugins.vim`是安装插件的列表，里面包括了所有用`vim-plug`安装的插件。可根据个人喜好启动和关闭某些插件。
* `plugin-settings.vim`是插件的具体配置文件，包含部分了通过`vim-plug`安装插件的配置和快捷键。
* `coc-settings.vim`是通过 `coc.nvim` 插件安装的 `coc` 插件配置文件，包括了插件的安装和配置内容。
* `functions.vim`包含了一些自定义的函数和调用键位。
* `snippets.vim`包含了部分代码片段。
* `envs.vim` 包括了一些依赖的软件的默认设置。

## 02-配置依赖

### 2.1-Node.js

这份配置使用 `coc.nvim` 提供的补全支持，而 `coc.nvim` 是由 `Node.js` 开发的，如果使用本配置的补全相关设置，请务必提前安装好 `Node.js` 。



## 03-插件安装和说明

### 3.1-`vim-plug`

插件管理器，用于下载 `vim` 插件。
