# Linux Day 6 CheatSheet

## One-Line Interview Answers

### What is Standard Input (stdin)?
→ stdin is the default input stream (File Descriptor **0**).

### What is Standard Output (stdout)?
→ stdout is the default output stream for successful command results (File Descriptor **1**).

### What is Standard Error (stderr)?
→ stderr is the default stream for error messages (File Descriptor **2**).

### What is Output Redirection (`>`)?
→ `>` redirects stdout to a file and **overwrites** existing content.

### What is Append Redirection (`>>`)?
→ `>>` appends stdout to the end of a file without overwriting it.

### What is Input Redirection (`<`)?
→ `<` provides input to a command from a file instead of the keyboard.

### What is Error Redirection (`2>`)?
→ `2>` redirects only stderr to a file.

### What is `tee`?
→ `tee` displays output on the terminal and writes it to a file simultaneously.

### What is `tee -a`?
→ `tee -a` appends output to a file while displaying it.

### What is Nano?
→ Nano is a simple terminal-based text editor for beginners.

### What is Vim?
→ Vim is a powerful and efficient terminal text editor used in production environments.

### Difference between `>` and `>>`?
→ `>` overwrites the file; `>>` appends to the file.

### Difference between `cat` and `tee`?
→ `cat` displays file content; `tee` displays output while saving it to a file.

### Why is stderr separated from stdout?
→ Separating stderr allows independent logging and easier troubleshooting.

### Why is Vim preferred in production?
→ Vim is lightweight, fast, and available on almost every Linux server.

---

# Interview Keywords

- stdin
- stdout
- stderr
- File Descriptor (FD)
- Redirection
- Output Redirection
- Append Redirection
- Error Redirection
- tee
- nano
- vim
- Logging
- Automation

---

# Common Follow-up Questions

- What are File Descriptors 0, 1, and 2?
- Difference between stdout and stderr?
- Difference between `>` and `>>`?
- What does `2>` do?
- How do you save output while displaying it?
- Why use `tee` instead of `>`?
- Why is Vim preferred over Nano?
- How do you redirect both stdout and stderr?
- How do you append using `tee`?
- Why separate logs and error logs?

---

# Production Relevance

## DevOps

- Store deployment logs.
- Save CI/CD outputs.
- Edit configuration files.
- Capture script execution results.

## SRE

- Troubleshoot production errors.
- Separate error logs.
- Debug failed deployments.
- Analyze application logs.

## Cloud Engineer

- Configure cloud servers.
- Edit Nginx/SSH configuration.
- Capture provisioning logs.
- Debug startup scripts.

---

# 30–50 LPA Interview Tips

✅ Say **"stdin, stdout, and stderr correspond to File Descriptors 0, 1, and 2."**

✅ Mention **"`>` overwrites, while `>>` appends."**

✅ Mention **"`tee` is useful for logging command output without hiding it from the terminal."**

✅ Mention **"Separate stdout and stderr for easier production troubleshooting."**

✅ Mention **"Vim is the preferred editor in production because it's lightweight and universally available."**

---

# Rapid Revision

- stdin → FD 0 (Input)
- stdout → FD 1 (Output)
- stderr → FD 2 (Error)
- `>` → Overwrite output
- `>>` → Append output
- `<` → Input redirection
- `2>` → Error redirection
- `tee` → Display + Save output
- `tee -a` → Display + Append output
- `nano` → Beginner editor
- `vim` → Production editor
- `cat` → Display file
- `>` + `2>&1` → Redirect stdout & stderr together
