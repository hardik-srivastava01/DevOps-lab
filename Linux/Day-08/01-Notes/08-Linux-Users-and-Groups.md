# Linux Day 8 - Linux Users, Groups & Privileges

## Objective

Learn how Linux manages users, groups, and privileges to secure a multi-user operating system. Understand the different types of users, group management, Root vs Sudo, and important system files like `/etc/passwd`, `/etc/group`, and `/etc/shadow`.

---

# What is a Linux User?

A Linux User is an account that allows a person or service to access the operating system. Every user has a unique **User ID (UID)**, a home directory, default shell, and associated permissions.

Linux uses users to provide security, accountability, and resource isolation.

---

# Why is it Important?

Linux is a multi-user operating system. Proper user and permission management prevents unauthorized access and protects production systems.

---

# Real DevOps Use Cases

- Creating separate accounts for developers and administrators.
- Granting temporary administrative access using `sudo`.
- Running applications with dedicated service accounts.
- Managing file access using groups.
- Implementing the Principle of Least Privilege (PoLP).

---

# Important Concepts

---

## Linux User Types

### Root User

The Root User is the superuser with unrestricted access to the entire Linux system.

Characteristics:

- UID = 0
- Can perform any administrative task.
- Can access all files.
- Should not be used for routine work.

---

### Normal User

A Normal User is created for daily tasks and has limited privileges.

Characteristics:

- Cannot modify critical system files.
- Requires `sudo` for administrative operations.
- Has a personal home directory.

Example:

```
/home/radhe
```

---

### System User

A System User is created automatically for services and applications.

Examples:

- nginx
- mysql
- sshd
- nobody

Characteristics:

- Usually no login shell.
- Used only to run system services securely.

---

# Linux Groups

A Group is a collection of users that share common permissions.

Groups simplify permission management.

---

## Primary Group

Every Linux user belongs to one default (Primary) group.

Newly created files inherit this group by default.

Check:

```bash
id
```

---

## Secondary Group

A user can belong to multiple additional groups to gain extra permissions.

Example:

```
docker
sudo
adm
```

Check:

```bash
groups
```

---

# Root vs Sudo

## Root

- Permanent administrator account.
- Full control over the system.
- Higher security risk if used for daily work.

---

## Sudo

- Allows a normal user to execute administrative commands temporarily.
- Requires authentication.
- Logs administrative actions.
- Recommended for production systems.

Example:

```bash
sudo apt update
```

---

# Important Linux Files

---

## `/etc/passwd`

Stores basic information about every user account.

Contains:

- Username
- UID
- GID
- Home directory
- Default shell

View:

```bash
cat /etc/passwd
```

---

## `/etc/group`

Stores group information.

Contains:

- Group name
- Group ID (GID)
- Members of each group

View:

```bash
cat /etc/group
```

---

## `/etc/shadow` (Concept Only)

Stores encrypted passwords and password-related information.

Characteristics:

- Accessible only by Root.
- Improves password security.
- Stores password aging details.

View (Root only):

```bash
sudo cat /etc/shadow
```

---

# Principle of Least Privilege (PoLP)

PoLP means giving users only the minimum permissions required to perform their tasks.

Benefits:

- Improves security.
- Reduces accidental damage.
- Limits attack surface.
- Protects production environments.

---

# Commands Practiced

```bash
whoami

id

groups

sudo

cat /etc/passwd

cat /etc/group

sudo cat /etc/shadow
```

---

# Common Mistakes

- Logging in as Root for daily tasks.
- Giving unnecessary `sudo` access.
- Sharing the Root account.
- Confusing Primary and Secondary Groups.
- Editing `/etc/passwd` or `/etc/group` without caution.
- Exposing `/etc/shadow` contents.

---

# Hands-on Practice

Today I explored Linux user management by identifying the current user, checking group memberships, understanding Root and Sudo privileges, and examining the purpose of `/etc/passwd`, `/etc/group`, and `/etc/shadow`. I also learned why the Principle of Least Privilege is essential for securing Linux systems.

---

# Real World Problems You Can Solve

## DevOps

- Create secure user accounts for developers.
- Grant controlled administrative access using `sudo`.
- Manage Docker group permissions.
- Secure CI/CD servers.
- Prevent unauthorized access.

## SRE

- Troubleshoot permission-related issues.
- Audit user and group access.
- Secure production systems.
- Implement least privilege access.
- Investigate authentication problems.

## Cloud Engineer

- Manage users on AWS EC2, Azure VMs, and GCP instances.
- Configure SSH access securely.
- Assign appropriate permissions to cloud administrators.
- Harden cloud servers using least privilege.
- Control access to production environments.

---

# Best Practices

- Use `sudo` instead of logging in as Root.
- Follow the Principle of Least Privilege.
- Regularly audit users and groups.
- Assign permissions through groups rather than individual users.
- Never share the Root account.
- Protect sensitive system files such as `/etc/shadow`.
- Remove unused user accounts promptly.

---

# Key Takeaway

User and group management is the foundation of Linux security. Every DevOps, SRE, and Cloud Engineer must understand how users, groups, permissions, and privileged access work to operate and secure production systems effectively.

---

# Next Step

Tomorrow I will learn:

- What is a Process?
- Process Lifecycle
- Foreground vs Background Process
- Process ID (PID)
- Parent Process & Child Process
- Daemon Process
- Zombie Process (Concept)
- CPU & Memory Monitoring
- Process Signals (SIGTERM, SIGKILL)
