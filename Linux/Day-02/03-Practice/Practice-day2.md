# Linux Day 2 Practice Log

## Objective

Practice Linux file and directory management commands to understand how to create directories, create files, copy and move data, verify file locations, and perform recursive operations. These skills are essential for managing application files, deployments, and backups in DevOps, SRE, and Cloud Engineering.

---

## Commands Executed

```bash
mkdir Linux-Day2
cd Linux-Day2

# Create directories
mkdir Notes Projects

# Create file and add content
touch Notes/linux.txt

echo "Linux Day 2 Practice" > Notes/linux.txt

# Copy file
cp Notes/linux.txt Projects/

# Rename file using move command
mv Projects/linux.txt Projects/linux-notes.txt

# List directories
ls

ls Notes

ls Projects

# View file content
cat Projects/linux-notes.txt

# Check current location
pwd

# Return to previous directory
cd ..

# View complete directory structure
tree Linux-Day2

# Remove practice directory
rm -r Linux-Day2
```

---

## Result

- Successfully created a Linux-Day2 practice environment.
- Created multiple directories using `mkdir`.
- Created and edited a text file using `touch` and `echo`.
- Copied files between directories using `cp`.
- Renamed and moved files using `mv`.
- Verified directory contents using `ls`.
- Read file content using `cat`.
- Checked current working directory using `pwd`.
- Viewed complete directory structure using `tree`.
- Removed the practice environment using recursive deletion.

---

## Issues Faced

Initially, I was confused about the difference between **copy (`cp`)** and **move (`mv`)**.

After practicing, I understood:

- `cp` creates a duplicate copy while keeping the original file.
- `mv` moves the file and can also rename it.
- Recursive operations are required when working with directories.
- Always verify the location using `pwd` before using destructive commands like `rm -r`.

---

## Real-World Problems You Can Solve

## DevOps

- Copy application builds during deployment.
- Move release files between environments.
- Create backup copies of configuration files.
- Organize project directories.
- Manage CI/CD workspace files.

Example:

```bash
cp -r build/ backup/
```

---

## SRE

- Move archived logs.
- Create emergency backups.
- Recover misplaced files.
- Maintain server directory structure.
- Troubleshoot file location issues.

Example:

```bash
mv error.log /backup/
```

---

## Cloud Engineer

- Manage files on cloud VMs.
- Prepare application deployment directories.
- Organize cloud storage data.
- Copy configuration files.
- Maintain instance filesystem.

---

## Commands Used in Production

| Command | Production Use |
|---|---|
| `mkdir` | Create directories for applications and projects |
| `touch` | Create files |
| `echo` | Add content to files |
| `cp` | Copy files and backups |
| `mv` | Move or rename files |
| `ls` | Verify files and directories |
| `cat` | Read file contents |
| `pwd` | Confirm current location |
| `tree` | Visualize directory structure |
| `rm -r` | Remove directories recursively |

---

## Best Practices

- Always check location using:

```bash
pwd
```

before moving or deleting files.

- Use backups before modifying production files.
- Use `cp -r` carefully with directories.
- Avoid running:

```bash
rm -r
```

without verifying the target path.
- Use meaningful directory names for better organization.

---

## Time Taken

45 Minutes

---

## Status

✅ Completed
