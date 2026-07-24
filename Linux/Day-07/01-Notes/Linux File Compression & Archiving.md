# Linux Day 7 - Archive, Compression & Backup

## Objective

Learn how Linux archives and compresses files, understand the difference between archiving and compression, create backups using tar, gzip, zip, and learn how backups are used in real-world DevOps environments.

---

## What is it?

Linux Archive & Compression is the process of combining multiple files into a single archive and reducing their size for easier storage, transfer, and backup.

- **Archive** combines multiple files into one file.
- **Compression** reduces the file size.
- Linux commonly uses **tar**, **gzip**, **tar.gz**, and **zip** for these tasks.

---

## Why is it important?

DevOps engineers regularly create backups before deployments, compress log files to save storage, archive project directories, and transfer application packages between servers. Understanding archive and compression tools is an essential Linux skill.

---

## Real DevOps Use Cases

- Create server backups before deployment.
- Archive application source code.
- Compress log files to save disk space.
- Transfer projects between servers.
- Store database backups.
- Package applications for deployment.

---

# Concepts Learned

## Archive

An archive combines multiple files and folders into a single file.

It **does not reduce file size**.

Example

```bash
tar -cvf backup.tar project/
```

Real Use

Creating a backup of an entire project directory.

---

## Compression

Compression reduces the size of files.

It helps save storage and speeds up file transfer.

Example

```bash
gzip notes.txt
```

Output

```
notes.txt.gz
```

Real Use

Compressing large log files before storing them.

---

## Archive vs Compression

| Archive | Compression |
|----------|-------------|
| Combines files | Reduces file size |
| Size remains almost same | Size becomes smaller |
| tar | gzip, zip |

---

## tar

The most common Linux archive utility.

Syntax

```bash
tar [options] archive-name files
```

Create Archive

```bash
tar -cvf backup.tar project/
```

Extract Archive

```bash
tar -xvf backup.tar
```

List Archive Contents

```bash
tar -tvf backup.tar
```

Real Use

Packaging project folders before deployment.

---

## gzip (.gz)

Compresses a single file.

Syntax

```bash
gzip filename
```

Example

```bash
gzip notes.txt
```

Decompress

```bash
gunzip notes.txt.gz
```

Real Use

Compressing server log files.

---

## tar.gz

Archive + Compression together.

Syntax

```bash
tar -czvf backup.tar.gz folder/
```

Extract

```bash
tar -xzvf backup.tar.gz
```

Real Use

Creating compressed backups of applications and websites.

---

## zip

A cross-platform archive and compression format.

Create

```bash
zip -r backup.zip project/
```

Extract

```bash
unzip backup.zip
```

Real Use

Sharing projects between Linux and Windows systems.

---

## Backup Concept

A backup is a duplicate copy of important data.

If the original data is deleted, corrupted, or lost, it can be restored using the backup.

Example

```bash
tar -czvf home-backup.tar.gz ~/Documents
```

Real Use

Taking backups before server upgrades and deployments.

---

# Commands Practiced

```bash
tar
gzip
gunzip
zip
unzip
tar -cvf
tar -xvf
tar -tvf
tar -czvf
tar -xzvf
```

---

# Common Mistakes

- Using **gzip** directly on folders instead of using **tar** first.
- Forgetting the **-z** option while creating a **tar.gz** archive.
- Extracting files into the wrong directory.
- Confusing **archive** with **compression**.
- Forgetting to verify backup files after creating them.

---

# Hands-on Practice

Today I learned the difference between archiving and compression in Linux. I practiced creating archive files using **tar**, compressing files with **gzip**, creating compressed archives using **tar.gz**, working with **zip** archives, extracting archived files, and understanding how Linux backups are created and used in real DevOps environments.

---

# Key Takeaway

Archive and Compression are fundamental Linux skills. Every DevOps engineer should know how to package projects, compress files, create backups, and restore data safely before deployments or system maintenance.

---

# Next Step

Tomorrow I will learn

- What is a User?
- Types of Users
- Root User
- Normal User
- System User
- What is a Group?
- Primary Group vs Secondary Group
- /etc/passwd
- /etc/group
- /etc/shadow 
- what is a sudo?
- Least Privilege Principle
