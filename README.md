# NuxTool 3.0

> Bilingual CLI toolkit (pt-br / en) with useful shortcuts for everyday Linux administration on Debian/Ubuntu-based distributions.

[![Bash](https://img.shields.io/badge/language-Bash-green)](https://www.gnu.org/software/bash/)
[![Platform](https://img.shields.io/badge/platform-Debian%20%7C%20Ubuntu-orange)](https://ubuntu.com)
[![License](https://img.shields.io/badge/license-see%20LICENSE-blue)](LICENSE)

---

## Modules

| Module | Description |
|---|---|
| `install` | Install software packages organized by category |
| `update` | Fetch updates and apply them (including security patches) |
| `update-dist` | Full distribution upgrade (`full-upgrade`) with confirmation prompt |
| `correct` | Repair broken packages, reconfigure dpkg, fix dependencies |
| `info` | Display hardware, network, memory, disk, users and process info |
| `bkp` | Copy a file or folder to another location with path validation |

---

## Requirements

- Debian 11+ or Ubuntu 22.04+ (or any compatible derivative)
- Bash 4+
- `sudo` configured for the current user
- Internet connection for installations
- `snapd` installed for Snap-based packages (VS Code, Discord, Sublime, etc.)

---

## Installation

```bash
git clone https://github.com/gmasson/Nuxtool.git
cd Nuxtool
chmod +x nuxtool.sh
```

---

## Usage

```bash
./nuxtool.sh
```

After launching, type `help` to list all modules or `exit` / `quit` to close.

> **Note:** NuxTool must be run from its own directory or via an absolute path because it resolves module paths relative to `${BASH_SOURCE[0]}`.

### Navigation

```text
> help               # list all modules
> install            # open the install submenu
>> dev               # install developer tools
>> back              # return to main menu

> info
>> cpu               # show processor info
>> net               # show network interfaces
>> back

> update             # update package list and install upgrades
> update-dist        # full distribution upgrade (with confirmation)
> correct            # repair broken packages
> bkp                # copy a file or folder
> exit               # quit NuxTool
```

---

## Install Categories

### `studio` — Audio & Video Editing
| Package | Description |
|---|---|
| GIMP | Image editor |
| Inkscape | Vector graphics editor |
| Blender | 3D modeling and animation |
| Audacity | Audio editor |
| OpenShot | Video editor |
| Audacious | Music player |
| VLC | Media player |
| Avidemux | Video processing |
| Cheese | Webcam app |

### `game` — Games & Emulators
| Package | Description |
|---|---|
| Java (default-jre) | Required for Java-based games |
| Steam | Gaming platform (i386 enabled) |
| Wine + Lutris | Run Windows games on Linux |
| DreamChess | 3D chess game |
| SNES9X | Super Nintendo emulator |
| Stella | Atari 2600 emulator |
| PCSX2 | PS1/PS2 emulator |

### `serv` — Server Tools
| Package | Description |
|---|---|
| Apache2 | Web server |
| Nginx | Web server / reverse proxy |
| MariaDB | Database server |
| PHP + extensions | PHP with Apache, MySQL, cURL, etc. |
| Node.js LTS | JavaScript runtime (via NodeSource) |
| Nano / Git | Editor and version control |
| ProFTPD | FTP server |
| phpMyAdmin | Database web admin |

### `dev` — Developer Tools
| Package | Description |
|---|---|
| FileZilla | FTP/SFTP client |
| Wireshark | Network analyzer |
| MySQL Workbench | Database GUI |
| Vim | Terminal text editor |
| VS Code | Code editor (snap) |
| Sublime Text | Code editor (snap) |
| PuTTY | SSH client |
| Htop / Btop | Process monitors |
| Firefox / Opera / Chromium | Web browsers |

### `home` — Personal Use
| Package | Description |
|---|---|
| LibreOffice | Office suite |
| uGet | Download manager |
| SMPlayer | Media player |
| Avidemux | Video processing |
| Transmission | Torrent client |
| Thunderbird | Email client |
| Discord | Chat platform (snap) |
| Google Chrome | Browser (official repo with GPG key) |
| Firefox | Browser |
| OpenShot | Video editor |
| VLC | Media player |
| Wine + Lutris | Windows app compatibility |

---

## Info Subcommands

| Command | Description |
|---|---|
| `all` | General system information (`uname -a`) |
| `cpu` | Processor details (`lscpu`) |
| `net` | Network interfaces (`ip addr show`) |
| `memo` | RAM usage (`free -h`) |
| `hd` | Disk usage (`df -h`) with optional folder breakdown |
| `user` | Logged-in users (`who`, `w`) |
| `proc` | Running processes (`htop` if available, otherwise `top`) |

---

## Language Configuration

Edit [config.sh](config.sh) and set the `language` variable:

```bash
# Portuguese (default)
language="pt-br"

# English
language="en"
```

---

## Project Structure

```
nuxtool.sh            # main entrypoint (while loop, SCRIPT_DIR detection)
config.sh             # global variables: language, colors, system check
modules/
├── bkp/              # file/folder copy with validation
├── correct/          # system package repair (5-step)
├── info/             # system information
├── install/          # software installation by category
│   ├── module.sh     # category menus and install groups
│   └── softwares.sh  # individual install functions
├── update/           # apt update + upgrade
└── update-dist/      # full-upgrade with autoremove
```

Each module follows the convention:
- `module.sh` — module logic
- `help.sh` — description shown in the `help` menu

---

## License

Distributed under the terms described in [LICENSE](LICENSE).

