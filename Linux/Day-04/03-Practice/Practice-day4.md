# Linux Day 4 Practice Log

## Objective

Practice Linux file permissions, ownership, and permission inspection commands to understand how access is controlled for files and directories. Learn how these commands are used to secure Linux systems in DevOps, SRE, and Cloud Engineering.

---

## Commands Executed

```bash
mkdir Linux-Day4
cd Linux-Day4

# Create a file
touch file1.txt

# View current permissions
ls -l

# Change permission to 644
chmod 644 file1.txt
ls -l

# Change permission to 755
chmod 755 file1.txt
ls -l

# Add execute permission to owner
chmod u+x file1.txt
ls -l

# Check current user
whoami

# Check user groups
groups

# Display user and group IDs
id

# View detailed file information
stat file1.txt

cd ..
rm -r Linux-Day4
```

---

## Result

- Successfully created a practice directory and file.
- Viewed default file permissions using `ls -l`.
- Changed permissions to `644` and verified the result.
- Changed permissions to `755` and verified the result.
- Granted execute permission to the owner using `chmod u+x`.
- Identified the current user with `whoami`.
- Listed group memberships using `groups`.
- Displayed UID and GID information using `id`.
- Inspected detailed file metadata using `stat`.

---

## Issues Faced

Initially, I was confused about the difference between **symbolic** and **numeric** permissions.

After practicing, I understood:

- `644` is commonly used for regular files.
- `755` is commonly used for executable scripts and directories.
- `chmod u+x` adds execute permission only for the owner.
- `stat` provides detailed metadata beyond what `ls -l` shows.
- User identity and group membership determine file access permissions.

---

## Real-World Problems You Can Solve

### DevOps

- Fix **Permission Denied** errors.
- Secure deployment scripts.
- Configure application file permissions.
- Verify ownership after deployments.
- Protect sensitive configuration files.

### SRE

- Troubleshoot permission-related production incidents.
- Audit file ownership and access rights.
- Secure critical system files.
- Resolve service startup failures caused by incorrect permissions.
- Investigate unauthorized access.

### Cloud Engineer

- Secure EC2/Azure/GCP virtual machines.
- Protect SSH private keys.
- Configure shared storage permissions.
- Manage application access on Linux servers.
- Harden cloud infrastructure.

---

## Commands Used in Production

| Command | Production Use |
|----------|----------------|
| `touch` | Create files |
| `ls -l` | Check file permissions and ownership |
| `chmod` | Modify file permissions |
| `chmod 644` | Standard permission for regular files |
| `chmod 755` | Standard permission for executable scripts |
| `chmod u+x` | Grant execute permission to the owner |
| `whoami` | Identify current user |
| `groups` | Display group memberships |
| `id` | Show UID, GID, and groups |
| `stat` | View detailed file metadata |

---

## Best Practices

- Follow the **Principle of Least Privilege (PoLP)**.
- Avoid using `777` permissions in production.
- Use `644` for regular files.
- Use `755` for executable scripts and directories.
- Verify permission changes using `ls -l`.
- Use `stat` for detailed file analysis.
- Regularly audit file ownership and permissions.

---

## Time Taken

45 Minutes

---

## Status

✅ Completed
