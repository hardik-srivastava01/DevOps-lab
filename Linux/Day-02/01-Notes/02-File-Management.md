# Linux Day 2 - File & Directory Management (Deep Dive)

## Objective

Understand how Linux manages files and directories. Learn the difference between **Absolute Path and Relative Path**, understand **Files vs Directories**, perform **Copy and Move operations**, and use **Recursive operations (`-r`)**. These concepts are essential for daily work in DevOps, SRE, and Cloud Engineering.

---

# What is File & Directory Management?

File and Directory Management means creating, organizing, copying, moving, deleting, and managing files and folders inside a Linux filesystem.

Linux follows a hierarchical structure where everything starts from the root directory:

```text
/
```

---

# Why is it Important?

DevOps engineers work daily with:

- Application files
- Configuration files
- Log files
- Deployment packages
- Backup directories
- Server storage

Efficient file management prevents mistakes and improves productivity.

---

# Real DevOps Use Cases

- Moving deployment files between servers.
- Copying configuration backups.
- Managing application directories.
- Organizing logs.
- Creating backup structures.
- Automating file operations.

---

# Important Concepts

---

# Absolute Path

An Absolute Path is the complete path of a file or directory starting from the root directory (`/`).

Example:

```bash
/home/user/project/app.py
```

Characteristics:

- Starts with `/`.
- Works from any location.
- Preferred in automation scripts.

Example:

```bash
cd /etc/nginx
```

---

# Relative Path

A Relative Path is the path of a file or directory from the current working directory.

Example:

Current location:

```bash
/home/user
```

Command:

```bash
cd project
```

Path:

```text
/home/user/project
```

Characteristics:

- Does not start with `/`.
- Depends on current location.
- Common for daily navigation.

---

# Absolute Path vs Relative Path

| Absolute Path | Relative Path |
|---|---|
| Starts from `/` | Starts from current directory |
| Works from anywhere | Depends on current location |
| Used in scripts | Used for daily navigation |
| More reliable | Shorter and faster |

---

# Files vs Directories

## File

A file stores data or information.

Examples:

```text
app.py
config.conf
database.sql
```

Check file:

```bash
ls -l file.txt
```

---

## Directory

A directory stores files and other directories.

Examples:

```text
/home
/etc
/var/log
```

Check directory:

```bash
ls -ld directory
```

---

# Copy Operation (`cp`)

The `cp` command copies files and directories.

Syntax:

```bash
cp source destination
```

Example:

```bash
cp file.txt backup.txt
```

---

## Copy Directory

Use recursive option:

```bash
cp -r project backup_project
```

Why `-r`?

Because directories contain files and subdirectories.

---

# Move Operation (`mv`)

The `mv` command moves or renames files and directories.

Syntax:

```bash
mv source destination
```

Example:

Move file:

```bash
mv file.txt /tmp/
```

Rename file:

```bash
mv old.txt new.txt
```

---

# Recursive Operations (`-r`)

Recursive means applying an operation to:

- Directory
- All files inside it
- All subdirectories

Example:

```bash
cp -r project backup
```

This copies the complete directory tree.

Common commands using recursion:

```bash
cp -r
rm -r
ls -R
```

---

# Commands Practiced

```bash
pwd

ls

mkdir project

touch file.txt

cp file.txt backup.txt

mkdir backup

cp -r project backup

mv file.txt newfile.txt

mv newfile.txt project/

ls -R

rm -r project
```

---

# Common Mistakes

- Confusing absolute and relative paths.
- Copying directories without using `-r`.
- Running `rm -r` without checking the location.
- Overwriting important files accidentally.
- Moving production files without backup.

---

# Hands-on Practice

Today I learned Linux file and directory management. I practiced navigating using paths, understood the difference between files and directories, copied and moved files, and learned how recursive operations work on directories.

---

# Real World Problems You Can Solve

## DevOps

- Copy deployment artifacts.
- Move application releases.
- Create configuration backups.
- Organize project directories.
- Manage CI/CD workspace files.

## SRE

- Backup production files.
- Move log archives.
- Recover deleted or misplaced files.
- Manage server directories.
- Troubleshoot file locations.

## Cloud Engineer

- Manage VM filesystem.
- Copy files between directories.
- Organize cloud instance data.
- Prepare application deployments.
- Manage storage structures.

---

# Best Practices

- Always verify location using `pwd` before file operations.
- Use absolute paths in automation scripts.
- Take backups before moving critical files.
- Be careful with `rm -r`.
- Verify copied files after important operations.
- Use meaningful directory structures.

---

# Key Takeaway

Strong file and directory management skills are required for every Linux-based role. Understanding paths, copying, moving, and recursive operations helps DevOps, SRE, and Cloud Engineers manage production systems safely and efficiently.

---

# Next Step

Tomorrow I will learn:

- Linux File Permissions
- Read (r)
- Write (w)
- Execute (x)
- User, Group & Others
- Symbolic & Numeric Permissions
- Ownership
- chmod
- chown
- chgrp
