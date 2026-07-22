# Linux Day 11 Practice Log

## Objective

Practice Linux package management commands using **APT** and **DPKG** to understand how software is installed, updated, upgraded, removed, searched, and managed on Ubuntu-based Linux systems.

---

## Commands Executed

```bash
mkdir Linux-Day11
cd Linux-Day11

# Check APT version
apt --version
apt-get --version

# Update package index
sudo apt update

# Upgrade installed packages
sudo apt upgrade

# Search package
apt search nginx

# Show package details
apt show nginx

# Install package
sudo apt install nginx

# Remove package
sudo apt remove nginx

# Completely remove package with configuration files
sudo apt purge nginx

# Remove unused dependencies
sudo apt autoremove

# Check installed package using dpkg
dpkg -l | grep nginx

# Package information
dpkg -s nginx

cd ..
rm -r Linux-Day11
```

---

## Result

- Successfully understood the difference between **apt** and **apt-get**.
- Updated the package list from configured repositories.
- Upgraded installed packages to the latest available versions.
- Searched for packages using **apt search**.
- Viewed detailed package information using **apt show**.
- Installed and removed a package using APT.
- Completely removed package configuration files using **apt purge**.
- Removed unnecessary dependencies using **apt autoremove**.
- Checked package information using **dpkg**.

---

## Issues Faced

Initially, I was confused about the difference between **apt remove** and **apt purge**. After practicing, I learned that **remove** uninstalls the package but may keep configuration files, whereas **purge** removes both the package and its configuration files. I also understood that **apt update** only refreshes the package index, while **apt upgrade** actually installs available updates.

---

## Time Taken

45–60 minutes

---

## Status

✅ Completed
