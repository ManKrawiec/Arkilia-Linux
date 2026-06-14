# Changelog

All notable changes to Arkilia Linux will be documented in this file.

This project does not have stable releases yet. Changes are grouped under `Unreleased` until versioned ISO builds begin.

## Unreleased

### Added

- Added GPL-3.0-or-later license.
- Added `arkilia` live user with default password `arkilia`.
- Added SDDM autologin configuration for the live user.
- Added graphical startup through `graphical.target`.
- Expanded project README.
- Added NetworkManager and Plasma desktop integration packages.
- Added Arkilia system branding through `os-release`.
- Added installer preparation files and a target package list.
- Added installer profile metadata for future installer work.
- Added a local profile validation script.

### Changed

- Switched TTY1 autologin from `root` to `arkilia`.
- Switched live networking startup toward NetworkManager for desktop use.
- Configured NetworkManager to use `systemd-resolved` for DNS.
