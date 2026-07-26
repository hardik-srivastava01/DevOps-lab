# Linux Day 1 Practice Log

## Objective

Practice basic Linux terminal commands to understand system information, directory navigation, user identity, date/time information, and command history. These commands are the foundation for daily Linux administration in DevOps, SRE, and Cloud Engineering.

---

## Commands Executed

```bash
# Show current working directory
pwd

# List files and directories
ls

# List files with detailed information
ls -l

# Show hidden files
ls -a

# Check current user
whoami

# Check system hostname
hostname

# Display current date and time
date

# Display calendar
cal

# Clear terminal screen
clear

# View previously executed commands
history
```

---

## Result

- Successfully checked the current working directory using `pwd`.
- Listed files and directories using `ls`.
- Viewed detailed file information using `ls -l`.
- Displayed hidden files using `ls -a`.
- Verified the logged-in user using `whoami`.
- Checked system hostname using `hostname`.
- Viewed system date and time using `date`.
- Displayed calendar information using `cal`.
- Cleared the terminal screen using `clear`.
- Reviewed previous commands using `history`.

---

## Issues Faced

Initially, I was confused about the difference between:

- `ls`
- `ls -l`
- `ls -a`

After practice, I understood:

- `ls` shows normal files and directories.
- `ls -l` shows detailed information like permissions, ownership, and size.
- `ls -a` displays hidden files.
- `history` helps reuse previous commands and improves productivity.

---

## Real-World Problems You Can Solve

## DevOps

- Verify server location before deployment.
- Check logged-in user.
- Identify server hostname.
- Review previous commands during troubleshooting.
- Inspect files before configuration changes.

Example:

```bash
whoami
hostname
ls -l
```

---

## SRE

- Identify which server you are connected to.
- Verify user access.
- Troubleshoot command execution issues.
- Check system information quickly.
- Review previous troubleshooting steps.

Example:

```bash
history
hostname
```

---

## Cloud Engineer

- Verify cloud VM identity.
- Check instance details.
- Confirm user permissions.
- Inspect server filesystem.
- Perform basic server validation.

---

## Commands Used in Production

| Command | Production Use |
|---|---|
| `pwd` | Verify current working directory |
| `ls` | View files and directories |
| `ls -l` | Check permissions and ownership |
| `ls -a` | View hidden configuration files |
| `whoami` | Check current user |
| `hostname` | Identify server name |
| `date` | Check system date/time |
| `cal` | Display calendar |
| `clear` | Clean terminal output |
| `history` | Review executed commands |

---

## Best Practices

- Always run `pwd` before important file operations.
- Verify user identity using `whoami`.
- Confirm server identity using `hostname`.
- Use `history` during troubleshooting.
- Use `ls -l` to check permissions before modifying files.
- Be careful while executing commands on production servers.

---

## Time Taken

30 Minutes

---

## Status

✅ Completed
