# Day 12 – Linux Environment Variables & Shell Configuration

## 📚 Theory (Samajhna Hai)

### 1. What is an Environment Variable?

Environment Variables are **key-value pairs** that store system or user-specific information. Programs and the shell use them to know where files, executables, and configurations are located.

**Example:**

```bash
HOME=/home/radhe
USER=radhe
PATH=/usr/local/bin:/usr/bin:/bin
```

---

## 2. Types of Variables

### Local Variable

Accessible only in the current shell.

```bash
name="Hardik"
echo $name
```

---

### Environment Variable

Available to child processes after exporting.

```bash
export name="Hardik"
echo $name
```

---

## 3. Common Environment Variables

| Variable | Purpose |
|----------|---------|
| HOME | User's home directory |
| PATH | Locations where executables are searched |
| USER | Current username |
| SHELL | Current shell |
| PWD | Current working directory |
| HOSTNAME | System hostname |
| TERM | Terminal type |

View all variables:

```bash
printenv
```

or

```bash
env
```

---

## 4. PATH Variable

PATH tells Linux where to search for commands.

Check PATH:

```bash
echo $PATH
```

Example Output:

```text
/usr/local/bin:/usr/bin:/bin
```

Directories are separated by `:`.

---

## 5. Creating Variables

```bash
city="Kanpur"
echo $city
```

Delete Variable

```bash
unset city
```

---

## 6. export Command

Makes a variable available to child processes.

```bash
export PROJECT="DevOps"
```

Check:

```bash
echo $PROJECT
```

---

## 7. .bashrc

Runs every time a new interactive Bash shell starts.

Location:

```bash
~/.bashrc
```

Example:

```bash
export JAVA_HOME=/usr/lib/jvm/java
alias ll="ls -lah"
```

Reload:

```bash
source ~/.bashrc
```

---

## 8. .profile

Runs when the user logs in.

Location:

```bash
~/.profile
```

Used for login-shell configurations.

---

## 9. .bash_profile

Used mainly on login shells.

If present, Bash executes:

```text
.bash_profile
```

instead of

```text
.profile
```

---

## 10. Difference

| File | Runs When |
|------|-----------|
| .bashrc | Every interactive shell |
| .profile | Login shell |
| .bash_profile | Login shell (preferred if exists) |

---

# 💻 Hands-on Practice

## View Variables

```bash
printenv
env
```

---

## Display Variables

```bash
echo $HOME
echo $USER
echo $PATH
echo $SHELL
echo $PWD
```

---

## Create Local Variable

```bash
course="Linux"
echo $course
```

---

## Export Variable

```bash
export COMPANY="OpenAI"
echo $COMPANY
```

---

## Remove Variable

```bash
unset COMPANY
```

---

## Open .bashrc

```bash
nano ~/.bashrc
```

Add:

```bash
export MY_NAME="Hardik"
alias gs="git status"
```

Save and reload:

```bash
source ~/.bashrc
```

---

## Verify

```bash
echo $MY_NAME
gs
```

---

# 🎯 Interview Questions

1. What is an environment variable?
2. Difference between local and environment variables?
3. What is PATH?
4. Why do we use export?
5. Difference between `.bashrc` and `.profile`?
6. What is `.bash_profile`?
7. How do you permanently add an environment variable?
8. How do you reload `.bashrc`?
9. Difference between `env` and `printenv`?
10. How do child processes inherit variables?

---

# ⭐ Key Takeaways

- Environment variables store system information.
- `PATH` tells Linux where to find commands.
- `export` shares variables with child processes.
- `.bashrc` is for interactive shell configuration.
- `.profile` and `.bash_profile` are used for login shells.
- Use `source ~/.bashrc` to apply changes without restarting the terminal.

---

# Next Steps
  Tommarow i will learn

- IP Address
- Public IP vs Private IP
- Loopback Address (127.0.0.1)
- Hostname
- DNS (Domain Name System)
- Port Numbers
- TCP vs UDP (Basic)
- Network Interfaces
- Routing (Basic)
