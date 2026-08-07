# Linux Day 7 Practice Log

## Objective

Practice Linux archiving and compression commands to understand how to create backups, compress files, extract archives, and monitor disk usage. Learn how these commands are used in DevOps, SRE, and Cloud Engineering for backup, deployment, and storage optimization.

---

## Commands Executed

```bash
mkdir Linux-Day7
cd Linux-Day7

# Create sample files
mkdir project
touch project/app.py project/config.yml project/readme.md

# Create TAR archive
tar -cvf backup.tar project/

# View archive contents
tar -tvf backup.tar

# Extract TAR archive
tar -xvf backup.tar

# Compress using gzip
gzip backup.tar

# Decompress
gunzip backup.tar.gz

# Create TAR.GZ archive
tar -czvf backup.tar.gz project/

# Extract TAR.GZ archive
tar -xzvf backup.tar.gz

# Create ZIP archive
zip -r backup.zip project/

# Extract ZIP archive
unzip backup.zip

# Check directory size
du -sh project/

# Check disk usage
df -h

cd ..
rm -r Linux-Day7
```

---

## Result

- Created a TAR archive successfully.
- Verified archive contents without extracting.
- Extracted archived files.
- Compressed archives using `gzip`.
- Decompressed `.gz` files using `gunzip`.
- Created a compressed `.tar.gz` archive.
- Created and extracted a ZIP archive.
- Measured directory size using `du`.
- Checked filesystem usage using `df`.

---

## Issues Faced

Initially, I was confused between **`.tar`**, **`.gz`**, and **`.tar.gz`**.

After practicing, I understood:

- `.tar` combines multiple files into one archive.
- `.gz` compresses a single file.
- `.tar.gz` first archives files using `tar` and then compresses the archive using `gzip`.
- `du` shows the size of files/directories.
- `df` shows available and used disk space for the filesystem.

---

## Real-World Problems You Can Solve

### DevOps

- Create deployment packages.
- Archive application builds.
- Compress CI/CD artifacts.
- Backup configuration files.
- Transfer releases efficiently.

### SRE

- Compress production logs.
- Create disaster recovery backups.
- Reduce storage consumption.
- Archive incident evidence.
- Manage log retention.

### Cloud Engineer

- Backup EC2/VM data.
- Compress cloud storage backups.
- Transfer archives between cloud instances.
- Optimize storage costs.
- Package infrastructure configuration files.

---

## Commands Used in Production

| Command | Production Use |
|---------|----------------|
| `tar -cvf` | Create archive |
| `tar -tvf` | View archive contents |
| `tar -xvf` | Extract archive |
| `tar -czvf` | Create compressed archive |
| `tar -xzvf` | Extract compressed archive |
| `gzip` | Compress file |
| `gunzip` | Decompress file |
| `zip` | Create ZIP archive |
| `unzip` | Extract ZIP archive |
| `du -sh` | Check directory size |
| `df -h` | Check disk usage |

---

## Best Practices

- Archive multiple files before compressing.
- Verify backups after creation.
- Use descriptive backup names with timestamps.
- Monitor disk usage regularly using `df`.
- Identify large directories using `du`.
- Store backups on separate storage.
- Test backup restoration periodically.

---

## Time Taken

55 Minutes

---

## Status

✅ Completed
