# Linux Day 15 - Bash Scripting Fundamentals

## Objective

Learn the fundamentals of Bash scripting to automate repetitive Linux tasks. Understand script structure, variables, user input, command-line arguments, conditional statements, loops, and exit status—core skills required for DevOps, SRE, and Cloud Engineering.

---

## What is Bash?

Bash (Bourne Again Shell) is the default command-line interpreter on most Linux systems.

It acts as a bridge between the user and the Linux kernel, allowing users to execute commands, automate tasks, and manage the operating system.

---

## Why is it Important?

Almost every DevOps, SRE, and Cloud Engineer writes Bash scripts to automate routine operations.

Without Bash scripting:

- Server management becomes manual.
- Deployments become slower.
- Monitoring becomes repetitive.
- Infrastructure management is inefficient.
- Human errors increase.

---

## Real DevOps Use Cases

- Automating server provisioning.
- Backup automation.
- Log cleanup.
- Health checks.
- Deployment automation.
- Service monitoring.
- Cron job automation.
- Kubernetes administration scripts.
- AWS EC2 automation.
- Docker container management.

---

# Important Concepts

---

## What is Bash?

Bash is a Unix/Linux shell and scripting language used to execute commands and automate administrative tasks.

---

## What is a Shell Script?

A Shell Script is a text file containing Bash commands that execute sequentially.

Example

```bash
#!/bin/bash

echo "Hello DevOps"
```

Instead of executing commands one by one, they are executed automatically.

---

## Why Automation?

Automation eliminates repetitive manual work.

Benefits

- Faster execution
- Consistent results
- Reduced human error
- Better scalability
- Time savings
- Improved reliability

---

## Script Structure

Every Bash script usually starts with a Shebang.

```bash
#!/bin/bash
```

This tells Linux which interpreter should execute the script.

Example

```bash
#!/bin/bash

echo "Linux"
echo "DevOps"
```

---

## Variables

Variables store data that can be reused.

Example

```bash
NAME="Radhe"

echo $NAME
```

Rules

- No spaces around `=`
- Variable names are case-sensitive.

---

## User Input (`read`)

The `read` command accepts input from the user.

Example

```bash
read NAME

echo $NAME
```

Prompt Example

```bash
read -p "Enter your name: " NAME

echo $NAME
```

---

## Command Line Arguments

Arguments passed while executing a script.

Example

```bash
./script.sh Docker Kubernetes
```

Inside the script

```bash
$1
```

First argument

```bash
$2
```

Second argument

Example

```bash
echo $1
echo $2
```

Output

```
Docker
Kubernetes
```

---

## Conditional Statements

Conditional statements execute different blocks based on conditions.

Example

```bash
if [ $AGE -ge 18 ]
then
    echo "Eligible"
else
    echo "Not Eligible"
fi
```

Common Operators

```
-eq

-ne

-gt

-lt

-ge

-le
```

String Comparison

```
=

!=

-z

-n
```

---

## Loops

Loops execute repetitive tasks automatically.

---

### For Loop

Used when the number of iterations is known.

Example

```bash
for i in 1 2 3 4 5
do
    echo $i
done
```

---

### While Loop

Runs until the specified condition becomes false.

Example

```bash
COUNT=1

while [ $COUNT -le 5 ]
do
    echo $COUNT
    COUNT=$((COUNT+1))
done
```

---

## Exit Status (`$?`)

Every Linux command returns an Exit Status.

```
0
```

Success

```
Non-zero
```

Failure

Example

```bash
mkdir Test

echo $?
```

If the command succeeds

```
0
```

If the command fails

```
1
```

or another non-zero value depending on the error.

Exit Status is heavily used in automation and CI/CD pipelines.

---

## Commands Practiced

```bash
bash script.sh

chmod +x script.sh

./script.sh

echo $?

read

if

for

while

exit

test
```

---

## Common Mistakes

- Forgetting the `#!/bin/bash` shebang.
- Not making the script executable.
- Adding spaces around `=`.
- Forgetting to quote variables when appropriate.
- Ignoring Exit Status.
- Infinite loops caused by incorrect conditions.
- Hardcoding values instead of using variables.

---

## Hands-on Practice

Today I learned how Bash scripts automate Linux administration. I created scripts using variables, accepted user input, used command-line arguments, implemented conditional statements and loops, and verified command execution using Exit Status. I also understood why Bash scripting is a core skill for DevOps automation.

---

## Real World Problems You Can Solve

### DevOps

- Automate deployments.
- Restart failed services.
- Create daily backups.
- Rotate logs.
- Monitor server health.
- Automate Docker operations.
- Trigger CI/CD tasks.
- Provision infrastructure.

### SRE

- Perform health checks.
- Automate incident response.
- Restart crashed services.
- Collect diagnostic logs.
- Validate service availability.
- Generate monitoring reports.

### Cloud Engineer

- Automate AWS CLI tasks.
- Start or stop EC2 instances.
- Monitor cloud resources.
- Schedule cloud maintenance.
- Create infrastructure validation scripts.
- Automate cloud provisioning workflows.

---

## Best Practices

- Write reusable scripts.
- Add comments for readability.
- Check Exit Status after important commands.
- Validate user input.
- Use meaningful variable names.
- Avoid hardcoding sensitive information.
- Follow the Principle of Least Privilege.
- Test scripts before production deployment.
- Store scripts in Git for version control.

---

## Key Takeaway

Bash scripting is the foundation of automation in Linux. Every DevOps, SRE, and Cloud Engineer uses Bash to automate deployments, infrastructure management, monitoring, troubleshooting, and operational workflows.

---

## Next Step

Tomorrow I will make project

- Linux Production Readiness Project
