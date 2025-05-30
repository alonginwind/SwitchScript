#!/bin/sh
set -e

### Credit to the Authors at https://rentry.org/CFWGuides
### Script created by Fraxalotl
### Mod by huangqian8
### Mod by xiaobai

# -------------------------------------------

### Create a new folder for storing files
if [ -d SwitchSD ]; then
  rm -rf SwitchSD
fi
if [ -e description.txt ]; then
  rm -rf description.txt
fi
mkdir -p ./SwitchSD/atmosphere/hosts
mkdir -p ./SwitchSD/switch/.overlays
cd SwitchSD


### Fetch latest atmosphere from https://github.com/Atmosphere-NX/Atmosphere/releases/latest
curl -sL https://api.github.com/repos/Atmosphere-NX/Atmosphere/releases/latest \
  | jq '.name' \
  | xargs -I {} echo {} >> ../description.txt
curl -sL https://api.github.com/repos/Atmosphere-NX/Atmosphere/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*atmosphere[^"]*.zip' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o atmosphere.zip
if [ $? -ne 0 ]; then
    echo "atmosphere download\033[31m failed\033[0m."
else
    echo "atmosphere download\033[32m success\033[0m."
    unzip -oq atmosphere.zip
    rm atmosphere.zip
fi

### Fetch latest fusee.bin from https://github.com/Atmosphere-NX/Atmosphere/releases/latest
curl -sL https://api.github.com/repos/Atmosphere-NX/Atmosphere/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*fusee.bin"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o fusee.bin
if [ $? -ne 0 ]; then
    echo "fusee download\033[31m failed\033[0m."
else
    echo "fusee download\033[32m success\033[0m."
    mkdir -p ./bootloader/payloads
    mv fusee.bin ./bootloader/payloads
fi

#### 不再使用原本hekate+汉化文件的方式，直接使用EasyWorld大佬的汉化版本
curl -sL https://api.github.com/repos/easyworld/hekate/releases/latest \
  | jq '.name' \
  | xargs -I {} echo {} >> ../description.txt
curl -sL https://api.github.com/repos/easyworld/hekate/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*hekate_ctcaer[^"]*_sc.zip"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o hekate.zip
if [ $? -ne 0 ]; then
    echo "Hekate + Nyx download\033[31m failed\033[0m."
else
    echo "Hekate + Nyx download\033[32m success\033[0m."
    unzip -oq hekate.zip
    rm hekate.zip
fi

### Fetch latest Lockpick_RCM.bin from https://github.com/zdm65477730/Lockpick_RCMDecScots/releases/latest
curl -sL https://api.github.com/repos/zdm65477730/Lockpick_RCMDecScots/releases/latest \
  | jq '.tag_name' \
  | xargs -I {} echo Lockpick_RCM {} >> ../description.txt
curl -sL https://api.github.com/repos/zdm65477730/Lockpick_RCMDecScots/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*Lockpick_RCM.bin"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o Lockpick_RCM.bin
if [ $? -ne 0 ]; then
    echo "Lockpick_RCM download\033[31m failed\033[0m."
else
    echo "Lockpick_RCM download\033[32m success\033[0m."
    mv Lockpick_RCM.bin ./bootloader/payloads
fi

### Fetch lastest DBI from https://github.com/rashevskyv/dbi/releases/latest
curl -sL https://api.github.com/repos/rashevskyv/dbi/releases/latest \
  | jq '.name' \
  | xargs -I {} echo {} >> ../description.txt
curl -sL https://api.github.com/repos/rashevskyv/dbi/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*DBI.nro"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o DBI.nro
if [ $? -ne 0 ]; then
    echo "DBI download\033[31m failed\033[0m."
else
    echo "DBI download\033[32m success\033[0m."
    mkdir -p ./switch/DBI
    mv DBI.nro ./switch/DBI
fi

### Fetch dbi config
curl -sL https://api.github.com/repos/rashevskyv/dbi/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*dbi.config"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o dbi.config
if [ $? -ne 0 ]; then
    echo "dbi.config download\033[31m failed\033[0m."
