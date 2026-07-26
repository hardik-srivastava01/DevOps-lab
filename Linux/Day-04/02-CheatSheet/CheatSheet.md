# Linux Day 4 CheatSheet

## One-Line Interview Answers

### What are Linux File Permissions?
→ Linux permissions control who can read, write, or execute a file.

### What is Read (r)?
→ Read allows viewing a file or listing a directory.

### What is Write (w)?
→ Write allows modifying a file or creating/deleting files in a directory.

### What is Execute (x)?
→ Execute allows running a file or entering a directory.

### Who is the User (Owner)?
→ The owner is the user who owns the file.

### What is a Group?
→ A group is a collection of users sharing the same file permissions.

### Who are Others?
→ Others are all users except the owner and group members.

### What is Symbolic Permission?
→ Symbolic permission represents access as `rwxr-xr-x`.

### What is Numeric Permission?
→ Numeric permission represents access as numbers like `755` or `644`.

### What is `755`?
→ Owner has `rwx`; Group and Others have `r-x`.

### What is `644`?
→ Owner has `rw-`; Group and Others have `r--`.

### What is `777`?
→ Everyone has full access; avoid it in production.

### What is File Ownership?
→ File ownership defines which user and group control a file.

### What is the `chmod` command?
→ `chmod` changes file or directory permissions.

### What is `chmod 755` used for?
→ It grants execute permission for scripts and directories.

### What is `chmod 644` used for?
→ It sets standard permissions for regular files.

### What is `chmod u+x`?
→ It adds execute permission only for the owner.

### What is `whoami`?
→ Displays the current logged-in user.

### What is `groups`?
→ Displays the groups the current user belongs to.

### What is `id`?
→ Displays the user's UID, GID, and group memberships.

### What is `stat`?
→ Displays detailed metadata about a file.

### Why are permissions important?
→ They protect systems from unauthorized access and accidental changes.

### What is PoLP?
→ Principle of Least Privilege means giving only the minimum permissions required.

---

# Interview Keywords

- Read (r)
- Write (w)
- Execute (x)
- Owner
- Group
- Others
- chmod
- chown
- chgrp
- 755
- 644
- 777
- UID
- GID
- PoLP
- File Ownership
- Permission Denied

---

# Common Follow-up Questions

- Difference between `644` and `755`?
- Why is `777` dangerous?
- Difference between Owner and Group?
- What does `chmod` do?
- What does `stat` show?
- Difference between `whoami`, `id`, and `groups`?
- Why use `chmod u+x`?
- What causes "Permission denied"?
- How do you secure SSH private keys?
- What is the Principle of Least Privilege?

---

# Production Relevance

## DevOps

- Secure deployment scripts.
- Protect CI/CD configuration.
- Manage file permissions.
- Prevent unauthorized changes.

## SRE

- Resolve Permission Denied errors.
- Audit file ownership.
- Secure production servers.
- Protect service configuration files.

## Cloud Engineer

- Secure Linux VMs.
- Protect SSH keys.
- Configure application permissions.
- Harden cloud infrastructure.

---

# 30–50 LPA Interview Tips

✅ **755 → Executable scripts & directories**

✅ **644 → Regular files & configuration files**

✅ **600 → SSH private keys**

✅ **777 → Never use in production unless absolutely necessary**

✅ **Always follow the Principle of Least Privilege (PoLP).**

---

# Rapid Revision

- `r` → Read
- `w` → Write
- `x` → Execute
- Owner → File creator
- Group → Shared access
- Others → Everyone else
- `755` → rwxr-xr-x
- `644` → rw-r--r--
- `600` → rw-------
- `777` → rwxrwxrwx (Unsafe)
- `chmod` → Change permissions
- `chown` → Change owner
- `chgrp` → Change group
- `whoami` → Current user
- `groups` → User groups
- `id` → UID & GID
- `stat` → File metadata
- PoLP → Minimum required permissions
