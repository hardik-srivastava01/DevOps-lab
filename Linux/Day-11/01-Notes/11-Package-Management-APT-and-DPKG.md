# Linux Day 11 - Package Management (APT & DPKG)

## 🎯 Learning Objectives

After completing this topic, you will be able to:

- Understand Linux Package Management.
- Learn what APT and DPKG are.
- Differentiate apt and apt-get.
- Update and upgrade packages.
- Install, remove, and purge packages.
- Remove unused dependencies.
- Search and inspect packages.
- Understand repositories.
- Learn package cache.
- Manage packages using dpkg.

---

# What is it?

Package Management is the process of installing, updating, upgrading, removing, and managing software packages in Linux.

Instead of downloading software manually from websites, Linux uses package managers to install software securely from repositories.

---

# Why is it Important?

Managing software manually on hundreds of servers is difficult and error-prone.

Package Managers automate software installation, dependency handling, updates, and security patches.

---

# Real DevOps Use Cases

- Installing Docker
- Installing Git
- Installing Jenkins
- Installing Nginx
- Updating production servers
- Applying security patches
- Removing unused software

---

# 1️⃣ Package Management

## 📖 What is it?

Package Management is the system used to install, update, remove, and maintain software on Linux.

## ❓ Why is it Needed?

Without Package Management, every application would need to be downloaded and configured manually.

## ⚙️ How Does it Work?

```
Repository

↓

APT

↓

Downloads Package

↓

Installs Dependencies

↓

Software Ready
```

## 🌍 Real-world Example

Installing Git:

```bash
sudo apt install git
```

## ☁️ DevOps Use

Every Linux server relies on package management for software installation and maintenance.

## 🎤 Interview Tip

**Q:** What is Package Management?

**A:** It is the process of managing software packages on Linux.

---

# 2️⃣ APT

## 📖 What is it?

APT (Advanced Package Tool) is Ubuntu's package manager used to install, update, upgrade, and remove software.

## ❓ Why is it Needed?

It automatically resolves dependencies and downloads packages from repositories.

## 🌍 Real-world Example

```bash
sudo apt install nginx
```

## ☁️ DevOps Use

Used daily for software installation and maintenance.

## 🎤 Interview Tip

**Q:** What does APT stand for?

**A:** Advanced Package Tool.

---

# 3️⃣ apt vs apt-get

## 📖 What is it?

Both are package management tools.

- **apt** is modern and user-friendly.
- **apt-get** is older and mainly used in scripts.

## ❓ Why is it Needed?

Different tools are preferred for interactive use and automation.

## 🌍 Real-world Example

```bash
sudo apt install git
```

```bash
sudo apt-get install git
```

## ☁️ DevOps Use

- apt → Daily administration
- apt-get → Shell scripts and automation

## 🎤 Interview Tip

**Q:** Difference between apt and apt-get?

**A:** apt is user-friendly, while apt-get is stable for scripting.

---

# 4️⃣ apt update

## 📖 What is it?

Downloads the latest package index from repositories.

## ❓ Why is it Needed?

Keeps the package list up to date before installing or upgrading software.

## 🌍 Real-world Example

```bash
sudo apt update
```

## ☁️ DevOps Use

Run before installing new software.

---

# 5️⃣ apt upgrade

## 📖 What is it?

Upgrades installed packages to their latest available versions.

## ❓ Why is it Needed?

Provides bug fixes, improvements, and security updates.

## 🌍 Real-world Example

```bash
sudo apt upgrade
```

## ☁️ DevOps Use

Regular server maintenance and security patching.

---

# 6️⃣ apt install

## 📖 What is it?

Installs a package from configured repositories.

## 🌍 Real-world Example

```bash
sudo apt install docker.io
```

## ☁️ DevOps Use

Install tools like Docker, Git, Terraform, Jenkins, and Nginx.

---

# 7️⃣ apt remove

## 📖 What is it?

Removes an installed package but usually keeps configuration files.

## 🌍 Real-world Example

```bash
sudo apt remove nginx
```

## ☁️ DevOps Use

Uninstall software while preserving configuration for future use.

---

# 8️⃣ apt purge

## 📖 What is it?

Completely removes the package along with its configuration files.

## 🌍 Real-world Example

```bash
sudo apt purge nginx
```

## ☁️ DevOps Use

Completely clean software before reinstalling.

---

# 9️⃣ apt autoremove

## 📖 What is it?

Removes packages that are no longer required.

## 🌍 Real-world Example

```bash
sudo apt autoremove
```

## ☁️ DevOps Use

Keeps production servers clean and saves disk space.

---

# 🔟 apt search

## 📖 What is it?

Searches repositories for available packages.

## 🌍 Real-world Example

```bash
apt search docker
```

## ☁️ DevOps Use

Find software before installation.

---

# 1️⃣1️⃣ apt show

## 📖 What is it?

Displays detailed information about a package.

## 🌍 Real-world Example

```bash
apt show nginx
```

## ☁️ DevOps Use

Check version, dependencies, maintainer, and package description.

---

# 1️⃣2️⃣ DPKG

## 📖 What is it?

DPKG (Debian Package) is the low-level package management tool for Debian-based systems.

## ❓ Why is it Needed?

It installs and manages local `.deb` package files.

Unlike APT, it does **not** automatically install dependencies.

## 🌍 Real-world Example

Install a local package:

```bash
sudo dpkg -i package.deb
```

Check installed packages:

```bash
dpkg -l
```

Package information:

```bash
dpkg -s nginx
```

## ☁️ DevOps Use

Install offline packages and verify installed software.

## 🎤 Interview Tip

**Q:** Difference between APT and DPKG?

**A:** APT automatically resolves dependencies using repositories, while DPKG manages local `.deb` packages and does not resolve dependencies automatically.

---

# 💼 Real DevOps Scenario

A new Ubuntu server is deployed.

A DevOps Engineer:

- Updates package index.
- Upgrades installed packages.
- Installs Git.
- Installs Docker.
- Installs Nginx.
- Removes unnecessary packages.
- Applies security patches.
- Verifies installed software using DPKG.

---

# 📌 Key Takeaways

- Package Management simplifies software installation and maintenance.
- APT is the primary package manager for Ubuntu.
- apt is user-friendly, while apt-get is commonly used in automation.
- apt update refreshes package information.
- apt upgrade installs available updates.
- apt install installs new software.
- apt remove removes packages.
- apt purge removes packages and configuration files.
- apt autoremove cleans unused dependencies.
- apt search finds packages.
- apt show displays package information.
- DPKG manages local Debian packages.

---

# 🎤 Interview Questions

1. What is Package Management?
2. What is APT?
3. What is DPKG?
4. Difference between APT and DPKG?
5. Difference between apt and apt-get?
6. What does apt update do?
7. Difference between apt update and apt upgrade?
8. Difference between apt remove and apt purge?
9. What is apt autoremove?
10. What is apt search?
11. What is apt show?
12. Where is Package Management used in DevOps?

---

# 📅 Next Step

Tomorrow I will learn:

- What are Environment Variables?
- Local vs Global Variables
- Session Variables
- Persistent Variables
- PATH Variable
- .bashrc
- .profile
- .bash_profile
- export
- echo $VARIABLE
