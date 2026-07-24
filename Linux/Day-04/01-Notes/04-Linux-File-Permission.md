# Day 04 - Linux File Permissions

## Objective
Learn how Linux controls access to files and directories using permissions and ownership.

---

# What are Linux File Permissions?

Linux file permissions define who can read, write, or execute a file or directory. They help protect files from unauthorized access and improve system security.

---

# Permission Types

## Read (r)
- View file contents.
- List directory contents.

## Write (w)
- Modify file contents.
- Create or delete files inside a directory.

## Execute (x)
- Run a file as a program or script.
- Enter (access) a directory.

---

# Permission Groups

## Owner (User)
The person who created the file.

## Group
Users belonging to the same group.

## Others
All remaining users on the system.

---

# Permission Representation

## Symbolic Format

```
rwxr-xr-x
```

- Owner: rwx
- Group: r-x
- Others: r-x

---

## Numeric Format

| Number | Permission |
|--------:|------------|
| 7 | rwx |
| 6 | rw- |
| 5 | r-x |
| 4 | r-- |
| 0 | --- |

### Common Permissions

- **755** → Owner: rwx, Group: r-x, Others: r-x
- **644** → Owner: rw-, Group: r--, Others: r--
- **777** → Everyone has full permissions (Not Recommended)

---

# Ownership

Every file has:

- File Owner
- Group Owner

Ownership determines who can control the file.

---

# Why Permissions Matter

- Protect sensitive files.
- Prevent unauthorized access.
- Improve Linux server security.
- Secure configuration files.
- Essential for DevOps, Docker, Kubernetes, and SSH.

---

# Commands Practiced

```bash
ls -l
chmod 644 file1.txt
chmod 755 file1.txt
chmod u+x file1.txt
whoami
groups
id
stat file1.txt
sudo chown USER:USER file1.txt
```

---

# Command Purpose

| Command | Purpose |
|----------|---------|
| ls -l | Show detailed file permissions |
| chmod | Change file permissions |
| chown | Change file ownership |
| whoami | Display current user |
| groups | Show user groups |
| id | Show user and group IDs |
| stat | Display detailed file information |

---

# Interview Questions

1. What are Linux file permissions?
2. What do r, w, and x mean?
3. Explain 755 and 644.
4. Difference between chmod and chown.
5. What is the difference between Owner, Group, and Others?
6. How do you check file permissions?
7. Why should you never use 777 on sensitive files?

---

# Key Takeaways

- Linux permissions control file access.
- There are three permissions: Read, Write, and Execute.
- Permissions are assigned to Owner, Group, and Others.
- chmod changes permissions.
- chown changes ownership.
- Avoid using 777 on important files for security reasons.

---

# Real-World DevOps Use

Linux permissions are widely used in:

- Docker containers
- Kubernetes
- SSH Keys
- Shell Scripts
- Linux Servers
- Configuration Files

#Next Step

Tomorrow I will learn:

- Viewing file contents
- Searching text inside files
- Counting lines, words, and characters
- Beginning and end of files
- Pipes (|) – Introduction
