# Linux Day 8 CheatSheet

## One-Line Interview Answers

### What is a Linux User?
→ A Linux user is an account that authenticates and accesses system resources.

### What is Root User?
→ Root is the superuser (UID 0) with unrestricted system access.

### What is a Normal User?
→ A normal user has limited privileges and uses `sudo` for administrative tasks.

### What is a System User?
→ A system user is a non-login account used to run services securely.

### What is a Group?
→ A group is a collection of users that share common permissions.

### What is a Primary Group?
→ The primary group is the default group assigned to a user.

### What is a Secondary Group?
→ Secondary groups provide additional permissions without changing the primary group.

### Root vs Sudo?
→ Root has permanent administrative privileges; `sudo` provides temporary privileged access.

### What is UID?
→ UID (User ID) uniquely identifies a user.

### What is GID?
→ GID (Group ID) uniquely identifies a group.

### What is `/etc/passwd`?
→ Stores user account information such as UID, GID, home directory, and login shell.

### What is `/etc/group`?
→ Stores group information and group memberships.

### What is `/etc/shadow`?
→ Stores encrypted passwords and password-aging information.

### What is `whoami`?
→ Displays the currently logged-in user.

### What is `id`?
→ Displays a user's UID, GID, and group memberships.

### What is `groups`?
→ Lists the groups a user belongs to.

### What is `useradd`?
→ Creates a new Linux user account.

### What is `passwd`?
→ Sets or changes a user's password.

### What is `groupadd`?
→ Creates a new Linux group.

### What is `usermod -aG`?
→ Adds a user to a secondary group while preserving existing group memberships.

### What is the Principle of Least Privilege (PoLP)?
→ Users should receive only the minimum permissions required to perform their tasks.

---

# Interview Keywords

- User
- Root
- Normal User
- System User
- UID
- GID
- Group
- Primary Group
- Secondary Group
- Sudo
- Least Privilege (PoLP)
- `/etc/passwd`
- `/etc/group`
- `/etc/shadow`

---

# Common Follow-up Questions

- Why shouldn't you log in as Root?
- Difference between Root and Sudo?
- Difference between Primary and Secondary Groups?
- What information is stored in `/etc/passwd`?
- Why is `/etc/shadow` protected?
- How do you add a user to the Docker group?
- How do you verify group membership?
- What happens if you forget the `-a` in `usermod -aG`?
- Why are System Users needed?
- How do you implement least privilege?

---

# Production Relevance

## DevOps

- Manage developer accounts.
- Grant Docker/Jenkins access.
- Configure CI/CD server permissions.
- Implement least privilege.

## SRE

- Troubleshoot permission issues.
- Audit users and groups.
- Secure production servers.
- Manage privileged access.

## Cloud Engineer

- Manage users on EC2/Azure/GCP VMs.
- Configure SSH access.
- Assign permissions through groups.
- Harden Linux servers.

---

# 30–50 LPA Interview Tips

✅ Say **"Use `sudo` instead of logging in as Root."**

✅ Mention **"UID 0 always represents the Root user."**

✅ Mention **"`/etc/passwd` stores user information, while `/etc/shadow` stores encrypted passwords."**

✅ Mention **"Assign permissions through groups instead of individual users."**

✅ Mention **"Follow the Principle of Least Privilege to secure production systems."**

---

# Rapid Revision

- User → System account
- Root → UID 0
- Normal User → Limited privileges
- System User → Service account
- Group → Permission collection
- Primary Group → Default group
- Secondary Group → Additional permissions
- `sudo` → Temporary admin access
- `whoami` → Current user
- `id` → UID, GID, groups
- `groups` → User groups
- `useradd` → Create user
- `passwd` → Set password
- `groupadd` → Create group
- `usermod -aG` → Add user to group
- `/etc/passwd` → User database
- `/etc/group` → Group database
- `/etc/shadow` → Encrypted passwords
- PoLP → Minimum required permissions
