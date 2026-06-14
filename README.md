# Arkilia Linux

<p align="center">
  <strong>A personal Arch-based live system, tuned for a clean desktop experience.</strong>
</p>

<p align="center">
  <a href="https://github.com/ManKrawiec/Arkilia-Linux"><img alt="Repository" src="https://img.shields.io/badge/repo-Arkilia--Linux-24292f?style=for-the-badge&logo=github"></a>
  <img alt="Base" src="https://img.shields.io/badge/base-Arch%20Linux-1793d1?style=for-the-badge&logo=archlinux&logoColor=white">
  <img alt="Status" src="https://img.shields.io/badge/status-WIP-f5a524?style=for-the-badge">
</p>

---

Arkilia Linux is a small, experimental Arch-based live ISO made mainly for personal use and for a friend. It is built for fun, learning, and day-to-day experimentation, while still aiming to feel polished enough to be useful as a real base system.

The project is not trying to be a universal distribution for everyone. It is a custom system profile with carefully chosen defaults, a live user, and a desktop setup that can keep growing over time.

## Overview

| Area | Details |
| --- | --- |
| Base | Arch Linux / archiso |
| Desktop | KDE Plasma profile packages |
| Display manager | SDDM |
| Live user | `arkilia` |
| Live password | `arkilia` |
| Repository | https://github.com/ManKrawiec/Arkilia-Linux |
| Issues | https://github.com/ManKrawiec/Arkilia-Linux/issues |

## Goals

- Keep a personal Arch-based system profile in one place.
- Provide a usable live environment with a regular live user.
- Make experimentation easier without rebuilding everything from scratch each time.
- Stay lightweight enough to understand and modify.
- Grow into a comfortable base system for the people actually using it.

## Live ISO Login

The live environment uses the following default credentials:

```text
Username: arkilia
Password: arkilia
```

TTY1 is configured to autologin as `arkilia`.

## Project Status

Arkilia Linux is currently a work in progress. Expect changes, rough edges, and decisions that may shift as the system becomes more complete.

This repository is best treated as a custom archiso profile, not a finished public distro release.

## Building

Builds are handled through `mkarchiso` from the Arch Linux `archiso` package.

From the repository root:

```bash
sudo mkarchiso -v .
```

The generated ISO will be placed in the default archiso output directory for this profile.

## Repository Layout

| Path | Purpose |
| --- | --- |
| `packages.x86_64` | Package list included in the ISO |
| `profiledef.sh` | Main archiso profile configuration |
| `airootfs/` | Files copied into the live system root |
| `grub/` | GRUB boot menu configuration |
| `syslinux/` | BIOS boot menu configuration |
| `efiboot/` | systemd-boot entries for UEFI |

## Notes

- The default live password is public and intended only for the live ISO environment.
- Root still exists in the live system, but autologin is configured for the `arkilia` user.
- The system is experimental, so review changes before using it on important machines.

---

<p align="center">
  <sub>Built as a personal Arch-based system profile, shaped by curiosity and daily use.</sub>
</p>
