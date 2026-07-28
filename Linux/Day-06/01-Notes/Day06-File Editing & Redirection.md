# Linux Day 6 - Input, Output Redirection & Text Editors

## Objective

Learn how Linux handles **Standard Input (stdin), Standard Output (stdout), and Standard Error (stderr)**. Understand how to redirect input and output, manage logs, and edit files using **nano** and **vim**. These concepts are essential for automation, scripting, troubleshooting, and log management in DevOps, SRE, and Cloud Engineering.

---

# What is Standard Input (stdin)?

**Standard Input (stdin)** is the default input stream from which a program receives data.

By default, stdin comes from the **keyboard**.

Example:

```bash
cat
```

Type:

```
Hello Linux
```

Press `Ctrl + D` to end input.

---

# What is Standard Output (stdout)?

**Standard Output (stdout)** is the default output stream where a command displays its successful results.

By default, stdout is displayed on the **terminal**.

Example:

```bash
echo "Hello Linux"
```

Output:

```text
Hello Linux
```

---

# What is Standard Error (stderr)?

**Standard Error (stderr)** is the stream used to display error messages.

Example:

```bash
cat file.txt
```

If the file doesn't exist:

```text
cat: file.txt: No such file or directory
```

This error is sent to **stderr**, not stdout.

---

# Why is it Important?

Redirection helps automate tasks, store logs, separate errors, and build reliable scripts.

---

# Real DevOps Use Cases

- Save application logs.
- Separate error logs from output logs.
- Redirect deployment results to files.
- Read configuration from files.
- Automate shell scripts.
- Troubleshoot failed deployments.

---

# Important Concepts

---

## Output Redirection (`>`)

Writes command output to a file.

If the file exists, it is **overwritten**.

Example:

```bash
echo "Linux" > notes.txt
```

---

## Append Redirection (`>>`)

Appends output to the end of a file.

Existing data remains unchanged.

Example:

```bash
echo "Docker" >> notes.txt
```

---

## Input Redirection (`<`)

Provides input to a command from a file instead of the keyboard.

Example:

```bash
sort < names.txt
```

---

## Error Redirection (`2>`)

Redirects only error messages to a file.

Example:

```bash
cat missing.txt 2> error.log
```

---

## Redirect stdout and stderr Together

```bash
command > output.log 2>&1
```

Both successful output and errors are stored in one file.

---

# Linux Text Editors

---

## Nano

Nano is a beginner-friendly terminal text editor.

Open a file:

```bash
nano notes.txt
```

Useful Shortcuts

Save:

```
Ctrl + O
```

Exit:

```
Ctrl + X
```

Search:

```
Ctrl + W
```

---

## Vim

Vim is a powerful and highly efficient terminal text editor widely used by DevOps and SRE engineers.

Open a file:

```bash
vim notes.txt
```

Basic Workflow

Enter Insert Mode:

```
i
```

Save and Exit:

```
:wq
```

Exit without Saving:

```
:q!
```

---

# Commands Practiced

```bash
echo "Linux" > notes.txt

echo "Docker" >> notes.txt

sort < names.txt

cat missing.txt 2> error.log

ls > files.txt

ls invalid 2> error.log

command > output.log 2>&1

nano notes.txt

vim notes.txt
```

---

# Common Mistakes

- Using `>` instead of `>>` and accidentally overwriting files.
- Ignoring error messages during troubleshooting.
- Mixing stdout and stderr unintentionally.
- Forgetting to save changes in Nano or Vim.
- Editing production configuration files without backups.

---

# Hands-on Practice

Today I learned how Linux handles input, output, and error streams. I redirected command output, appended data, captured error logs, used input redirection, and edited files with Nano and Vim. I also understood how these techniques improve automation and troubleshooting.

---

# Real World Problems You Can Solve

## DevOps

- Save deployment logs.
- Separate application logs and error logs.
- Edit configuration files.
- Automate shell scripts.
- Capture CI/CD output.

## SRE

- Analyze production error logs.
- Troubleshoot failed services.
- Investigate deployment failures.
- Maintain server configuration files.
- Debug automation scripts.

## Cloud Engineer

- Configure cloud VM settings.
- Edit Nginx and SSH configuration files.
- Store infrastructure logs.
- Troubleshoot startup scripts.
- Capture provisioning output.

---

# Best Practices

- Use `>>` when preserving existing data.
- Separate stdout and stderr during troubleshooting.
- Always back up configuration files before editing.
- Learn Vim for production environments.
- Store logs with meaningful filenames.
- Verify redirected output after execution.
- Avoid editing production files directly without validation.

---

# Key Takeaway

Input, output, and error redirection are fundamental Linux features that enable automation, logging, and troubleshooting. Combined with Nano and Vim, they form the core toolkit used daily by DevOps, SRE, and Cloud Engineers.

---

# Next Step

Tomorrow I will learn:

- what is Archive ?
- what is Compression ? 
- Archive vs Compression
- .tar
- .gz
- .tar.gz 
- .zip
- Backup concept
