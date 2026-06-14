#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

fail() {
  printf 'error: %s\n' "$*" >&2
  exit 1
}

check_file() {
  [[ -e "$1" ]] || fail "missing $1"
}

check_symlink_target() {
  local path="$1"
  local expected="$2"

  [[ -L "$path" ]] || fail "$path is not a symlink"
  [[ "$(readlink "$path")" == "$expected" ]] || fail "$path should point to $expected"
}

check_no_duplicate_packages() {
  local package_file="$1"
  local duplicates

  duplicates="$(
    sed 's/#.*//' "$package_file" |
      awk 'NF { print $1 }' |
      sort |
      uniq -d
  )"

  [[ -z "$duplicates" ]] || fail "$package_file has duplicate packages: $duplicates"
}

check_file packages.x86_64
check_file installer/packages.target.x86_64
check_file airootfs/etc/passwd
check_file airootfs/etc/shadow
check_file airootfs/etc/sddm.conf.d/autologin.conf
check_file airootfs/etc/sudoers.d/10-arkilia-live
check_file airootfs/etc/os-release
check_file airootfs/etc/NetworkManager/conf.d/dns.conf

check_no_duplicate_packages packages.x86_64
check_no_duplicate_packages installer/packages.target.x86_64

grep -q '^arkilia:x:1000:1000:' airootfs/etc/passwd || fail 'missing arkilia user in passwd'
grep -q '^arkilia:' airootfs/etc/shadow || fail 'missing arkilia user in shadow'
grep -q '^User=arkilia$' airootfs/etc/sddm.conf.d/autologin.conf || fail 'SDDM autologin user is not arkilia'
grep -q '^Session=plasma.desktop$' airootfs/etc/sddm.conf.d/autologin.conf || fail 'SDDM session is not plasma.desktop'
grep -q '^Relogin=true$' airootfs/etc/sddm.conf.d/autologin.conf || fail 'SDDM relogin is not enabled'

check_symlink_target airootfs/etc/systemd/system/default.target /usr/lib/systemd/system/graphical.target
check_symlink_target airootfs/etc/systemd/system/display-manager.service /usr/lib/systemd/system/sddm.service
check_symlink_target airootfs/etc/systemd/system/multi-user.target.wants/NetworkManager.service /usr/lib/systemd/system/NetworkManager.service
check_symlink_target airootfs/etc/systemd/system/network-online.target.wants/NetworkManager-wait-online.service /usr/lib/systemd/system/NetworkManager-wait-online.service

[[ ! -e airootfs/etc/systemd/system/multi-user.target.wants/systemd-networkd.service ]] || fail 'systemd-networkd is still enabled'
[[ ! -e airootfs/etc/systemd/system/multi-user.target.wants/iwd.service ]] || fail 'iwd is still enabled separately from NetworkManager'
grep -q '^dns=systemd-resolved$' airootfs/etc/NetworkManager/conf.d/dns.conf || fail 'NetworkManager is not configured for systemd-resolved'

if command -v visudo >/dev/null; then
  visudo -cf airootfs/etc/sudoers.d/10-arkilia-live >/dev/null 2>&1
fi

printf 'profile checks passed\n'
