# Linux Day 4 - Linux File Permissions

## Objective

Learn how Linux controls access to files and directories using **Read (r), Write (w), Execute (x)** permissions. Understand permission groups, symbolic and numeric representations, file ownership, and why permissions are critical for security in DevOps, SRE, and Cloud Engineering.

---

# What are Linux File Permissions?

Linux File Permissions determine **who can read, modify, or execute a file or directory**.

Every file and directory has permissions assigned to control access and protect the system.

Example:

```text
-rwxr-xr-x
```

---

# Why is it Important?

Linux servers host applications, databases, configuration files, and sensitive data.

Proper permissions help:

- Prevent unauthorized access.
- Protect production systems.
- Secure configuration files.
- Reduce security risks.
- Follow the Principle of Least Privilege (PoLP).

---

# Real DevOps Use Cases

- Secure application configuration files.
- Protect SSH private keys.
- Restrict access to deployment scripts.
- Secure Kubernetes secrets.
- Control access to log files.

---

# Important Concepts

---

## Read (r)

Allows viewing the contents of a file.

For directories, it allows listing directory contents.

Example:

```bash
cat file.txt
```

---

## Write (w)

Allows modifying or deleting a file.

For directories, it allows creating, deleting, or renaming files.

---

## Execute (x)

Allows executing a file as a program or script.

For directories, it allows entering the directory.

Example:

```bash
./script.sh
```

---

# Permission Groups

Linux permissions are divided into three categories.

---

## User (Owner)

The owner of the file.

Represented by the first permission group.

Example:

```text
rwx------
```

---

## Group

Users belonging to the same group.

Example:

```text
rwxr-x---
```

---

## Others

Everyone else on the system.

Example:

```text
rwxr-xr-x
```

---

# Permission Representation

---

## Symbolic Representation

Example:

```text
rwxr-xr-x
```

Meaning:

| Group | Permission |
|--------|------------|
| User | rwx |
| Group | r-x |
| Others | r-x |

---

## Numeric Representation

| Number | Permission |
|---------|------------|
| 7 | rwx |
| 6 | rw- |
| 5 | r-x |
| 4 | r-- |
| 3 | -wx |
| 2 | -w- |
| 1 | --x |
| 0 | --- |

Common Values

```text
755
```

Owner → Read, Write, Execute

Group → Read, Execute

Others → Read, Execute

---

```text
644
```

Owner → Read, Write

Group → Read

Others → Read

---

```text
777
```

Everyone has full access.

⚠️ **Avoid in production.**

---

# Ownership

---

## File Owner

The user who owns the file.

View ownership:

```bash
ls -l
```

Change owner:

```bash
chown user file.txt
```

---

## Group Owner

The group associated with the file.

Change group:

```bash
chgrp developers file.txt
```

---

# Why Permissions Matter

## Server Security

Prevent unauthorized users from accessing sensitive files.

---

## Protecting Configuration Files

Files like:

```text
/etc/passwd
/etc/shadow
/etc/nginx/nginx.conf
```

must have secure permissions.

---

## Restricting Unauthorized Access

Permissions ensure only authorized users can:

- Read
- Modify
- Execute

critical files.

---

# Commands Practiced

```bash
ls -l

chmod 755 script.sh

chmod 644 config.txt

chmod +x deploy.sh

chmod -w notes.txt

chmod u+x script.sh

chmod g+w project.txt

chmod o-r secret.txt

chown user file.txt

chgrp developers file.txt
```

---

# Common Mistakes

- Using `777` on production files.
- Giving execute permission to non-executable files.
- Incorrect ownership after deployments.
- Ignoring least privilege.
- Changing permissions without understanding their impact.

---

# Hands-on Practice

Today I learned how Linux permissions control access to files and directories. I explored Read, Write, and Execute permissions, understood User, Group, and Others, practiced symbolic and numeric permission formats, changed ownership, and learned why secure permissions are essential for production systems.

---

# Real World Problems You Can Solve

## DevOps

- Secure deployment scripts.
- Protect CI/CD configuration files.
- Manage Docker and Kubernetes configuration.
- Restrict access to secrets.
- Prevent accidental file modifications.

## SRE

- Resolve "Permission Denied" errors.
- Audit file ownership.
- Secure production servers.
- Protect service configuration files.
- Troubleshoot access issues.

## Cloud Engineer

- Secure EC2/Azure/GCP instances.
- Protect SSH keys.
- Configure application permissions.
- Manage shared storage access.
- Harden Linux servers.

---

# Best Practices

- Follow the Principle of Least Privilege (PoLP).
- Avoid `777` permissions.
- Use `755` for executable scripts.
- Use `644` for configuration files.
- Protect private keys with `600`.
- Verify permissions using `ls -l`.
- Regularly audit ownership and permissions.

---

# Key Takeaway

Linux File Permissions are the foundation of server security. Proper permission and ownership management protects applications, configuration files, and sensitive data while enabling secure collaboration in DevOps, SRE, and Cloud Engineering.

---

# Next Step

Tomorrow I will learn:

- Viewing File Contents
- Searching Text Inside Files
- Counting Lines, Words & Characters
- Beginning & End of Files
- Pipes (`|`)
- sorting
- remove duplicates
