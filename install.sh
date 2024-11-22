#!/usr/bin/env bash
# Install script - for adw-gtk3-catppuccin-frappe

echo "adw-gtk3-catppuccin-frappe - install script"

# Check if root, and exit if not
if [ "$EUID" -ne 0 ] then
  echo "Please try again as root"
  exit 1
fi

# Check if PWD is correct, and exit if not
if [ -nd "./adw-gtk3-catppuccin-frappe" ] then
  echo "PWD isn't correct. Try again with correct PWD."
  exit 1
fi

# Check if theme is already installed, and delete it if yes
if [ -d "/usr/share/themes/adw-gtk3-catppuccin-frappe" ] then
  echo "Deleting old theme..."
  rm -rf "/usr/share/themes/adw-gtk3-catppuccin-frappe"
fi

# Install new theme
echo "Installing new theme..."
cp -r ./adw-gtk3-catppuccin-frappe /usr/share/themes

# Exit with exit code of cp command
exit $?
