# Archcraft OS Structure Documentation

Archcraft is a custom Arch-based Linux distribution focused on aesthetics and customization. This document outlines its main components and structure.

## 1. Base System

### Kernel
- **Linux Kernel**: The core of the operating system
- Manages hardware resources and provides essential services

### Init System
- **systemd**: Handles the boot process and manages system services
- Provides logging, device management, and other core functionalities

### Core Utilities
- **GNU Coreutils**: Essential command-line tools
- Includes utilities like `ls`, `cp`, `mv`, `rm`, etc.

## 2. Package Management

### Pacman
- Arch Linux's package manager
- Handles installation, upgrading, and removal of software packages
- Uses `.pkg.tar.zst` compressed package format

## 3. Desktop Environment (DE) / Window Manager (WM)

### Primary: Openbox
- Lightweight, highly configurable stacking window manager
- Configured via XML files (typically `~/.config/openbox/rc.xml`)

### Alternative WMs (optional)
- i3: Tiling window manager
- bspwm: Binary space partitioning window manager
- Others may be available or installable

## 4. Display Server

### X.Org Server
- Traditional display server for Linux
- Handles drawing and moving windows, and mouse/keyboard input

### Wayland (optional)
- Modern display server protocol
- May be available but not primary in Archcraft due to Openbox compatibility

## 5. Display Manager

### LightDM
- Lightweight display manager
- Handles user login and session management
- Can be themed for aesthetic customization

## 6. Panels and Docks

### Polybar
- Highly customizable status bar
- Displays system information, workspace status, and more
- Configured via text files, typically in `~/.config/polybar/`

### Plank
- Lightweight application dock
- Provides quick access to pinned applications

## 7. Application Launcher

### Rofi
- Versatile application launcher and window switcher
- Can be extended for various functions (e.g., power menu, network manager)
- Highly customizable appearance

## 8. Compositor

### Picom
- Standalone compositor for Xorg
- Provides visual effects like transparency, shadows, and animations
- Configured via `~/.config/picom.conf`

## 9. File Manager

### Thunar
- Lightweight file manager from Xfce
- Provides basic and advanced file management features
- Supports plugins for extended functionality

## 10. Terminal Emulator

### Alacritty
- GPU-accelerated terminal emulator
- Configured via YAML file (`~/.config/alacritty/alacritty.yml`)
- Known for its performance and customizability

## 11. Theming and Customization

### GTK Theming
- Controls the appearance of GTK applications
- Themes located in `/usr/share/themes/` or `~/.themes/`

### Qt Theming
- Controls the appearance of Qt applications
- Often configured to match GTK themes for consistency

### Icon Themes
- Customizes application and file type icons
- Located in `/usr/share/icons/` or `~/.icons/`

### Cursor Themes
- Changes the appearance of the mouse cursor
- Located in `/usr/share/icons/` or `~/.icons/`

### Openbox Themes
- Controls the appearance of window decorations
- Located in `/usr/share/themes/` or `~/.themes/`

## 12. Networking

### NetworkManager
- Handles network connections (both wired and wireless)
- Provides a CLI (`nmcli`) and often integrated with GUI tools

## 13. Audio

### PulseAudio
- Sound server that handles audio routing
- Provides volume control and audio device management

### ALSA (Advanced Linux Sound Architecture)
- Kernel component for sound card drivers
- PulseAudio typically runs on top of ALSA

## 14. Power Management

### ACPI Tools
- Handles power events, battery monitoring, and thermal management
- Includes utilities like `acpid` for event handling

## 15. Bluetooth

### BlueZ
- Official Linux Bluetooth protocol stack
- Provides Bluetooth functionality and management tools

## 16. Archcraft-specific Tools

- Custom scripts for system management and customization
- Often located in `/usr/local/bin/` or distributed across the system
- May include GUI tools for easier system configuration

## 17. Default Applications

- **Web Browser**: Often Firefox or a lightweight alternative
- **Text Editor**: Typically a lightweight editor like Geany
- **Image Viewer**: A simple, fast image viewer
- **Media Player**: Usually a versatile player like VLC or mpv

## Customization and Configuration

One of Archcraft's strengths is its high degree of customizability. Users can:

- Modify window manager configurations
- Create or edit themes
- Customize keybindings
- Add or remove software components
- Adjust system behavior through various configuration files

Most user-specific configurations are stored in the home directory, typically in hidden folders (e.g., `~/.config/`).

---

This structure provides a flexible, lightweight, and highly customizable operating system. Users can modify or replace almost any component to suit their needs and preferences.
