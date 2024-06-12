# 大气层个人整合包生成脚本

- 此项目脚本fork自[huangqian8/SwitchScript: 大气层个人整合包生成脚本 (github.com)](https://github.com/huangqian8/SwitchScript)，由xiaobai进行精简

- 整合包明天四点会自动生成并发布，萌新玩家可直接下载使用

- 使用linu系统运行则需要jq依赖，可fork到自己仓库重新开发

## 功能如下

- 下载最新
  - 大气层三件套
    - [x] `Atmosphere + Fusee` [From Here](https://github.com/Atmosphere-NX/Atmosphere/releases/latest)
    - [ ] `Hekate + Nyx` [From Here](https://github.com/CTCaer/hekate/releases/latest)
      - [ ] `Hekate + Nyx 简体汉化版` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] `EasyWrold汉化整合版`[From Here](https://github.com/easyworld/hekate/releases)
    - [x] `SigPatches` [From Here](https://sigmapatches.su/)
  - Payload插件
    - [x] 主机系统的密钥提取工具 `Lockpick_RCM` [From Here](https://github.com/Decscots/Lockpick_RCM/releases/latest)
    - [x] Hekate下的文件管理工具 `TegraExplorer` [From Here](https://github.com/zdm65477730/TegraExplorer/releases/latest)
    - [x] Hekate下删除主题和关闭插件自动启动 `CommonProblemResolver` [From Here](https://github.com/zdm65477730/CommonProblemResolver/releases/latest)
  - Nro插件
    - [x] 联网检测是否屏蔽任天堂服务器 `Switch_90DNS_tester.nro` [From Here](https://github.com/meganukebmp/Switch_90DNS_tester/releases/latest)
    - [ ] 游戏存档管理工具 `Checkpoint` [From Here](https://github.com/BernardoGiordano/Checkpoint/releases/latest)
    - [x] 游戏安装，存档管理和文件传输工具 `DBI` [From Here](https://github.com/rashevskyv/dbi/releases/latest)
    - [x] 游戏安装和文件传输工具 `Awoo Installer` [From Here](https://github.com/dragonflylee/Awoo-Installer/releases/latest)
    - [x] 深海工具箱 `Hekate-toolbox` [From Here](https://github.com/WerWolv/Hekate-Toolbox/releases/latest)
    - [x] 游戏游玩时间记录工具 `NX-Activity-Log` [From Here](https://github.com/zdm65477730/NX-Activity-Log/releases/latest)
    - [ ] 主题安装工具 `NXThemesInstaller` [From Here](https://github.com/exelix11/SwitchThemeInjector/releases/latest)
    - [x] 游戏存档管理工具 `JKSV` [From Here](https://github.com/J-D-K/JKSV/releases/latest)
    - [x] 系统切换工具 `tencent-switcher-gui` [From Here](https://github.com/CaiMiao/Tencent-switcher-GUI/releases/latest)
    - [ ] 金手指工具 `Breeze` [From Here](https://github.com/tomvita/Breeze-Beta/releases/latest)
    - [ ] SigPatches更新工具 `Sigpatch-Updater` [From Here](https://github.com/ITotalJustice/sigpatch-updater/releases/latest)
    - [ ] 大气层三件套更新工具 `AtmoPackUpdater` [From Here](https://github.com/PoloNX/AtmoPackUpdater/releases/latest)
    - [ ] 时间调整工具 `SwitchTime` [From Here](https://github.com/3096/switch-time/releases/latest)
    - [ ] 极限超频插件 `Atmosphere-OC-Suite` [From Here](https://github.com/hanai3Bi/Switch-OC-Suite/releases/latest)
    - [x] 多工具合一任天堂Switch更新器 `aio-switch-updater` [From Here](https://github.com/HamletDuFromage/aio-switch-updater/releases/latest)
    - [x] 第三方B站客户端 `wiliwili` [From Here](https://github.com/xfangfang/wiliwili/releases/latest)
    - [x] Mod下载器 `SimpleModDownloader` [From Here](https://github.com/PoloNX/SimpleModDownloader/releases/latest)
    - [x] Mod管理器`SimpleModManager`[From Here](https://github.com/nadrino/SimpleModManager)
    - [ ] Jellyfin客户端 `Switchfin` [From Here](https://github.com/dragonflylee/switchfin/releases/latest)
    - [x] 串流工具 `Moonlight` [From Here](https://github.com/XITRIX/Moonlight-Switch/releases/latest)
    - [x] 文件管理工具 `NX-Shell`[From Here](https://github.com/joel16/NX-Shell)
  - 补丁
    - [ ] 主题破解 `theme-patches` [From Here](https://github.com/exelix11/theme-patches)
  - Tesla
    - [x] 加载器 `nx-ovlloader` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 初始菜单 `Tesla-Menu` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
  - Ovl插件
    - [x] 金手指工具 `EdiZon` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 系统模块 `ovl-sysmodules` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 系统监视 `StatusMonitor` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 系统超频 `sys-clk` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 掌机底座模式切换 `ReverseNX-RT` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 局域网联机 `ldn_mitm` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 游戏捕获到pc插件`sysdvr`  [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 虚拟Amiibo `emuiibo` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 时间同步 `QuickNTP` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [ ] 色彩调整 `Fizeau` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [ ] 金手指工具 `Zing` [From Here](https://www.tekqart.com/thread-222735-1-1.html)
    - [x] 后台音乐 `sys-tune` [From Here](https://www.tekqart.com/thread-370954-1-1.html)
    - [x] 系统补丁 `sys-patch` [From Here](https://www.tekqart.com/thread-370955-1-1.html)
- 文件操作：
  - [x] 移动 `fusee.bin` 至 `bootloader/payloads` 文件夹
  - [x] 将 `hekate_ctcaer_*.bin` 重命名为 `payload.bin`
  - [x] 在 `bootloader` 文件夹中创建 `hekate_ipl.ini`
  - [x] 在根目录中创建 `exosphere.ini`
  - [x] 在 `atmosphere/hosts` 文件夹中创建 `emummc.txt` 和 `sysmmc.txt`
  - [x] 在根目录中创建 `boot.ini`
  - [x] 在 `atmosphere/config` 文件夹中创建 `override_config.ini`
  - [x] 在 `atmosphere/config` 文件夹中创建 `system_settings.ini`
  - [x] 删除 `switch` 文件夹中 `haze.nro`
  - [x] 删除 `switch` 文件夹中 `reboot_to_hekate.nro`
  - [x] 删除 `switch` 文件夹中 `reboot_to_payload.nro`

## 精简说明

- 更换switchScript的GithubToken和手动触发，现在可以直接fork后手动触发生成整合包
- 开启dmnt_always_save_cheat_toggles = u8!0x1 让大气层帮忙记住金手指状态
- 不再使用原版hekate+汉化文件的方式，直接使用EasyWorld大佬整合
- 替换90dns原版拉取地址
- 替换NX-Activity-Log原版拉取地址
- 精简tencent-switcher-gui插件（使用zdm大佬的ovl插件ovl-sysmodules即可完成国行 <-> 国际的切换）
- 精简Jellyfin客户端（真把switch当电视机顶盒用啊）
- 精简主题安装工具（我不喜欢用别的主题，听说还会影响机器性能）
- 精简主题破解补丁（理由同上）
- 增加nro插件Mod管理器
- 增加nro插件NX-Shell（可以不用连接电脑去删文件了！！！）
- 增加ovl插件sysDvr

## 更新日志

- 2024-06-12：fork脚本建立项目，由小白二次开发

# Tesla

huangqian8大佬使用的Tesla方案是zdm大佬的tesla方案终极版

好用是真的好用，但是我联系不上zdm大佬要他的github的发行链接

所以只能在论坛上下载，然后手动push到github上，属于是手动更更新了

*当然，这个解决方法也是huangqian8大佬想出来的嘿嘿*

[品技论坛（上不去得挂梯子）](https://www.tekqart.com/thread-222735-1-1.html?_dsign=c72d4895)

- **QuickNTP**
- **sysdvr-overlay**(新增)
- **ldn_mitm**
- **Status-Monitor-Overlay**
- **ovl-sysmodules**
- **ReverseNX-RT和FPSLocker**
- **emuiibo**
- **EdiZon-SE和EdiZon-Overlay**
- **sys-clk**

# sigpatch + sys patch

[AK478BB/Sigpatches: 大气层签名补丁Sigpatches (github.com)](https://github.com/AK478BB/Sigpatches)

A大曾经讲过从1.7.0开始，sigpatch签名补丁的三种解决方案

此整合包采用了前两种方案：

- 大气层三件套：atmosphere+hekate+sigpatch，且通过Hekate的fss0引导的真实（破解）系统，虚拟（破解）系统的KIP是通过bootloader/patch.ini实现
- 大气层四件套：atmosphere+hekate+sys-patch+tesla，Tesla用于调用sys-patch的菜单通过sys-patch的插件签名补丁的方法

这两种方案同时存在，确保了玩家一定能正常运行游戏

*看不懂没关系，不需要知道原理* 😊

# 关于超频

我明白很多萌新玩家对于超频这个词汇感到陌生和恐慌，但其实稍微了解就明白其中原理了

这个up讲的就很清楚

https://www.bilibili.com/video/BV1V7421Z71A/?spm_id_from=333.337.search-card.all.click

在这里我做一个总结：

**switch系统本身对机器的频率限制非常非常大，而普通超频就相当于是解开这个性能墙，对机器本身损害为零，只会影响续航**

很多人玩串流和ppsspp模拟器，都推荐直接刷了安卓和Ubuntu运行，我猜底层优化是其中一个原因，更重要的一个原因是因为这两个系统没有性能墙，直接动态释放了所有的性能

极限超频到一定程度才是传统意义上的超频，是对原有的硬件做出一定的破格提升

此整合包仅仅整合了普通超频，所以萌新玩家直接拉满玩，都没什么问题

配合FPSLocker插件，实现大部分游戏掌机60帧率不成问题（代价是续航减半）😓

# 关于moonlight串流

上面也提到了，switch本身系统玩串流不如安卓和Ubuntu，但原因之一还是性能释放的问题，*串流对网络，pc性能都有很大影响*

现在moonlight-switch也日益晚上，如果萌新不想折腾安装其他系统的话，大可尝试一下

[LizardByte/Sunshine: Self-hosted game stream host for Moonlight. (github.com)](https://github.com/LizardByte/Sunshine)

sunshine的安装也都是一键式安装，优化也越来越好了

打开普通超频，把三大件拉满，谁不想尝试在switch上面玩以下原神呢？

---

# 关于PPSSPP

psp中不乏有很多好游戏，例如：战神、啪嗒砰、乐克乐克、还有switch没有复刻的空之轨迹三部曲

[ppspp ns版本1.5.4Nintendo Switch 综合讨论区 - Powered by Discuz! (tekqart.com)](https://www.tekqart.com/forum.php?mod=viewthread&tid=359053&highlight=ppspp&_dsign=ce3fd0b2)

这个大佬给提供了1.15.4版本，应该是玩家接受更新版本的ppsspp模拟器

实测普通超频拉满的情况下，战神开三倍大部分场景也可以满帧运行

这已经是一个及格的答卷了，也推荐大家去尝试一下