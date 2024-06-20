#!/usr/bin/env bash
# Install script.

# Check if root
if [ "$EUID" -ne 0 ]
  then echo "Please try again as root"
  exit 1
fi

# Copy the theme
cp -r ./adw-gtk3-catppuccin-frappe /usr/share/themes

# Exit with exit code of cp command
exit $?
