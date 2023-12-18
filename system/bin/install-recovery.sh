#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:8089600:f21505548cfdb95ff431b0a2513a8e6a4d5e632e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p9:7301120:aaa7354b235d4f28487a21da78bc69e5f914fb7a EMMC:/dev/block/mmcblk0p10 f21505548cfdb95ff431b0a2513a8e6a4d5e632e 8089600 aaa7354b235d4f28487a21da78bc69e5f914fb7a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
