# Linux Day 1 CheatSheet  
## Linux Introduction & Basic Commands

---

# One-Line Interview Answers

### What is Linux?
→ Linux is an open-source, Unix-like operating system used for servers, cloud infrastructure, and automation.

### What is Kernel?
→ Kernel is the core part of Linux that manages hardware, memory, processes, and system resources.

### What is Shell?
→ Shell is an interface that allows users to communicate with the Linux Kernel using commands.

### Difference between Kernel and Shell?

→ Kernel manages hardware resources; Shell provides a command interface for users.

### What is a Linux Distribution?
→ A Linux Distribution is an operating system built using Linux Kernel with additional tools and software.

Examples:

- Ubuntu
- Debian
- RHEL
- Amazon Linux

### Why do cloud servers mostly use Linux?
→ Linux provides security, stability, performance, low cost, and strong automation support.

---

# Linux Directory Structure

### What is Root Directory (`/`)?
→ Root (`/`) is the top-level directory that contains all Linux files and directories.

### What is `/home`?
→ `/home` stores personal user directories and user data.

### What is `/etc`?
→ `/etc` contains system and application configuration files.

Example:

```
/etc/ssh
/etc/nginx
```

### What is `/var`?
→ `/var` stores frequently changing data like logs and application data.

Example:

```
/var/log
```

### What is `/usr`?
→ `/usr` contains installed applications, libraries, and user programs.

### What is `/bin`?
→ `/bin` contains essential Linux commands required for system operation.

Examples:

```
ls
cp
mv
cat
```

---

# Basic Commands

### What is `pwd`?

→ `pwd` displays the current working directory.

Example:

```bash
pwd
```

---

### What is `ls`?

→ `ls` lists files and directories.

Example:

```bash
ls
```

---

### What is `ls -l`?

→ `ls -l` shows detailed file information including permissions, ownership, and size.

Example:

```bash
ls -l
```

---

### What is `ls -a`?

→ `ls -a` displays all files including hidden files.

Example:

```bash
ls -a
```

---

### What is `whoami`?

→ `whoami` shows the current logged-in user.

Example:

```bash
whoami
```

---

### What is `hostname`?

→ `hostname` displays the system/server name.

Example:

```bash
hostname
```

---

### What is `date`?

→ `date` displays the current system date and time.

---

### What is `cal`?

→ `cal` displays a calendar in the terminal.

---

### What is `clear`?

→ `clear` removes previous terminal output.

---

### What is `history`?

→ `history` displays previously executed commands.

---

# Production Relevance

## DevOps

- Verify server details.
- Check deployment location.
- Inspect files and permissions.
- Review previous commands.

## SRE

- Identify affected server.
- Verify user access.
- Troubleshoot incidents.
- Analyze command history.

## Cloud Engineer

- Validate cloud VM connection.
- Check instance information.
- Manage Linux servers.
- Perform initial server checks.

---

# Common Interview Scenarios

### Q: You connected to a production server. What will you check first?

Answer:

```bash
whoami
hostname
pwd
ls -l
```

Reason:

→ To verify user, server identity, current location, and permissions.

---

### Q: How do you check hidden configuration files?

Answer:

```bash
ls -a
```

---

### Q: How do you verify which server you are connected to?

Answer:

```bash
hostname
```

---

# 30–50 LPA Interview Focus

✅ Mention Linux is the foundation of cloud infrastructure.

✅ Explain:

**Shell → Kernel → Hardware flow**

✅ Connect commands with production troubleshooting.

Example:

"`hostname` helps identify the correct server during incidents."

"`ls -l` helps check ownership and permissions before modifying files."

"`history` helps track previous troubleshooting commands."

---

# Rapid Revision

```
Linux → Open-source OS

Kernel → Hardware & resource manager

Shell → User command interface

/ → Root directory

/home → User data

/etc → Configuration files

/var → Logs & changing data

/usr → Applications & libraries

/bin → Essential commands

pwd → Current directory

ls → List files

ls -l → Detailed listing

ls -a → Hidden files

whoami → Current user

hostname → Server name

date → Date/time

cal → Calendar

clear → Clean terminal

history → Previous commands
```
