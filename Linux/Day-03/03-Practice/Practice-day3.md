# Linux Day 3 Practice Log

## Objective

Practice Linux file system navigation and file search commands to efficiently locate files, inspect directories, and navigate the filesystem. These commands are used daily by DevOps, SRE, and Cloud Engineers for troubleshooting and server management.

---

## Commands Executed

```bash
mkdir Linux-Day3
cd Linux-Day3

# Check current directory
pwd

# Create practice directories and files
mkdir Projects Logs Config
touch Projects/app.py
touch Config/nginx.conf
touch Logs/app.log

# List files
ls

# Show hidden files
ls -a

# Human-readable file sizes
ls -lh

# Recursive listing
ls -R

# Find a file
find . -name "app.py"

# Find configuration file
find . -name "*.conf"

# Locate command (optional)
locate app.py

# Find command location
which ls
which find
which pwd

cd ..
rm -r Linux-Day3
```

---

## Result

- Successfully created a practice directory structure.
- Verified the current working directory using `pwd`.
- Listed files and directories using `ls`.
- Displayed hidden files using `ls -a`.
- Viewed human-readable file sizes using `ls -lh`.
- Listed directories recursively using `ls -R`.
- Located files using `find`.
- Tested the `locate` command (if available).
- Identified command locations using `which`.

---

## Issues Faced

Initially, I was confused between **`find`**, **`locate`**, and **`which`**.

After practicing, I understood:

- `find` searches the filesystem in real time.
- `locate` searches from a prebuilt database, making it much faster.
- `which` displays the executable path of a command.
- `ls -R` is useful for viewing an entire directory tree.

---

## Real-World Problems You Can Solve

### DevOps

- Locate deployment files.
- Find configuration files.
- Verify application directories.
- Search CI/CD artifacts.
- Check installed command locations.

### SRE

- Find log files during incidents.
- Search configuration files quickly.
- Investigate missing files.
- Verify executable paths.
- Explore directory structures.

### Cloud Engineer

- Locate startup scripts.
- Find cloud configuration files.
- Verify installed utilities.
- Search application directories.
- Inspect VM filesystem layout.

---

## Commands Used in Production

| Command | Production Use |
|----------|----------------|
| `cd` | Navigate directories |
| `pwd` | Verify current directory |
| `ls` | List directory contents |
| `ls -a` | Show hidden files |
| `ls -lh` | View human-readable file sizes |
| `ls -R` | Display recursive directory structure |
| `find` | Search files and directories |
| `locate` | Quickly locate files using database |
| `which` | Find executable path of a command |

---

## Best Practices

- Verify your location using `pwd` before running important commands.
- Use `find` for accurate real-time searches.
- Use `locate` when speed is more important than freshness.
- Use `ls -lh` to inspect file sizes easily.
- Use `which` to verify which executable is being used.
- Prefer absolute paths in automation scripts.

---

## Time Taken

45 Minutes

---

## Status

✅ Completed
