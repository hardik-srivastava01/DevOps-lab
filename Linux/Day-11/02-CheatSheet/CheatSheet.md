# Linux Day 11 CheatSheet

## One-Line Interview Answers

### What is a Package?
→ A package is a bundled software unit containing binaries, libraries, configuration files, and metadata.

### What is a Package Manager?
→ A package manager installs, updates, removes, and manages software along with its dependencies.

### What is `apt`?
→ `apt` is the modern package manager interface for Debian-based Linux systems.

### What is `apt-get`?
→ `apt-get` is a stable command-line package management tool commonly used in automation scripts.

### Difference between `apt` and `apt-get`?
→ `apt` is user-friendly for interactive use; `apt-get` is preferred for scripting and automation.

### What is a Repository?
→ A repository is a remote source that stores Linux software packages.

### What is `apt update`?
→ `apt update` refreshes the local package index from repositories.

### What is `apt upgrade`?
→ `apt upgrade` installs newer versions of already installed packages.

### Difference between Update and Upgrade?
→ `update` refreshes package information; `upgrade` installs available updates.

### What is `apt install`?
→ `apt install` downloads and installs a software package.

### What is `apt remove`?
→ `apt remove` uninstalls a package while preserving its configuration files.

### What is `apt purge`?
→ `apt purge` completely removes a package along with its configuration files.

### What is `apt autoremove`?
→ `apt autoremove` removes unused dependencies that are no longer required.

### What is `apt search`?
→ `apt search` searches repositories for available packages.

### What is `apt show`?
→ `apt show` displays detailed information about a package.

### What is a Dependency?
→ A dependency is another package required for an application to function correctly.

### What is Package Cache?
→ Package cache stores downloaded package files for faster reinstallation.

### What is `dpkg`?
→ `dpkg` is the low-level package management tool for installing and querying `.deb` packages.

### Difference between `apt` and `dpkg`?
→ `apt` resolves dependencies using repositories, while `dpkg` manages local `.deb` packages without automatic dependency resolution.

---

# Interview Keywords

- Package
- Package Manager
- APT
- apt-get
- Repository
- Dependency
- Package Cache
- Update
- Upgrade
- Install
- Remove
- Purge
- Autoremove
- dpkg
- .deb Package

---

# Common Follow-up Questions

- Why run `apt update` before `apt upgrade`?
- Why is `apt-get` preferred in scripts?
- How does APT resolve dependencies?
- Difference between `remove` and `purge`?
- What happens if dependencies are missing?
- How do you verify whether a package is installed?
- How do you clean package cache?
- How do you install a local `.deb` file?
- Why use trusted repositories only?
- How do you recover a broken package installation?

---

# Production Relevance

## DevOps

- Install Docker, Kubernetes, Git, Terraform, Jenkins.
- Automate package installation.
- Apply security patches.
- Provision Linux servers.

## SRE

- Patch production servers.
- Resolve dependency issues.
- Recover failed package installations.
- Maintain software consistency.

## Cloud Engineer

- Configure cloud VMs.
- Install cloud SDKs.
- Automate software provisioning.
- Maintain package versions across instances.

---

# 30–50 LPA Interview Tips

✅ Say **"APT automatically resolves package dependencies."**

✅ Mention **"`apt update` refreshes metadata; `apt upgrade` installs updated packages."**

✅ Mention **"`apt-get` is preferred in automation because of its stable interface."**

✅ Mention **"`dpkg` works with local `.deb` packages, while APT manages repositories and dependencies."**

✅ Mention **"Production servers should use trusted repositories and controlled upgrade strategies."**

---

# Rapid Revision

- Package → Software bundle
- Package Manager → Manages software lifecycle
- `apt` → Interactive package manager
- `apt-get` → Script-friendly package manager
- Repository → Package source
- `apt update` → Refresh package index
- `apt upgrade` → Upgrade installed packages
- `apt install` → Install package
- `apt remove` → Remove package, keep config
- `apt purge` → Remove package + config
- `apt autoremove` → Remove unused dependencies
- `apt search` → Search packages
- `apt show` → Package details
- Dependency → Required supporting package
- Cache → Downloaded package storage
- `dpkg` → Low-level `.deb` package manager
