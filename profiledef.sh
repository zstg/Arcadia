#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="arcadia"
iso_label="ARCADIA_$(date +%Y%m)"
iso_publisher="VIT-LUG <https://vitlug.tech>"
iso_application="Arch based Linux Distribution"
iso_version="$(date +%Y.%m.%d)"
install_dir="arcadia"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/arcadia-after"]="0:0:755"
  ["/usr/local/bin/arcadia-before"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/etc/shadow"]="0:0:0400"
  ["/etc/gshadow"]="0:0:0400"
  ["/etc/xdg/autostart/calamares.desktop"]="0:0:755"
  # ["/etc/skel/Desktop/calamares.desktop"]="0:0:755"
)
