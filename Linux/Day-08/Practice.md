# Linux Day 8 Practice Log

## Objective

Practice Linux user and group management commands to understand how users, groups, and privileges are managed in Linux. Learn to create users, manage groups, modify user memberships, and inspect system user information.

---

## Commands Executed

```bash
mkdir Linux-Day8
cd Linux-Day8

# Check current user
whoami

# Display user and group information
id

# Show group memberships
groups

# Create a new user
sudo useradd devuser

# Set password
sudo passwd devuser

# Create a new group
sudo groupadd developers

# Add user to secondary group
sudo usermod -aG developers devuser

# Verify user information
id devuser

# Verify group membership
groups devuser

# View user database
cat /etc/passwd

# View group database
cat /etc/group

cd ..
rm -r Linux-Day8
```

---

## Result

- Verified the currently logged-in user using `whoami`.
- Displayed user ID (UID), group ID (GID), and group memberships using `id`.
- Listed group memberships using `groups`.
- Created a new Linux user using `useradd`.
- Assigned a password using `passwd`.
- Created a new group using `groupadd`.
- Added a user to a secondary group using `usermod -aG`.
- Verified user and group membership changes.
- Examined user information stored in `/etc/passwd`.
- Examined group information stored in `/etc/group`.

---

## Issues Faced

Initially, I was confused about the difference between **Primary Group** and **Secondary Group**.

After practicing, I understood:

- Every user has one **Primary Group** by default.
- A user can belong to multiple **Secondary Groups** for additional permissions.
- `usermod -aG` adds a user to a secondary group without removing existing group memberships.
- `/etc/passwd` stores user account information, while `/etc/group` stores group details.

---

## Real World Problems You Can Solve

### DevOps

- Create developer and administrator accounts.
- Grant Docker access using the `docker` group.
- Manage Jenkins and CI/CD server users.
- Implement least privilege access.
- Configure secure server permissions.

### SRE

- Troubleshoot permission issues.
- Audit user and group memberships.
- Secure production servers.
- Manage administrative access using `sudo`.
- Investigate authentication problems.

### Cloud Engineer

- Create users on AWS EC2, Azure VM, and GCP Compute Engine.
- Configure secure SSH access.
- Assign users to appropriate groups.
- Manage cloud server permissions.
- Harden Linux instances using least privilege.

---

## Commands Used in Production

| Command | Production Use |
|----------|----------------|
| `whoami` | Identify current logged-in user |
| `id` | Display UID, GID, and group memberships |
| `groups` | Show user's groups |
| `useradd` | Create a new Linux user |
| `passwd` | Set or change a user's password |
| `groupadd` | Create a new Linux group |
| `usermod -aG` | Add a user to a secondary group |
| `cat /etc/passwd` | View user account information |
| `cat /etc/group` | View group information |

---

## Best Practices

- Avoid logging in as the Root user for daily tasks.
- Use `sudo` for administrative commands.
- Follow the Principle of Least Privilege (PoLP).
- Assign permissions through groups instead of individual users.
- Always use `usermod -aG` to preserve existing group memberships.
- Audit users and groups regularly.
- Remove unused user accounts promptly.

---

## Time Taken

55 Minutes

---

## Status

✅ Completed
