# Linux Day 8 - Linux Users, Groups & Privileges

## Objective

Learn how Linux manages users, groups, and permissions to provide secure access to the system. Understand the difference between Root, Normal, and System users, how groups work, and why the Principle of Least Privilege is important in DevOps.

---

## What is it?

Linux is a multi-user operating system where multiple users can access the same machine with different levels of permissions. User and Group management helps control who can access files, execute commands, and administer the system securely.

---

## Why is it important?

In DevOps, servers are shared by developers, testers, and administrators. Instead of giving everyone full access, Linux uses users, groups, and permissions to improve security and reduce the risk of accidental or unauthorized changes.

**Real DevOps Use Cases**

- Creating separate users for developers and administrators.
- Granting limited access using `sudo`.
- Managing project permissions through groups.
- Securing sensitive system files.
- Following security best practices on production servers.

---

## Important Concepts

### Root User

The Root User is the superuser of Linux. It has complete control over the operating system and can perform any administrative task.

---

### Normal User

A Normal User is created for daily work. It has limited permissions and cannot modify critical system files without administrator approval.

---

### System User

A System User is created automatically by Linux for running services and applications. These users are generally not used for logging into the system.

---

### Primary Group

Every Linux user belongs to one default group called the Primary Group. New files created by the user usually belong to this group.

---

### Secondary Group

A user can belong to multiple Secondary Groups to gain additional permissions without changing the primary group.

---

### Root vs Sudo

**Root**

- Full administrative privileges.
- Can perform any operation directly.

**Sudo**

- Allows a normal user to execute administrative commands temporarily.
- Provides better security because users do not stay logged in as Root.

---

### /etc/passwd

This file stores basic information about all users on the system.

It contains:

- Username
- User ID (UID)
- Group ID (GID)
- Home Directory
- Default Shell

---

### /etc/group

This file stores information about all groups available on the Linux system and the users who belong to them.

---

### /etc/shadow (Concept Only)

This file securely stores encrypted user passwords and password-related information.

Only the Root User can access this file.

---

### Principle of Least Privilege (PoLP)

The Principle of Least Privilege means giving users only the minimum permissions required to perform their work.

This reduces security risks and protects production systems from accidental or malicious changes.

---

## Commands Practiced

- whoami
- id
- groups
- sudo
- cat /etc/passwd
- cat /etc/group
- sudo cat /etc/shadow

---

## Common Mistakes

- Logging in as the Root user for daily work.
- Giving unnecessary sudo access.
- Confusing Primary Group with Secondary Group.
- Editing system files without proper permissions.
- Sharing the Root account among multiple users.

---

## Hands-on Practice

Today I explored how Linux manages users and groups. I checked my current user, viewed group memberships, understood the difference between Root and Sudo, and examined the purpose of the `/etc/passwd`, `/etc/group`, and `/etc/shadow` files. I also learned why the Principle of Least Privilege is one of the most important security practices in Linux and DevOps.

---

## Key Takeaway

Linux security depends on proper user, group, and permission management. Following the Principle of Least Privilege helps protect production systems and is a fundamental DevOps best practice.

---

## Next Step

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
