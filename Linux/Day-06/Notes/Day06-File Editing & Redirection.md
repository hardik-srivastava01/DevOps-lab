# Linux Day 6 - File Editing & Redirection

## Objective

Learn how Linux handles input, output, and errors, understand file redirection, and get introduced to Linux text editors like `nano` and `vim`.

---

## What is it?

Linux File Editing & Redirection is the process of creating, editing, and modifying files while controlling where command input comes from and where output or errors are sent. These features help automate tasks and manage files efficiently.

---

## Why is it important?

In DevOps, engineers frequently edit configuration files, redirect command output to log files, and capture errors for troubleshooting. Redirection is also widely used in shell scripting and automation.

**Real DevOps Use Cases**

- Save command output to log files.
- Store error messages separately.
- Edit configuration files.
- Automate tasks using shell scripts.
- Troubleshoot production servers.

---

## Concepts Learned

### Standard Input (`stdin`)

Accepts input from the keyboard or another command.

**Example**

```bash
sort < names.txt
```

---

### Standard Output (`stdout`)

Displays the successful output of a command on the terminal.

**Example**

```bash
echo "Hello Linux"
```

---

### Standard Error (`stderr`)

Displays error messages when a command fails.

**Example**

```bash
ls unknown-folder
```

---

### Output Redirection (`>`)

Saves command output to a file. If the file already exists, its content is overwritten.

**Syntax**

```bash
command > filename
```

**Example**

```bash
echo "Linux" > notes.txt
```

---

### Append Redirection (`>>`)

Adds new output to the end of an existing file without removing previous content.

**Syntax**

```bash
command >> filename
```

**Example**

```bash
echo "Docker" >> notes.txt
```

---

### Input Redirection (`<`)

Uses the contents of a file as input for a command.

**Syntax**

```bash
command < filename
```

**Example**

```bash
sort < names.txt
```

---

### Error Redirection (`2>`)

Stores error messages in a separate file instead of displaying them on the terminal.

**Syntax**

```bash
command 2> errors.txt
```

**Example**

```bash
ls invalid-folder 2> errors.txt
```

---

### nano

A simple and beginner-friendly Linux text editor.

**Example**

```bash
nano notes.txt
```

**Real Use**

Editing configuration files on Linux servers.

---

### vim (Introduction)

A powerful and advanced Linux text editor commonly used by system administrators and DevOps engineers.

**Example**

```bash
vim notes.txt
```

**Real Use**

Editing large configuration files and server settings.

---

## Commands Practiced

- echo
- >
- >>
- <
- 2>
- nano
- vim

---

## Common Mistakes

- Using `>` instead of `>>` and accidentally overwriting file contents.
- Forgetting to save changes before exiting `nano`.
- Opening `vim` without knowing how to exit.
- Confusing standard output (`stdout`) with standard error (`stderr`).
- Redirecting output to the wrong file.

---

## Hands-on Practice

Today I learned how Linux handles standard input, output, and error streams. I practiced redirecting command output to files, appending data without overwriting existing content, using input redirection, saving error messages separately, and editing files with `nano`. I also explored the basics of the `vim` editor.

---

## Key Takeaway

Understanding file editing and redirection is a fundamental Linux skill because it allows DevOps engineers to automate tasks, manage logs, edit configuration files, and troubleshoot systems efficiently.

---

## Next Step

Tomorrow I will practice Day1 to Day6 

- Linux-Introduction
- File-Management
- Linux-File-System-Navigation
- Linux-File-Permissions
- File-Viewing-and-Text-Processing-Basics
- File-Editing-and-Redirection