else
    echo "dbi.config download\033[32m success\033[0m."
    mv dbi.config ./switch/DBI
fi

### Fetch lastest NX-Activity-Log from https://github.com/zdm65477730/NX-Activity-Log/releases/latest
curl -sL https://api.github.com/repos/zdm65477730/NX-Activity-Log/releases/latest \
  | jq '.tag_name' \
  | xargs -I {} echo NX-Activity-Log {} >> ../description.txt
curl -sL https://api.github.com/repos/zdm65477730/NX-Activity-Log/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*.nro"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o NX-Activity-Log.nro
if [ $? -ne 0 ]; then
    echo "NX-Activity-Log download\033[31m failed\033[0m."
else
    echo "NX-Activity-Log download\033[32m success\033[0m."
    mkdir -p ./switch/NX-Activity-Log
    mv NX-Activity-Log.nro ./switch/NX-Activity-Log
fi

### Fetch nx-ovlloader
curl -sL https://api.github.com/repos/zdm65477730/nx-ovlloader/releases/latest \
  | jq '.name' \
  | xargs -I {} echo {} >> ../description.txt
curl -sL https://api.github.com/repos/zdm65477730/nx-ovlloader/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*.zip"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o nx-ovlloader.zip
if [ $? -ne 0 ]; then
    echo "nx-ovlloader download\033[31m failed\033[0m."
else
    echo "nx-ovlloader download\033[32m success\033[0m."
    unzip -oq nx-ovlloader.zip
    rm nx-ovlloader.zip
fi

### Fetch Ultrahand-Overlay
curl -sL https://api.github.com/repos/zdm65477730/Ultrahand-Overlay/releases/latest \
  | jq '.name' \
  | xargs -I {} echo {} >> ../description.txt
curl -sL https://api.github.com/repos/zdm65477730/Ultrahand-Overlay/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*.zip"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o Ultrahand.zip
if [ $? -ne 0 ]; then
    echo "Ultrahand-Overlay download\033[31m failed\033[0m."
else
    echo "Ultrahand-Overlay download\033[32m success\033[0m."
    unzip -oq Ultrahand.zip
    rm Ultrahand.zip
fi

### Fetch ovl-sysmodules
curl -sL https://api.github.com/repos/zdm65477730/ovl-sysmodules/releases/latest \
  | jq '.name' \
  | xargs -I {} echo {} >> ../description.txt
curl -sL https://api.github.com/repos/zdm65477730/ovl-sysmodules/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*.zip"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o ovl-sysmodules.zip
if [ $? -ne 0 ]; then
    echo "ovlSysmodules download\033[31m failed\033[0m."
else
    echo "ovlSysmodules download\033[32m success\033[0m."
    unzip -oq ovl-sysmodules.zip
    rm ovl-sysmodules.zip
fi

### Fetch Status-Monitor-Overlay
curl -sL https://api.github.com/repos/zdm65477730/Status-Monitor-Overlay/releases/latest \
  | jq '.name' \
  | xargs -I {} echo {} >> ../description.txt
curl -sL https://api.github.com/repos/zdm65477730/Status-Monitor-Overlay/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*.zip"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o StatusMonitor.zip
if [ $? -ne 0 ]; then
    echo "Status-Monitor-Overlay download\033[31m failed\033[0m."
else
    echo "Status-Monitor-Overlay download\033[32m success\033[0m."
    unzip -oq StatusMonitor.zip
    rm StatusMonitor.zip
fi

### Fetch SaltySD
curl -sL https://api.github.com/repos/masagrator/SaltyNX/releases/latest \
  | jq '.name' \
  | xargs -I {} echo {} >> ../description.txt
curl -sL https://api.github.com/repos/masagrator/SaltyNX/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*.zip"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o SaltySD.zip
if [ $? -ne 0 ]; then
    echo "SaltySD download\033[31m failed\033[0m."
