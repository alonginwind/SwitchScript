# 大气层个人整合包生成脚本
- 整合包每天四点会自动生成并发布
- 使用linux系统运行则需要jq依赖，可fork到自己仓库重新开发

## 功能如下

- 下载最新
  - 大气层三件套
    - [x] `Atmosphere + Fusee` [From Here](https://github.com/zdm65477730/Atmosphere/releases/latest)
    - [x] `nx-hbloader` [From Here](https://github.com/switchbrew/nx-hbloader/releases/latest)
    - [x] `nx-hbmenu` [From Here](https://github.com/switchbrew/nx-hbmenu/releases/latest)
    - [x] `EasyWrold汉化整合版` [From Here](https://github.com/easyworld/hekate/releases/latest)
  - Nro插件
    - [x] 游戏安装，存档管理和文件传输工具 `DBI` [From Here](https://github.com/rashevskyv/DBIPatcher/releases/latest)
    - [x] 游玩时间记录工具 `NX-Activity-Log` [From Here](https://github.com/zdm65477730/NX-Activity-Log/releases/latest)
  - Tesla
    - [x] 加载器 `nx-ovlloader` [From Here](https://github.com/zdm65477730/nx-ovlloader/releases/latest)
    - [x] 初始菜单 `Ultrahand-Overlay` [From Here](https://github.com/zdm65477730/Ultrahand-Overlay/releases/latest)
  - Ovl插件
    - [x] 系统监视 `Status-Monitor-Overlay` [From Here](https://github.com/zdm65477730/Status-Monitor-Overlay/releases)
    - [x] 系统监视 `SaltySD` [From Here](https://github.com/masagrator/SaltyNX/releases/latest)
    - [x] 系统超频  `sys-clk` [From Here](https://github.com/zdm65477730/sys-clk/releases/latest)
- 文件操作：
  - [x] 移动 `fusee.bin` 至 `bootloader/payloads` 文件夹
  - [x] 将 `hekate_ctcaer_*.bin` 重命名为 `payload.bin`
  - [x] 在 `bootloader` 文件夹中创建 `hekate_ipl.ini`
  - [x] 在 `atmosphere/config` 文件夹中创建 `exosphere.ini`
  - [x] 在 `atmosphere/hosts` 文件夹中创建 `emummc.txt`
  - [x] 在 `atmosphere/config` 文件夹中创建 `override_config.ini`
  - [x] 在 `atmosphere/config` 文件夹中创建 `stratosphere.ini`
  - [x] 在 `atmosphere/config` 文件夹中创建 `system_settings.ini`
  - [x] 删除 `switch` 文件夹中 `haze.nro`
  - [x] 删除 `switch` 文件夹中 `reboot_to_payload.nro`
  - [x] 删除 `config/Ultrahand` 文件夹中 `themes` 的文件夹
