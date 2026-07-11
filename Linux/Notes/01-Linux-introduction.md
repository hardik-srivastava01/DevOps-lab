# Linux Day 1 – Introduction

## Objective

Today I want to understand what Linux is, why it is important for DevOps, and learn how to use basic terminal commands on Ubuntu.

---

## What is Linux?

Linux is a free and open-source operating system. It is widely used in servers, cloud platforms, and development environments because it is stable, secure, and highly customizable.

---

## Why is it important?

Most cloud serrs run Linux. As a future DevOps Engineer, I need to know how to work with the Linux terminal because tasks like server management, deployments, automation, and troubleshooting are commonly performed using Linux.

**Real DevOps Example:**
If an application is deployed on an AWS EC2 Ubuntu server, a DevOps engineer connects to the server using SSH and manages it through the Linux terminal.

---

## Commands Practiced

## Commands Practiced

| Command | Purpose |
|---------|---------|
| `pwd` | Display the current working directory. |
| `ls` | List files and directories. |
| `ls -la` | Show all files, including hidden files, with detailed information. |
| `cd` | Change the current directory. |
| `mkdir Day1-Linux` | Create a new directory named `Day1-Linux`. |
| `touch notes.txt` | Create an empty file named `notes.txt`. |
| `echo "Hello Linux" > notes.txt` | Write text into `notes.txt`. |
| `cat notes.txt` | Display the contents of `notes.txt`. |
| `whoami` | Show the currently logged-in user. |
| `hostname` | Display the system hostname. |
| `uname -a` | Show detailed Linux kernel and system information. |
| `clear` | Clear the terminal screen. |
| `history` | Display the history of previously executed commands. |

---

## Syntax

```bash
pwd

ls

ls -la

cd <directory_name>

mkdir <directory_name>

touch <file_name>

echo "<text>" > <file_name>

cat <file_name>

whoami

hostname

uname -a

clear

history

rm <file_name>

rm -r <directory_name>
```

---

## Examples

### Check current directory

```bash
pwd
```

### List all files, including hidden files

```bash
ls -la
```

### Create a new directory

```bash
mkdir Day1-Linux
```

### Move into the directory

```bash
cd Day1-Linux
```

### Create a new file

```bash
touch notes.txt
```

### Write text into the file

```bash
echo "Hello Linux" > notes.txt
```

### Read the file

```bash
cat notes.txt
```

### Check current user

```bash
whoami
```

### Check hostname

```bash
hostname
```

### Check Linux system information

```bash
uname -a
```

### Clear the terminal

```bash
clear
```

### View command history

```bash
history
```

---

## Common Mistakes

- Using `rm -r` without checking the folder name.
- Forgetting to use `cd ..` before deleting the current directory.
- Running commands in the wrong directory.
- Deleting important files accidentally.

---

## Hands-on Practice

Today I practiced all the basic Linux commands on Ubuntu. I created folders and files, navigated between directories, listed files, and deleted the test folder after completing the practice. I repeated each command multiple times until I understood its purpose.

---

## Key Takeaway

Today I learned that Linux is the foundation of DevOps. Understanding basic terminal commands is the first step toward working with cloud servers and real production environments.

---

## Next Step

Tomorrow I will learn:

- Linux File System
- Hidden Files
- `pwd`, `ls`, and `cd` in more depth