else
    echo "SaltySD download\033[32m success\033[0m."
    unzip -oq SaltySD.zip
    rm SaltySD.zip
fi

### Fetch sys-clk
curl -sL https://api.github.com/repos/zdm65477730/sys-clk/releases/latest \
  | jq '.name' \
  | xargs -I {} echo {} >> ../description.txt
curl -sL https://api.github.com/repos/zdm65477730/sys-clk/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*.zip"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o sys-clk.zip
if [ $? -ne 0 ]; then
    echo "sys-clk download\033[31m failed\033[0m."
else
    echo "sys-clk download\033[32m success\033[0m."
    unzip -oq sys-clk.zip
    rm sys-clk.zip
fi

### Fetch sys-patch
curl -sL https://api.github.com/repos/impeeza/sys-patch/releases/latest \
  | jq '.tag_name' \
  | xargs -I {} echo sys-patch {} >> ../description.txt
curl -sL https://api.github.com/repos/impeeza/sys-patch/releases/latest \
  | grep -oP '"browser_download_url": "\Khttps://[^"]*sys-patch[^"]*.zip"' \
  | sed 's/"//g' \
  | xargs -I {} curl -sL {} -o sys-patch.zip
if [ $? -ne 0 ]; then
    echo "sys-patch download\033[31m failed\033[0m."
else
    echo "sys-patch download\033[32m success\033[0m."
    unzip -oq sys-patch.zip
    rm sys-patch.zip
fi


### Rename hekate_ctcaer_*.bin to payload.bin
find . -name "*hekate_ctcaer*" -exec mv {} payload.bin \;
if [ $? -ne 0 ]; then
    echo "Rename hekate_ctcaer_*.bin to payload.bin\033[31m failed\033[0m."
else
    echo "Rename hekate_ctcaer_*.bin to payload.bin\033[32m success\033[0m."
fi

### Write hekate_ipl.ini in /bootloader/
cat > ./bootloader/hekate_ipl.ini << ENDOFFILE
[config]
autoboot=0
autoboot_list=0
bootwait=2
backlight=100
noticker=0
autohosoff=1
autonogc=1
updater2p=1
bootprotect=0
[虚拟系统]
pkg3=atmosphere/package3
emummcforce=1
icon=bootloader/res/icon_emummc.bmp
id=emummc
[正版系统]
pkg3=atmosphere/package3
emummc_force_disable=1
stock=1
icon=bootloader/res/icon_normal.bmp
id=normal
ENDOFFILE
if [ $? -ne 0 ]; then
    echo "Writing hekate_ipl.ini in ./bootloader/ directory\033[31m failed\033[0m."
else
    echo "Writing hekate_ipl.ini in ./bootloader/ directory\033[32m success\033[0m."
fi

### write exosphere.ini in root of SD Card
cat > ./exosphere.ini << ENDOFFILE
[exosphere]
debugmode=1
debugmode_user=0
disable_user_exception_handlers=0
enable_user_pmu_access=0
; 控制真实系统启用隐身模式。
blank_prodinfo_sysmmc=0
; 控制虚拟系统启用隐身模式。
blank_prodinfo_emummc=1
allow_writing_to_cal_sysmmc=0
log_port=0
log_baud_rate=115200
log_inverted=0
ENDOFFILE
if [ $? -ne 0 ]; then
    echo "Writing exosphere.ini in root of SD card\033[31m failed\033[0m."
else
    echo "Writing exosphere.ini in root of SD card\033[32m success\033[0m."
fi

