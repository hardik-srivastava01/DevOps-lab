# Linux Day 6 Practice Log

## Objective

Practice Linux input/output redirection and text editor commands to understand how to create, edit, redirect, append, and capture command output and errors. Learn how these commands are used in automation, logging, and troubleshooting.

---

## Commands Executed

```bash
mkdir Linux-Day6
cd Linux-Day6

# Create file using echo
echo "Linux" > notes.txt

# Append data
echo "Docker" >> notes.txt
echo "Kubernetes" >> notes.txt

# View file
cat notes.txt

# Input Redirection
sort < notes.txt

# Output Redirection
ls > files.txt

# Error Redirection
ls invalid_directory 2> error.log

# Display and save output simultaneously
echo "DevOps Practice" | tee output.txt

# Append using tee
echo "Cloud Engineer" | tee -a output.txt

# Edit using Nano
nano notes.txt

# Edit using Vim
vim notes.txt

cd ..
rm -r Linux-Day6
```

---

## Result

- Created a file using `echo`.
- Overwrote file contents using `>`.
- Appended new content using `>>`.
- Redirected input using `<`.
- Redirected output to a file.
- Stored error messages separately using `2>`.
- Displayed and saved output simultaneously using `tee`.
- Edited files using both `nano` and `vim`.

---

## Issues Faced

Initially, I was confused between `>`, `>>`, and `tee`.

After practicing, I understood:

- `>` overwrites existing file content.
- `>>` appends content to an existing file.
- `<` provides input from a file.
- `2>` stores only error messages.
- `tee` displays output on the terminal while saving it to a file.
- `tee -a` appends output instead of overwriting.

---

## Real-World Problems You Can Solve

### DevOps

- Save CI/CD pipeline logs.
- Capture deployment output.
- Store application error logs separately.
- Edit configuration files.
- Generate audit logs.

### SRE

- Troubleshoot production failures.
- Separate error logs from normal logs.
- Modify server configuration files.
- Capture debugging information.
- Analyze command output during incidents.

### Cloud Engineer

- Edit cloud VM configuration files.
- Save provisioning logs.
- Debug startup scripts.
- Capture infrastructure deployment output.
- Maintain configuration backups.

---

## Commands Used in Production

| Command | Production Use |
|----------|----------------|
| `echo` | Generate text or variables |
| `>` | Overwrite output to a file |
| `>>` | Append output to a file |
| `<` | Provide file input to a command |
| `2>` | Redirect error messages |
| `tee` | Display and save output simultaneously |
| `tee -a` | Append output while displaying |
| `nano` | Edit configuration files |
| `vim` | Advanced editing of production files |

---

## Best Practices

- Use `>>` when preserving existing data.
- Redirect errors to separate log files.
- Use `tee` for logging command output while monitoring it.
- Always back up important configuration files before editing.
- Learn Vim shortcuts for production environments.
- Verify redirected output after execution.

---

## Time Taken

50 Minutes

---

## Status

✅ Completed
