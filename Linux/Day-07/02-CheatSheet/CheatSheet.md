# Linux Day 7 CheatSheet

## One-Line Interview Answers

### What is Archiving?
→ Archiving combines multiple files into a single file without reducing size.

### What is Compression?
→ Compression reduces file size to save storage and bandwidth.

### Archive vs Compression?
→ Archive combines files; Compression reduces file size.

### What is `.tar`?
→ `.tar` is an archive format that combines multiple files into one.

### What is `.gz`?
→ `.gz` is a compressed file created using the **gzip** algorithm.

### What is `.tar.gz`?
→ `.tar.gz` is a TAR archive compressed using **gzip**.

### What is `.zip`?
→ `.zip` is a compressed archive format supported across multiple operating systems.

### What is a Backup?
→ A backup is a copy of data used for recovery after data loss or system failure.

### Why is `tar` used?
→ `tar` packages multiple files into a single archive for backup and deployment.

### What is `gzip`?
→ `gzip` compresses a file to reduce its size.

### What is `gunzip`?
→ `gunzip` decompresses `.gz` files.

### What is `zip`?
→ `zip` creates compressed archive files.

### What is `unzip`?
→ `unzip` extracts ZIP archives.

### What is `du`?
→ `du` displays the size of files and directories.

### What is `df`?
→ `df` displays filesystem disk usage.

### Difference between `du` and `df`?
→ `du` shows directory/file size; `df` shows total filesystem usage.

### Why archive before compression?
→ Archiving combines files first, making compression more efficient.

### Which format is preferred in Linux?
→ `.tar.gz` is the standard format for Linux backups and deployments.

### Why compress backups?
→ Compression reduces storage usage and speeds up file transfer.

### Where are compression tools used in DevOps?
→ CI/CD pipelines, log rotation, deployments, backups, and artifact packaging.

---

# Interview Keywords

- Archive
- Compression
- Backup
- tar
- gzip
- gunzip
- zip
- unzip
- tar.gz
- Artifact
- Log Rotation
- Storage Optimization
- Disk Usage

---

# Common Follow-up Questions

- Difference between `.tar` and `.tar.gz`?
- Difference between `gzip` and `zip`?
- Why use `tar` before `gzip`?
- What is a deployment artifact?
- Why are backups compressed?
- How do you verify an archive?
- Difference between `du` and `df`?
- How do you check available disk space?
- Which format is preferred on Linux?
- How do you automate backups?

---

# Production Relevance

## DevOps

- Package build artifacts.
- Compress CI/CD outputs.
- Create deployment bundles.
- Backup application data.

## SRE

- Archive production logs.
- Reduce storage usage.
- Implement log retention.
- Support disaster recovery.

## Cloud Engineer

- Compress cloud backups.
- Optimize storage costs.
- Transfer archives efficiently.
- Store artifacts in object storage.

---

# 30–50 LPA Interview Tips

✅ Say **"`tar` archives files, while `gzip` compresses them."**

✅ Mention **"`.tar.gz` is the standard Linux format for backups and deployments."**

✅ Mention **"`du` identifies large directories; `df` checks overall filesystem usage."**

✅ Mention **"Compression saves storage and reduces network transfer time."**

✅ Mention **"Production backups should be automated, verified, encrypted, and tested for recovery."**

---

# Rapid Revision

- Archive → Combine files
- Compression → Reduce size
- `.tar` → Archive only
- `.gz` → Compressed file
- `.tar.gz` → Archive + Compression
- `.zip` → Cross-platform compressed archive
- Backup → Data recovery copy
- `tar` → Create/Extract archives
- `gzip` → Compress file
- `gunzip` → Decompress file
- `zip` → Create ZIP archive
- `unzip` → Extract ZIP archive
- `du` → Directory size
- `df` → Filesystem usage
- `.tar.gz` → Linux standard for backups
