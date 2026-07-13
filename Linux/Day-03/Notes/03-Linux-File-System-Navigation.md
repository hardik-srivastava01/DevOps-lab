# Linux Day 3 - File System & Navigation

## Objective

Today I learned how the Linux file system is organized, how to navigate between directories, and how to find files and commands using the terminal.

---

## What is the Linux File System?

The Linux File System is the way Linux organizes and stores files and directories. Everything in Linux starts from a single root directory (`/`). All files, folders, devices, and system resources are connected under this directory.

---

## Why is it Important?

Linux file system knowledge is essential for DevOps because servers, Docker containers, Kubernetes nodes, and cloud virtual machines all use Linux. Understanding where files are stored makes it easier to configure applications, troubleshoot issues, and manage servers.

**Real DevOps Example:**

When deploying a web application on an Ubuntu server, configuration files are usually stored in `/etc`, logs are stored in `/var/log`, and user project files are stored in `/home`.

---

# Important Directories

## Root Directory (/)

The starting point of the Linux file system.

Example:

```bash
cd /
```

---

## Home Directory (/home)

Stores personal files and folders of users.

Example:

```bash
cd /home
```

---

## /bin

Contains essential Linux commands such as:

```text
ls
cp
mv
cat
pwd
```

---

## /etc

Stores system configuration files.

Example:

```text
/etc/passwd
/etc/hostname
```

---

## /var

Stores variable data such as logs and cache.

Example:

```text
/var/log
```

---

## /tmp

Stores temporary files that may be deleted automatically.

---

## /usr

Contains installed software, libraries, and user applications.

---

# Absolute Path

An absolute path starts from the root directory (`/`) and gives the complete location of a file or folder.

Example:

```bash
/home/zarvis/DevOps-Lab/Linux
```

---

# Relative Path

A relative path starts from the current working directory.

Examples:

```bash
./Notes

../

../Practice
```

---

# Hidden Files

Hidden files begin with a dot (`.`).

Example:

```text
.bashrc
.profile
.gitignore
```

To display hidden files:

```bash
ls -a
```

---

# Command History

Linux stores previously executed commands.

Command:

```bash
history
```

This helps repeat commands without typing them again.

---

# Tab Auto Completion

Pressing the **Tab** key automatically completes file names or commands.

Example:

Instead of typing

```bash
cd Documents
```

you can type

```bash
cd Doc
```

then press **Tab**.

---

# Commands Practiced

| Command | Purpose |
|---------|---------|
| `pwd` | Show current directory |
| `ls` | List files |
| `ls -a` | Show hidden files |
| `ls -lh` | Human-readable file sizes |
| `ls -R` | Display files recursively |
| `cd` | Change directory |
| `find` | Search files and directories |
| `which` | Show command location |
| `history` | Display previously executed commands |

---

# Common Mistakes

- Confusing absolute paths with relative paths.
- Forgetting to use `ls -a` when looking for hidden files.
- Using `find` without specifying the correct search location.
- Assuming `which` searches for files (it only locates executable commands).

---

# Interview Questions

1. What is the Linux File System?
2. What is the Root Directory?
3. What is the difference between Absolute Path and Relative Path?
4. What are hidden files?
5. How do you display hidden files?
6. What is the difference between `ls` and `ls -a`?
7. What does the `find` command do?
8. What is the difference between `find` and `which`?
9. What is the purpose of the `history` command?
10. How does Tab Auto Completion improve productivity?

---

# Learning Outcome

Today I learned how Linux organizes files and directories and how to navigate efficiently using the terminal. I also practiced searching for files, viewing hidden files, checking command history, and understanding the difference between absolute and relative paths.

---

# Next Step

Tomorrow I will learn:

- inux File Permissions (r, w, x)
- Ownership (Owner, Group, Others)
- Permission Modes (755, 644, 777)
- Permission Management Commands
  chmod 
  chown 
