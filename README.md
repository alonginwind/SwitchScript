# 大气层个人整合包生成脚本

- 此项目脚本fork自[Zhuwenxue2002/SwitchScript: 大气层个人整合包生成脚本 (github.com)](https://github.com/Zhuwenxue2002/SwitchScript)

- 整合包每天四点会自动生成并发布

- 使用linux系统运行则需要jq依赖，可fork到自己仓库重新开发

## 功能如下

- 下载最新
  - 大气层三件套
    - [x] `Atmosphere + Fusee` [From Here](https://github.com/Atmosphere-NX/Atmosphere/releases/latest)
    - [x] `EasyWrold汉化整合版` [From Here](https://github.com/easyworld/hekate/releases/latest)
  - Payload插件
    - [x] 主机系统的密钥提取工具 `Lockpick_RCM` [From Here](https://github.com/Kofysh/Lockpick_RCM/releases/latest)
  - Nro插件
    - [x] 游戏安装，存档管理和文件传输工具 `DBI` [From Here](https://github.com/rashevskyv/dbi/releases/latest)
    - [x] 离线账号关联工具 `linkalho` [From Here](https://www.tekqart.com/forum.php?mod=viewthread&tid=370855&highlight=linkalho&_dsign=f569c76c)
  - Tesla
    - [x] 加载器 `nx-ovlloader` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 初始菜单 `Tesla-Menu` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
  - Ovl插件
    - [x] 系统模块 `ovl-sysmodules` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 系统模块 `emuiibo` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 系统超频  `sys-clk` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 系统监视 `StatusMonitor` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 系统补丁 `sys-patch` [From Here](https://github.com/impeeza/sys-patch/releases/latest)
- 文件操作：
  - [x] 移动 `fusee.bin` 至 `bootloader/payloads` 文件夹
  - [x] 将 `hekate_ctcaer_*.bin` 重命名为 `payload.bin`
  - [x] 在 `bootloader` 文件夹中创建 `hekate_ipl.ini`
  - [x] 在根目录中创建 `exosphere.ini`
  - [x] 在 `atmosphere/hosts` 文件夹中创建 `emummc.txt`
  - [x] 在 `atmosphere/config` 文件夹中创建 `override_config.ini`
  - [x] 在 `atmosphere/config` 文件夹中创建 `stratosphere.ini`
  - [x] 在 `atmosphere/config` 文件夹中创建 `system_settings.ini`
  - [x] 删除 `switch` 文件夹中 `haze.nro`
  - [x] 删除 `switch` 文件夹中 `reboot_to_hekate.nro`
  - [x] 删除 `switch` 文件夹中 `reboot_to_payload.nro`
  - [x] 删除 `config` 文件夹中 `sys-clk` 的文件夹
  - [x] 删除 `config` 文件夹中 `Tesla-Menu` 的文件夹