### Write emummc.txt in /atmosphere/hosts
cat > ./atmosphere/hosts/emummc.txt << ENDOFFILE
# 屏蔽任天堂服务器
127.0.0.1 *nintendo.*
127.0.0.1 *nintendo-europe.com
127.0.0.1 *nintendowifi.net
127.0.0.1 *nintendods.cz
127.0.0.1 *nintendoswitch.*
127.0.0.1 ads.doubleclick.net
127.0.0.1 s.ytimg.com
127.0.0.1 ad.youtube.com
127.0.0.1 ads.youtube.com
127.0.0.1 clients1.google.com
207.246.121.77 *conntest.nintendowifi.net
207.246.121.77 *ctest.cdn.nintendo.net
69.25.139.140 *ctest.cdn.n.nintendoswitch.cn
95.216.149.205 *conntest.nintendowifi.net
95.216.149.205 *ctest.cdn.nintendo.net
95.216.149.205 *90dns.test
ENDOFFILE
#cp ./atmosphere/hosts/emummc.txt ./atmosphere/hosts/sysmmc.txt
if [ $? -ne 0 ]; then
    echo "Writing emummc.txt and sysmmc.txt in ./atmosphere/hosts\033[31m failed\033[0m."
else
    echo "Writing emummc.txt and sysmmc.txt in ./atmosphere/hosts\033[32m success\033[0m."
fi

### Write override_config.ini in /atmosphere/config
cat > ./atmosphere/config/override_config.ini << ENDOFFILE
[hbl_config]
program_id_0=010000000000100D
override_address_space=39_bit
override_key_0=!R
override_any_app=true
override_any_app_key=R
override_any_app_address_space=39_bit
path=atmosphere/hbl.nsp
ENDOFFILE
if [ $? -ne 0 ]; then
    echo "Writing override_config.ini in ./atmosphere/config\033[31m failed\033[0m."
else
    echo "Writing override_config.ini in ./atmosphere/config\033[32m success\033[0m."
fi

### Write stratosphere.ini in /atmosphere/config
cat > ./atmosphere/config/stratosphere.ini << ENDOFFILE
[stratosphere]
nogc = 1
ENDOFFILE
if [ $? -ne 0 ]; then
    echo "Writing stratosphere.ini in ./atmosphere/config\033[31m failed\033[0m."
else
    echo "Writing stratosphere.ini in ./atmosphere/config\033[32m success\033[0m."
fi

### Write system_settings.ini in /atmosphere/config
cat > ./atmosphere/config/system_settings.ini << ENDOFFILE
[eupld]
; 禁用将错误报告上传到任天堂
upload_enabled = u8!0x0
[usb]
; 开启USB3.0，尾数改为0是关闭
usb30_force_enabled = u8!0x1
[ro]
; 控制 RO 是否应简化其对 NRO 的验证。
; （注意：这通常不是必需的，可以使用 IPS 补丁。
ease_nro_restriction = u8!0x1
[atmosphere]
; 如果大气崩溃，10秒后自动重启
; 1秒=1000毫秒，转换16进制
fatal_auto_reboot_interval = u64!0x2710
; 使电源菜单的“重新启动”按钮重新启动到payload
; 设置"normal"正常重启l 设置"rcm"重启RCM，
power_menu_reboot_function = str!payload
; 是否自动开启所有金手指。0=关。1=开。
dmnt_cheats_enabled_by_default = u8!0x0
; 如果你希望大气记住你上次金手指状态，请删除下方；号
dmnt_always_save_cheat_toggles = u8!0x1
; 启动90DNS与任天堂服务器屏蔽
enable_dns_mitm = u8!0x1
add_defaults_to_dns_hosts = u8!0x1
; 是否将蓝牙配对数据库用与虚拟系统
enable_external_bluetooth_db = u8!0x1
ENDOFFILE
if [ $? -ne 0 ]; then
    echo "Writing system_settings.ini in ./atmosphere/config\033[31m failed\033[0m."
else
    echo "Writing system_settings.ini in ./atmosphere/config\033[32m success\033[0m."
fi

### Delete unneeded files
rm -f switch/haze.nro
rm -f switch/reboot_to_payload.nro
rm -rf ./config/Tesla-Menu


### End
cp ../description.txt ./
find ./atmosphere/ * -exec touch -t 202401010000 {} \;

# -------------------------------------------

echo ""
echo "\033[32mYour Switch SD card is prepared!\033[0m"
