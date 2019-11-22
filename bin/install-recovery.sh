#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:10375168:13c3e6c4e5a7c48f1abff3ea2c89695bfecb944b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:9613312:8e3ba3b143144a12f262542dde01bf512fa04a46 EMMC:/dev/block/bootdevice/by-name/recovery 13c3e6c4e5a7c48f1abff3ea2c89695bfecb944b 10375168 8e3ba3b143144a12f262542dde01bf512fa04a46:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
