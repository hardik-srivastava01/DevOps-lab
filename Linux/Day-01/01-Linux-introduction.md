# Linux Day 1 - Linux Introduction & File System Basics

## Objective

Understand the fundamentals of Linux, its architecture, Kernel, Shell, Linux Distributions, and why Linux is widely used in Cloud, DevOps, and SRE environments. Learn the basic Linux directory structure and the purpose of important system directories.

---

# What is Linux?

Linux is an **open-source, Unix-like operating system** that manages hardware resources and provides an environment to run applications.

Linux is widely used in:

- Servers
- Cloud Infrastructure
- Supercomputers
- Embedded Systems
- Containers

Linux provides:

- Security
- Stability
- Multi-user support
- Powerful command-line tools
- Automation capabilities

---

# Why Linux is Important in DevOps?

Most production servers run Linux because it provides:

- High reliability
- Better security control
- Lightweight performance
- Powerful automation support
- Excellent networking capabilities

DevOps engineers commonly work with:

- Linux servers
- Shell scripting
- Cloud instances
- Containers
- CI/CD pipelines

---

# Linux Architecture

Linux mainly consists of three layers:

```
User
 |
Shell
 |
Kernel
 |
Hardware
```

---

# What is Kernel?

The Kernel is the **core component of Linux operating system** that directly communicates with hardware.

It manages:

- CPU
- Memory
- Processes
- Devices
- File Systems
- Network

Example:

When you run:

```bash
ls
```

The shell sends the request to the kernel, and the kernel interacts with hardware to execute it.

---

# What is Shell?

Shell is a **command-line interface between the user and the Kernel**.

It accepts commands from users and passes them to the Kernel.

Examples:

- Bash
- Zsh
- Fish

Example:

```bash
pwd
```

Flow:

```
User Command
      |
    Shell
      |
   Kernel
      |
 Hardware
```

---

# What is Linux Distribution?

A Linux Distribution is a complete operating system built using the Linux Kernel with additional software, tools, and package managers.

Popular distributions:

| Distribution | Usage |
|---|---|
| Ubuntu | Cloud servers, beginners |
| Debian | Stability-focused servers |
| Red Hat Enterprise Linux (RHEL) | Enterprise servers |
| CentOS | Enterprise environments |
| Amazon Linux | AWS cloud servers |
| Fedora | Latest Linux technologies |

---

# Why Cloud Servers Mostly Run Linux?

Cloud providers like AWS, Azure, and Google Cloud commonly use Linux because:

## 1. Cost Effective

Linux is open-source and does not require expensive licenses.

## 2. Security

Linux provides strong permission management and security controls.

## 3. Performance

Linux consumes fewer resources compared to many operating systems.

## 4. Automation Friendly

Linux supports:

- Shell scripting
- Infrastructure automation
- CI/CD tools

## 5. Server Stability

Linux servers can run for months or years with minimal downtime.

---

# Linux Directory Structure

Linux follows a hierarchical filesystem structure.

Everything starts from:

```
/
```

called the **Root Directory**.

---

# Important Directories

## `/` (Root Directory)

The top-level directory of Linux filesystem.

Contains all files and directories.

Example:

```bash
cd /
```

---

## `/home`

Stores user home directories.

Example:

```
/home/user1
/home/user2
```

Contains:

- Personal files
- User configurations
- Documents

---

## `/etc`

Stores system configuration files.

Examples:

```
/etc/passwd
/etc/ssh/
/etc/nginx/
```

DevOps Use:

- Server configuration
- Application settings
- Service configuration

---

## `/var`

Stores variable data that changes frequently.

Examples:

```
/var/log
/var/cache
/var/lib
```

DevOps Use:

- Application logs
- Database files
- Service data

---

## `/usr`

Contains user applications and system utilities.

Examples:

```
/usr/bin
/usr/local
```

Stores:

- Installed software
- Libraries
- Programs

---

## `/bin`

Contains essential Linux commands.

Examples:

```
ls
cp
mv
cat
bash
```

These commands are required for basic system operation.

---

# Real DevOps Use Cases

## DevOps Engineer

- Manage Linux servers.
- Configure applications.
- Write automation scripts.
- Deploy applications.

## SRE Engineer

- Troubleshoot production issues.
- Analyze logs.
- Monitor services.
- Maintain system reliability.

## Cloud Engineer

- Manage AWS/Azure/GCP Linux instances.
- Configure cloud servers.
- Secure infrastructure.
- Automate deployments.

---

# Common Mistakes

- Confusing Linux with Ubuntu.
- Thinking Shell and Kernel are the same.
- Editing `/etc` files without backup.
- Deleting files from root directory.
- Ignoring Linux permissions.

---

# Key Takeaway

Linux is the foundation of modern cloud infrastructure. Understanding the Kernel, Shell, distributions, and filesystem structure is the first step toward becoming a strong DevOps, SRE, or Cloud Engineer.

---

# Next Step

Tomorrow I will learn:

- Linux File System
- Hidden Files
- pwd, ls, and cd in more depth
