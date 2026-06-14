# Arkilia Linux

<p align="center">
  <strong>A personal Arch-based live system, tuned for a clean, privacy-respecting GNOME desktop experience.</strong>
</p>

<p align="center">
  <a href="https://github.com/ManKrawiec/Arkilia-Linux"><img alt="Repository" src="https://img.shields.io/badge/repo-Arkilia--Linux-24292f?style=for-the-badge&logo=github"></a>
  <img alt="Base" src="https://img.shields.io/badge/base-Arch%20Linux-1793d1?style=for-the-badge&logo=archlinux&logoColor=white">
  <img alt="Desktop" src="https://img.shields.io/badge/desktop-GNOME-4A86CF?style=for-the-badge&logo=gnome&logoColor=white">
  <img alt="Focus" src="https://img.shields.io/badge/focus-Privacy-6f42c1?style=for-the-badge">
  <img alt="Status" src="https://img.shields.io/badge/status-WIP-f5a524?style=for-the-badge">
  <img alt="License" src="https://img.shields.io/badge/license-GPL--3.0--or--later-2ea44f?style=for-the-badge">
</p>

---

Arkilia Linux is a small, experimental Arch-based live ISO made mainly for personal use and for a friend. It is built for fun, learning, and day-to-day experimentation, while still aiming to feel polished enough to be useful as a real base system.

The project is not trying to be a universal distribution for everyone. It is a custom system profile built around a stock GNOME desktop, with an emphasis on sensible privacy defaults, carefully chosen software, a live user, and a setup that can keep growing over time.

## Overview

| Area | Details |
| --- | --- |
| Base | Arch Linux / archiso |
| Desktop environment | GNOME |
| Display manager | GDM |
| Display server | Wayland |
| Focus | Privacy-conscious defaults |
| Live user | `arkilia` |
| Live password | `arkilia` |
| License | GPL-3.0-or-later |
| Repository | https://github.com/ManKrawiec/Arkilia-Linux |
| Issues | https://github.com/ManKrawiec/Arkilia-Linux/issues |

## Goals

- Keep a personal Arch-based system profile in one place.
- Provide a usable live environment with a regular live user and a clean GNOME session out of the box.
- Reduce unnecessary telemetry, tracking, and "phone home" behavior where practical.
- Make experimentation easier without rebuilding everything from scratch each time.
- Stay close to upstream GNOME, with only minimal, well-considered tweaks (extensions, theme, default apps, privacy settings).
- Grow into a comfortable, privacy-respecting base system for the people actually using it.

## Desktop Experience

Arkilia Linux ships a near-stock GNOME desktop with a small set of curated additions:

- **GNOME Shell extensions:** _list your extensions here, e.g. AppIndicator/KStatusNotifierItem support, Dash to Dock, etc._
- **Theme / icons:** _e.g. default Adwaita, or any GTK theme / icon theme you include._
- **Default applications:** _e.g. GNOME Web, Files, Console, Software._
- **Tweaks tool:** GNOME Tweaks is included for adjusting fonts, extensions, and appearance.

This section is intentionally minimal — the goal is a desktop that feels familiar to anyone who already uses GNOME, with just enough customization to be comfortable for daily use.

## Privacy

Privacy is one of the guiding considerations for this profile, though it's an ongoing effort rather than a finished checklist. Current and planned approaches include:

- **Telemetry off by default:** GNOME's usage/problem reporting and similar data-collection features are disabled out of the box.
- **Sensible network defaults:** _e.g. DNS configuration, firewall (ufw/nftables) enabled by default, mDNS/avahi disabled or restricted._
- **Minimal default software:** Avoiding