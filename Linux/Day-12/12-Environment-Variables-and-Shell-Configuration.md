# Linux Day 12 - Environment Variables

## Objective

Learn how Linux stores and manages environment variables. Understand the difference between Local, Global, Session, and Persistent variables, how the `PATH` variable works, and how `.bashrc`, `.profile`, and `.bash_profile` are used in real-world Linux, DevOps, SRE, and Cloud environments.

---

## What are Environment Variables?

Environment Variables are key-value pairs that store configuration information used by the shell, applications, and operating system.

They allow programs to access required information without hardcoding values.

Example

```bash
HOME=/home/radhe
USER=radhe
PATH=/usr/local/bin:/usr/bin:/bin
```

---

## Why is it Important?

Environment Variables are widely used in DevOps, SRE, and Cloud Engineering for configuration management and automation.

Without them, applications would require hardcoded paths, usernames, passwords, and configuration values.

---

## Real DevOps Use Cases

- Store application configuration.
- Configure AWS CLI credentials.
- Set Java or Python paths.
- Store Kubernetes configuration paths.
- Configure Terraform variables.
- Pass secrets securely through CI/CD.
- Configure Docker containers.
- Set deployment environments.

---

# Important Concepts

---

## Local Variables

A Local Variable exists only in the current shell and is not inherited by child processes.

Example

```bash
NAME="Radhe"

echo $NAME
```

---

## Global Variables

A Global (Environment) Variable is available to the current shell and all child processes.

Example

```bash
export NAME="Radhe"

echo $NAME
```

---

## Session Variables

Session Variables remain available only until the current terminal session ends.

Example

```bash
PROJECT="DevOps"

echo $PROJECT
```

Close the terminal, and the variable disappears.

---

## Persistent Variables

Persistent Variables remain available even after logout or system restart.

They are usually configured in:

- `.bashrc`
- `.profile`
- `.bash_profile`

---

## PATH Variable

`PATH` is an environment variable that tells Linux where to search for executable commands.

View PATH

```bash
echo $PATH
```

Example

```
/usr/local/bin:/usr/bin:/bin
```

When you type:

```bash
python
```

Linux searches each directory in `PATH` until it finds the executable.

---

## `.bashrc`

`.bashrc` is executed whenever a new interactive Bash shell starts.

Common Uses

- Aliases
- Environment Variables
- Prompt customization
- Shell functions

Example

```bash
export EDITOR=nano
```

Apply changes

```bash
source ~/.bashrc
```

---

## `.profile`

`.profile` is executed during user login.

It is used to configure login session settings and environment variables that should be available after signing in.

---

## `.bash_profile`

`.bash_profile` is executed only for Bash login shells.

If present, it usually loads `.bashrc`.

Example

```bash
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
```

---

## `export`

`export` converts a local variable into an environment variable.

Example

```bash
NAME="Radhe"

export NAME
```

or

```bash
export NAME="Radhe"
```

Now child processes can access the variable.

---

## `echo $VARIABLE`

Displays the value of an environment variable.

Example

```bash
echo $HOME

echo $USER

echo $PATH
```

---

## Commands Practiced

```bash
env

printenv

set

export

unset

echo $HOME

echo $USER

echo $PATH

source ~/.bashrc

cat ~/.bashrc

cat ~/.profile

cat ~/.bash_profile
```

---

## Common Mistakes

- Forgetting to use `export` when child processes need the variable.
- Editing `.bashrc` but forgetting to run `source ~/.bashrc`.
- Hardcoding sensitive values like passwords or API keys.
- Accidentally overwriting the `PATH` variable.
- Confusing Local Variables with Environment Variables.
- Storing secrets directly in shell configuration files.

---

## Hands-on Practice

Today I explored Linux Environment Variables. I created local and global variables, viewed built-in environment variables, understood the purpose of the `PATH` variable, and learned how `.bashrc`, `.profile`, and `.bash_profile` are used to make configurations persistent across login sessions.

---

## Real World Problems You Can Solve

### DevOps

- Configure application environments.
- Set Java, Python, and Node.js paths.
- Pass configuration values to deployment scripts.
- Configure Docker container environments.
- Manage CI/CD pipeline variables.

### SRE

- Diagnose application startup failures caused by missing variables.
- Validate runtime configuration.
- Troubleshoot PATH-related command failures.
- Configure monitoring tools.

### Cloud Engineer

- Configure AWS CLI credentials.
- Set Terraform variables.
- Manage Kubernetes kubeconfig paths.
- Configure cloud SDK environments.
- Automate cloud deployments using environment variables.

---

## Best Practices

- Use meaningful variable names.
- Export variables only when necessary.
- Store secrets in Secret Managers or Vaults instead of shell files.
- Never hardcode credentials in scripts.
- Backup shell configuration files before editing.
- Use `source ~/.bashrc` after making changes.
- Validate the `PATH` variable before modifying it.

---

## Key Takeaway

Environment Variables separate configuration from code, making Linux systems, automation scripts, and cloud applications more secure, reusable, and easier to manage. Mastering them is essential for every DevOps, SRE, and Cloud Engineer.

---

## Next Step

Tomorrow I will learn:

- IP Address
- Public IP vs Private IP
- Loopback Address (127.0.0.1)
- Hostname
- DNS (Domain Name System)
- Port Numbers
- TCP vs UDP (Basic)
- Network Interfaces
- Routing (Basic)
