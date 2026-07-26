# Linux Day 12 CheatSheet

## One-Line Interview Answers

### What are Environment Variables?
→ Environment variables are key-value pairs that provide configuration data to the shell and applications.

### What is a Local Variable?
→ A local variable exists only in the current shell session and is not inherited by child processes.

### What is a Global (Environment) Variable?
→ A global variable is exported and is accessible to the current shell and all child processes.

### What is a Session Variable?
→ A session variable exists only until the current terminal session ends.

### What is a Persistent Variable?
→ A persistent variable remains available across login sessions by defining it in shell startup files.

### What is the PATH Variable?
→ `PATH` is an environment variable that tells Linux where to search for executable commands.

### What is `.bashrc`?
→ `.bashrc` is executed whenever a new interactive Bash shell starts.

### What is `.profile`?
→ `.profile` is executed during user login to configure the login environment.

### What is `.bash_profile`?
→ `.bash_profile` is executed for Bash login shells and commonly loads `.bashrc`.

### What does `export` do?
→ `export` makes a variable available to child processes.

### What does `echo $VARIABLE` do?
→ It displays the value of an environment variable.

### What does `source ~/.bashrc` do?
→ It reloads `.bashrc` without restarting the terminal.

### What is `printenv`?
→ `printenv` displays all exported environment variables.

### What is `env`?
→ `env` displays the current environment variables and can execute commands with a modified environment.

### What is `unset`?
→ `unset` removes a shell or environment variable.

---

# Interview Keywords

- Environment Variable
- Local Variable
- Global Variable
- Session Variable
- Persistent Variable
- PATH
- export
- Shell Environment
- Child Process
- `.bashrc`
- `.profile`
- `.bash_profile`
- `source`
- `printenv`
- `unset`

---

# Common Follow-up Questions

- Difference between Local and Global Variables?
- Difference between `.bashrc` and `.profile`?
- Why is `PATH` important?
- What happens if `PATH` is deleted?
- Why do we use `export`?
- How do you make an environment variable permanent?
- How do child processes inherit variables?
- What is the difference between `env` and `printenv`?
- How do you reload `.bashrc`?
- Where should application secrets be stored?

---

# Production Relevance

## DevOps

- Configure CI/CD pipeline variables.
- Set application runtime configuration.
- Manage Docker environment variables.
- Configure Terraform and Kubernetes.

## SRE

- Troubleshoot missing configuration variables.
- Diagnose PATH-related failures.
- Verify application startup environments.
- Validate runtime configuration.

## Cloud Engineer

- Configure AWS CLI.
- Set Azure/GCP SDK variables.
- Manage Kubernetes `KUBECONFIG`.
- Automate cloud deployments.

---

# 30–50 LPA Interview Tips

✅ Say **"Environment variables externalize configuration from code."**

✅ Mention **"`export` propagates variables to child processes."**

✅ Mention **"`PATH` determines where Linux searches for executables."**

✅ Mention **"Use `.bashrc` for interactive shell settings and `.profile`/`.bash_profile` for login initialization."**

✅ Mention **"Never store secrets in `.bashrc`; use Secret Managers, Vault, or CI/CD secret stores."**

---

# Rapid Revision

- Environment Variable → Configuration for shell/apps
- Local Variable → Current shell only
- Global Variable → Exported to child processes
- Session Variable → Exists until terminal closes
- Persistent Variable → Survives login/logout
- PATH → Search path for executables
- `.bashrc` → Interactive shell configuration
- `.profile` → Login session configuration
- `.bash_profile` → Bash login configuration
- `export` → Make variable available to child processes
- `echo $VAR` → Display variable value
- `source ~/.bashrc` → Reload configuration
- `printenv` → Show exported variables
- `env` → Show current environment
- `unset` → Remove variable
