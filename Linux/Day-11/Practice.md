# Linux Day 11 Practice Log

## Objective

Practice Linux Package Management commands to understand how to install, update, upgrade, search, inspect, and remove software packages using the APT package manager.

---

## Commands Executed

```bash
mkdir Linux-Day11
cd Linux-Day11

# Refresh package index
sudo apt update

# Upgrade installed packages
sudo apt upgrade

# Search for a package
apt search nginx

# Display package information
apt show nginx

# Install a package
sudo apt install nginx

# Remove a package
sudo apt remove nginx

# Remove package with configuration files
sudo apt purge nginx

# Remove unused dependencies
sudo apt autoremove

# Install package using apt-get
sudo apt-get install git

# Display installed package information
dpkg -l | grep git

cd ..
rm -r Linux-Day11
```

---

## Result

- Successfully refreshed the package index using `apt update`.
- Upgraded installed packages using `apt upgrade`.
- Searched for available packages using `apt search`.
- Viewed package details using `apt show`.
- Installed a package using `apt install`.
- Removed a package using `apt remove`.
- Completely removed a package and its configuration files using `apt purge`.
- Removed unnecessary dependencies using `apt autoremove`.
- Installed software using `apt-get`.
- Verified installed packages using `dpkg`.

---

## Issues Faced

Initially, I was confused about the difference between **`apt`** and **`apt-get`**.

After practicing, I understood:

- `apt` is a modern, user-friendly command for everyday package management.
- `apt-get` is commonly used in scripts and automation because of its stable behavior.
- `remove` deletes the package but keeps configuration files.
- `purge` removes both the package and its configuration files.
- `autoremove` cleans up unused dependencies left behind after uninstalling packages.

---

## Real World Problems You Can Solve

### DevOps

- Install Docker, Git, Jenkins, Terraform, and Kubernetes tools.
- Automate software installation during server provisioning.
- Apply security updates to production servers.
- Remove unused packages to reduce server footprint.
- Build repeatable infrastructure setup scripts.

### SRE

- Patch production systems with security updates.
- Troubleshoot package installation failures.
- Resolve dependency conflicts.
- Clean unused packages and dependencies.
- Verify installed software versions.

### Cloud Engineer

- Configure software on cloud virtual machines.
- Install AWS CLI, Azure CLI, and Google Cloud SDK.
- Automate package installation during VM provisioning.
- Keep cloud instances updated with the latest packages.
- Maintain consistent software versions across environments.

---

## Commands Used in Production

| Command | Production Use |
|----------|----------------|
| `apt update` | Refresh package repository information |
| `apt upgrade` | Install software and security updates |
| `apt install` | Install required software |
| `apt remove` | Uninstall software while keeping configuration |
| `apt purge` | Completely remove software and configuration |
| `apt autoremove` | Clean unused dependencies |
| `apt search` | Find available packages |
| `apt show` | View package details before installation |
| `apt-get` | Package management in automation scripts |
| `dpkg -l` | Verify installed packages |

---

## Best Practices

- Run `apt update` before `apt upgrade`.
- Install packages only from trusted repositories.
- Use `apt-get` in automation scripts.
- Review packages before upgrading production servers.
- Run `apt autoremove` regularly to clean unused dependencies.
- Use `apt purge` when a complete package removal is required.
- Verify installed packages using `dpkg`.

---

## Time Taken

50 Minutes

---

## Status

✅ Completed
