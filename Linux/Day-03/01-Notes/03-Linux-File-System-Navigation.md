# Linux Day 3 - Linux File System (Revision + Deep Dive)

## Objective

Understand the Linux File System in depth, including hidden files, working with `pwd`, `ls`, and `cd`, absolute vs relative paths, tab auto-completion, and command history. These concepts are fundamental for efficient navigation and daily work in DevOps, SRE, and Cloud Engineering.

---

# What is the Linux File System?

The Linux File System is a hierarchical directory structure that organizes all files and directories under a single root directory (`/`).

Unlike Windows, Linux treats everything as a file, including devices, processes, and configuration files.

---

# Why is it Important?

Every DevOps Engineer spends a significant amount of time navigating servers, editing configuration files, reading logs, and deploying applications. Efficient navigation saves time and reduces mistakes.

---

# Real DevOps Use Cases

- Navigate project directories.
- Locate configuration files.
- Access application logs.
- Troubleshoot production servers.
- Manage deployment files.

---

# Important Concepts

---

## Linux File System (Revision)

The Linux File System starts from the **Root Directory (`/`)**.

Common directories:

| Directory | Purpose |
|-----------|----------|
| `/` | Root directory |
| `/home` | User home directories |
| `/etc` | Configuration files |
| `/var` | Logs and variable data |
| `/bin` | Essential commands |
| `/usr` | User applications |
| `/tmp` | Temporary files |

---

## Hidden Files (.files)

Files or directories beginning with a **dot (`.`)** are hidden.

Examples:

```text
.bashrc
.profile
.gitignore
.ssh
```

View hidden files:

```bash
ls -a
```

View detailed hidden files:

```bash
ls -la
```

### Why are Hidden Files Important?

They usually store:

- User settings
- Shell configuration
- SSH keys
- Git configuration
- Environment settings

---

## pwd (Present Working Directory)

Displays the current directory.

```bash
pwd
```

Example Output:

```text
/home/radhe/Linux-Day3
```

### DevOps Use Case

Verify your location before executing deployment or configuration commands.

---

## ls (Deep Dive)

Displays files and directories.

Basic:

```bash
ls
```

Detailed:

```bash
ls -l
```

Hidden files:

```bash
ls -a
```

Human-readable sizes:

```bash
ls -lh
```

Detailed + Hidden:

```bash
ls -lah
```

### DevOps Use Case

Verify permissions, ownership, and deployment artifacts.

---

## cd (Deep Dive)

Change directory.

Go to Home:

```bash
cd
```

Go back one directory:

```bash
cd ..
```

Previous directory:

```bash
cd -
```

Root directory:

```bash
cd /
```

Absolute path:

```bash
cd /etc/nginx
```

Relative path:

```bash
cd project
```

### DevOps Use Case

Quickly navigate between application, configuration, and log directories.

---

## Absolute vs Relative Path (Revision)

### Absolute Path

Starts from the root (`/`).

Example:

```bash
/home/radhe/projects/app
```

Works from anywhere.

---

### Relative Path

Starts from the current directory.

Example:

```bash
cd project
```

Works only relative to the current location.

---

## Tab Auto-completion

Press the **Tab** key to automatically complete file and directory names.

Example:

```bash
cd Doc<Tab>
```

Becomes:

```bash
cd Documents
```

### Benefits

- Faster typing
- Fewer spelling mistakes
- Higher productivity

---

## Command History Basics

Linux stores previously executed commands.

Show history:

```bash
history
```

Run previous command:

```bash
!!
```

Search history:

```bash
Ctrl + R
```

Execute a command from history:

```bash
!25
```

### DevOps Use Case

Reuse long deployment and troubleshooting commands without retyping them.

---

# Commands Practiced

```bash
pwd

ls

ls -l

ls -a

ls -lah

cd

cd ..

cd -

cd /

cd project

cd /etc

history

!!

Ctrl + R
```

---

# Common Mistakes

- Confusing absolute and relative paths.
- Forgetting hidden files when troubleshooting.
- Running commands from the wrong directory.
- Typing long paths instead of using Tab completion.
- Repeating commands instead of using command history.

---

# Hands-on Practice

Today I explored the Linux File System in greater depth. I practiced navigating directories using `pwd`, `ls`, and `cd`, viewed hidden files, understood absolute and relative paths, used Tab auto-completion to speed up navigation, and learned how to reuse commands through command history.

---

# Real World Problems You Can Solve

## DevOps

- Navigate deployment directories.
- Locate configuration files.
- Verify application artifacts.
- Find hidden configuration files.
- Reuse deployment commands efficiently.

## SRE

- Troubleshoot production servers.
- Inspect hidden configuration files.
- Navigate log directories.
- Quickly rerun diagnostic commands.
- Reduce operational mistakes.

## Cloud Engineer

- Navigate cloud VM directories.
- Manage SSH configuration.
- Verify cloud application files.
- Access startup scripts.
- Improve administration efficiency.

---

# Best Practices

- Always verify your location with `pwd`.
- Use `ls -lah` when inspecting directories.
- Prefer absolute paths in automation scripts.
- Use relative paths for daily navigation.
- Use Tab completion instead of typing long paths.
- Use `history` and `Ctrl + R` to speed up repetitive tasks.
- Check hidden files during configuration troubleshooting.

---

# Key Takeaway

Efficient navigation is one of the most valuable Linux skills. Mastering the Linux File System, hidden files, navigation commands, paths, auto-completion, and command history enables faster troubleshooting, safer deployments, and higher productivity in DevOps, SRE, and Cloud Engineering.

---

# Next Step

Tomorrow I will learn:

- What are Linux file permissions?
- What do r, w, and x mean?
- Explain 755 and 644.
- Difference between chmod and chown.
- What is the difference between Owner, Group, and Others?
- How do you check file permissions?
- Why should you never use 777 on sensitive files?
