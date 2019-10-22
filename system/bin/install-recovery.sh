#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:10460460:788fe1a237538af6bddfbc92c8ba7621e825c138; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:9458984:f9fa25313f465db97e895a7d21a64a9cc9029423 EMMC:/dev/block/bootdevice/by-name/recovery 788fe1a237538af6bddfbc92c8ba7621e825c138 10460460 f9fa25313f465db97e895a7d21a64a9cc9029423:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
