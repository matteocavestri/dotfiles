#!/bin/bash

echo ""
echo "Updating your system..."
echo ""

distro=$(cat /etc/*release | grep ^ID= | cut -d'=' -f2)
distro=${distro//\"/}

update_debian() {
  sudo apt update && sudo apt upgrade -y
}

update_redhat() {
  sudo dnf update -y
}

update_arch() {
  sudo pacman -Syu
}

update_flatpak() {
  if which flatpak >/dev/null 2>&1; then
    echo ""
    echo "Updating Flatpak packages..."
    echo ""
    flatpak update -y
  else
    echo ""
    echo "Flatpak is not installed."
    echo ""
  fi
}

update_snap() {
  if which snap >/dev/null 2>&1; then
    echo ""
    echo "Updating Snap packages..."
    echo ""
    flatpak update -y
  else
    echo ""
    echo "Snap is not installed."
    echo ""
  fi
}

update_distrobox_containers() {
  if which distrobox >/dev/null 2>&1; then
    echo ""
    echo "Updating all Distrobox containers..."
    echo ""
    distrobox upgrade --all
  else
    echo ""
    echo "Distrobox is not installed."
    echo ""
  fi
}

case $distro in
  "ubuntu" | "debian")
    update_debian
    ;;
  "fedora" | "centos" | "rhel")
    update_redhat
    ;;
  "arch")
    update_arch
    ;;
  *)
    echo "Distro not supported: $distro"
    ;;
esac

update_flatpak
update_snap
update_distrobox_containers
