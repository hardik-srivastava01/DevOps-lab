# Linux Day 3 CheatSheet

## One-Line Interview Answers

### What is `pwd`?
→ `pwd` (Present Working Directory) shows the current directory path.

### What is `cd`?
→ `cd` is used to change the current working directory.

### What is `ls`?
→ `ls` lists files and directories in the current location.

### What does `ls -a` do?
→ `ls -a` displays all files including hidden files.

### What does `ls -lh` do?
→ `ls -lh` displays files with detailed information and human-readable sizes.

### What does `ls -R` do?
→ `ls -R` recursively lists all files and directories inside subdirectories.

### What is a Hidden File in Linux?
→ A hidden file is a file starting with `.` that is not shown by normal `ls`.

Example:

```
.bashrc
.ssh
.gitignore
```

### What is `find`?
→ `find` searches files and directories in real time based on conditions.

Example:

```bash
find / -name file.txt
```

### What is `locate`?
→ `locate` searches files using a prebuilt database for faster results.

### Difference between `find` and `locate`?
→ `find` searches the filesystem live; `locate` uses an indexed database.

### What is `which`?
→ `which` shows the path of an executable command.

Example:

```bash
which python
```

### Difference between Absolute and Relative Path?
→ Absolute path starts from `/`; relative path starts from the current directory.

### What is Root Directory (`/`)?
→ Root (`/`) is the top-level directory of the Linux filesystem.

---

# Interview Keywords

- File System
- Directory Navigation
- Hidden Files
- Absolute Path
- Relative Path
- Root Directory
- File Search
- Executable Path
- Filesystem Hierarchy

---

# Common Follow-up Questions

- Difference between `ls` and `ls -l`?
- Why are hidden files used in Linux?
- Difference between `find` and `locate`?
- How do you find a configuration file?
- How do you check your current location?
- How do you find where a command is installed?
- Difference between `/home/user` and `home/user`?
- Why use absolute paths in automation scripts?
- How do you search a file by extension?
- How do you list all files including hidden files?

---

# Production Relevance

## DevOps

- Navigate application directories.
- Find deployment files.
- Locate configuration files.
- Verify installed tools.
- Manage project structures.

## SRE

- Search production logs.
- Locate failed service files.
- Investigate server issues.
- Verify command paths.
- Explore filesystem during incidents.

## Cloud Engineer

- Manage VM filesystem.
- Find startup scripts.
- Locate cloud configuration files.
- Verify installed binaries.
- Troubleshoot Linux instances.

---

# 30–50 LPA Interview Tips

✅ Say **"`pwd` helps verify execution context before running critical commands."**

✅ Mention **"`find` is preferred for accurate production searches because it checks the filesystem directly."**

✅ Mention **"`locate` is faster but depends on its updated database."**

✅ Mention **"Hidden files commonly store user configuration and security settings."**

✅ Mention **"Absolute paths are safer in automation because they avoid dependency on the current directory."**

---

# Rapid Revision

- `pwd` → Current directory
- `cd` → Change directory
- `cd ..` → Parent directory
- `cd /` → Root directory
- `ls` → List files
- `ls -a` → Show hidden files
- `ls -lh` → Detailed human-readable listing
- `ls -R` → Recursive listing
- `find` → Real-time file search
- `locate` → Database-based search
- `which` → Command location
- `/` → Root filesystem
- `.` → Current directory
- `..` → Parent directory
