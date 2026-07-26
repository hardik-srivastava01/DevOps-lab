# Linux Day 2 CheatSheet  
## File & Directory Management

---

# One-Line Interview Answers

### What is a File in Linux?
→ A file is a container used to store data, information, or configuration.

### What is a Directory in Linux?
→ A directory is a container that stores files and other directories.

---

### What is Absolute Path?
→ An absolute path is the complete location of a file starting from the root directory (`/`).

Example:

```bash
/home/user/project/app.py
```

---

### What is Relative Path?
→ A relative path is the location of a file based on the current working directory.

Example:

```bash
project/app.py
```

---

### Difference Between Absolute and Relative Path?

→ Absolute paths work from anywhere; relative paths depend on the current directory.

---

### What is `mkdir`?
→ `mkdir` creates new directories in Linux.

Example:

```bash
mkdir project
```

---

### What is `touch`?
→ `touch` creates an empty file or updates file timestamps.

Example:

```bash
touch file.txt
```

---

### What is `cp`?
→ `cp` copies files or directories from one location to another.

Example:

```bash
cp file.txt backup.txt
```

---

### What is `mv`?
→ `mv` moves files/directories and is also used for renaming.

Example:

```bash
mv old.txt new.txt
```

---

### Difference Between `cp` and `mv`?

→ `cp` creates a duplicate; `mv` moves or renames the original file.

---

### What is Recursive Operation?

→ Recursive operation applies a command to a directory and all its contents.

Example:

```bash
cp -r folder backup
```

---

### What does `-r` mean?

→ `-r` means recursive, used for operations on directories.

---

### What is `tree` Command?

→ `tree` displays directories and files in a hierarchical structure.

---

### What is `pwd`?

→ `pwd` displays the current working directory.

---

### What is `cat`?

→ `cat` displays the contents of a file.

---

# Important Commands

| Command | Purpose |
|---|---|
| `mkdir` | Create directory |
| `touch` | Create file |
| `cp` | Copy file |
| `cp -r` | Copy directory recursively |
| `mv` | Move/Rename file |
| `rm` | Remove file |
| `rm -r` | Remove directory recursively |
| `pwd` | Show current location |
| `ls` | List files |
| `cat` | Read file |
| `tree` | Show directory structure |

---

# Production Relevance

## DevOps

- Copy deployment artifacts.
- Manage release files.
- Backup configuration files.
- Organize CI/CD workspace.

## SRE

- Move logs and backups.
- Recover misplaced files.
- Maintain server directory structure.
- Troubleshoot file issues.

## Cloud Engineer

- Manage cloud VM files.
- Prepare application directories.
- Organize storage.
- Deploy applications.

---

# Common Interview Scenarios

### Q: Deployment failed because a file is missing. What will you do?

→ Check current path using `pwd`, locate files using `find`, and verify permissions.

---

### Q: How will you backup a configuration directory?

```bash
cp -r /etc/app /backup/
```

---

### Q: How will you rename a file?

```bash
mv old.txt new.txt
```

---

### Q: How will you copy an entire project directory?

```bash
cp -r project/ backup/
```

---

# 30–50 LPA Interview Focus

✅ Mention **absolute paths in automation scripts for reliability.**

✅ Explain **`cp` keeps the original, while `mv` removes it from the old location.**

✅ Mention **recursive operations are required for directory-level actions.**

✅ Always talk about **backup verification before destructive operations.**

---

# Rapid Revision

```
mkdir → Create directory

touch → Create file

cp → Copy

mv → Move/Rename

-r → Recursive

pwd → Current location

ls → List files

cat → View content

tree → Directory structure

Absolute Path → Starts with /

Relative Path → Starts from current location
```
