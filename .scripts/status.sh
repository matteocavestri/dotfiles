#!/bin/bash

check_and_run_neofetch() {
  if command -v neofetch &> /dev/null; then
    echo "Running neofetch to display system information:"
    echo ""
    neofetch
  else
    echo "neofetch is not installed."
  fi
}

check_and_run_podman() {
  if command -v podman &> /dev/null; then
    echo "Running podman ps to list containers:"
    echo ""
    podman ps
  else
    echo "podman is not installed."
  fi
}

check_and_run_docker() {
  if command -v docker &> /dev/null; then
    echo "Running docker ps to list containers:"
    echo ""
    docker ps
  else
    echo "docker is not installed."
  fi
}

check_and_run_distrobox() {
  if command -v distrobox &> /dev/null; then
    echo "Running distrobox list to list active distroboxes:"
    echo ""
    distrobox list
  else
    echo "distrobox is not installed."
  fi
}

check_and_run_neofetch
echo ""
check_and_run_podman
echo ""
check_and_run_docker
echo ""
check_and_run_distrobox

