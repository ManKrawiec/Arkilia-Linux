# Installer Preparation

This directory is a staging area for the future graphical Arkilia Linux installer.

The project does not ship a graphical installer yet. For now, this directory documents the intended installed-system package set and keeps installer-related decisions separate from the live ISO profile.

## Current Plan

- Keep `packages.x86_64` focused on the live ISO.
- Keep `packages.target.x86_64` focused on the installed system.
- Use the target package list later from Calamares or another graphical installer.
- Keep installer configuration reviewable before adding the installer itself.

## Future Installer Tasks

- Add Calamares or another graphical installer.
- Add Arkilia branding for the installer window.
- Decide default partitioning presets.
- Decide bootloader defaults for UEFI and BIOS.
- Decide which user setup flow the installer should expose.
- Test installation in a VM before publishing ISO releases.
