# Linux Day 15 CheatSheet

## One-Line Interview Answers

### What is Bash?
→ Bash is the default Linux shell and a command-line scripting language.

### What is a Shell Script?
→ A shell script is a file containing Bash commands executed sequentially.

### Why is Automation Important?
→ Automation reduces manual effort, improves consistency, and minimizes human errors.

### What is Shebang (`#!/bin/bash`)?
→ Shebang specifies the interpreter used to execute the script.

### What is a Variable?
→ A variable stores reusable data within a Bash script.

### What is the `read` Command?
→ `read` accepts user input during script execution.

### What are Command-Line Arguments?
→ Command-line arguments are values passed to a script during execution (`$1`, `$2`, ...).

### What is `$1`?
→ `$1` represents the first command-line argument.

### What is `$2`?
→ `$2` represents the second command-line argument.

### What is an `if` Statement?
→ `if` executes code based on a condition.

### What is a `for` Loop?
→ A `for` loop iterates over a predefined set of values.

### What is a `while` Loop?
→ A `while` loop runs until its condition becomes false.

### What is Exit Status (`$?`)?
→ `$?` stores the exit code of the previously executed command.

### What does Exit Status `0` mean?
→ Exit status `0` indicates successful command execution.

### What does a Non-Zero Exit Status mean?
→ A non-zero exit status indicates command failure or an error.

### Why is `chmod +x` used?
→ It grants execute permission to a script.

### Difference between `bash script.sh` and `./script.sh`?
→ `bash script.sh` invokes Bash directly; `./script.sh` executes the script using its shebang.

---

# Interview Keywords

- Bash
- Shell
- Automation
- Shebang
- Variables
- User Input
- Command-Line Arguments
- Conditional Logic
- Loops
- Exit Status
- Executable Permission
- chmod
- CI/CD
- Idempotent Scripts
- Error Handling
- Automation Pipeline

---

# Common Follow-up Questions

- Why is `#!/bin/bash` required?
- What is the difference between Shell and Bash?
- When would you use `$1` instead of `read`?
- What happens if a script has no execute permission?
- Why is checking `$?` important?
- Difference between `for` and `while` loops?
- How do you terminate a script on failure?
- How do you validate user input?
- How do Bash scripts help in CI/CD?
- How would you debug a Bash script?

---

# Production Relevance

## DevOps

- Deployment automation
- Backup automation
- Docker automation
- CI/CD pipelines
- Infrastructure provisioning
- Health-check scripts

## SRE

- Incident automation
- Service recovery
- Monitoring scripts
- Log collection
- Alert automation

## Cloud Engineer

- AWS CLI automation
- EC2 management
- Cloud provisioning
- Infrastructure validation
- Scheduled maintenance

---

# 30–50 LPA Interview Tips

✅ Mention **"Automation reduces manual intervention and improves reliability."**

✅ Mention **"Exit Status drives decision-making in CI/CD pipelines."**

✅ Mention **"Shell scripts should be idempotent wherever possible."**

✅ Mention **"Always validate user input and handle failures gracefully."**

✅ Mention **"Bash is widely used for Linux automation, deployment, and operational tasks."**

---

# Rapid Revision

- Bash → Linux shell & scripting language
- Shell Script → File containing Bash commands
- Shebang → Defines interpreter
- Variable → Stores reusable data
- read → Accepts user input
- `$1` → First argument
- `if` → Conditional execution
- `for` → Fixed iteration
- `while` → Conditional iteration
- `chmod +x` → Makes script executable
- `$?` → Previous command's exit status
- `0` → Success
- Non-zero → Failure
- `./script.sh` → Execute script
- `bash script.sh` → Run using Bash interpreter
