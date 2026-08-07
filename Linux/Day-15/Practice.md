# Linux Day 15 Practice Log

## Objective

Practice the fundamentals of Bash scripting by creating, executing, and managing shell scripts. Learn how to assign execution permissions, run scripts, verify permissions, and validate command execution using Exit Status (`$?`).

---

## Commands Executed

```bash
mkdir Linux-Day15
cd Linux-Day15

# Create script
nano hello.sh

# Make executable
chmod +x hello.sh

# Run script
./hello.sh

# Check permissions
ls -l hello.sh

# Check exit status
echo $?

cd ..
rm -r Linux-Day15
```

---

## Result

- Successfully created the practice directory.
- Created a Bash script named `hello.sh`.
- Assigned execute permission using `chmod +x`.
- Executed the script successfully.
- Verified file permissions using `ls -l`.
- Checked the command Exit Status using `echo $?`.
- Removed the practice directory after completing the exercise.

---

## Issues Faced

Initially, the script could not be executed because it did not have execute permission.

After running:

```bash
chmod +x hello.sh
```

the script executed successfully.

I also learned that:

- `./hello.sh` executes the script from the current directory.
- `ls -l` displays file permissions and ownership.
- `echo $?` returns the Exit Status of the previously executed command.
- Exit Status **0** indicates success, while any **non-zero** value indicates failure.

---

## Real-World Problems You Can Solve

### DevOps

- Execute deployment scripts automatically.
- Validate CI/CD pipeline execution using Exit Status.
- Automate Docker image builds.
- Run infrastructure provisioning scripts.
- Verify deployment success before moving to the next pipeline stage.
- Automate repetitive Linux administration tasks.

### SRE

- Execute health-check scripts for production servers.
- Restart failed services automatically.
- Run diagnostic scripts during incidents.
- Validate automation success using Exit Status.
- Automate routine maintenance tasks.

### Cloud Engineer

- Automate AWS CLI operations.
- Deploy applications to cloud instances.
- Execute infrastructure validation scripts.
- Schedule cloud maintenance jobs.
- Automate EC2 start/stop operations using Bash.

---

## Commands Used in Production

| Command | Production Use |
|----------|----------------|
| `nano hello.sh` | Create or edit automation scripts |
| `chmod +x hello.sh` | Grant execute permission to deployment scripts |
| `./hello.sh` | Execute automation or deployment scripts |
| `ls -l hello.sh` | Verify script permissions and ownership |
| `echo $?` | Check command success in CI/CD pipelines |

---

## Best Practices

- Always start scripts with `#!/bin/bash`.
- Use meaningful script names.
- Grant only the required permissions.
- Check Exit Status after critical commands.
- Add comments for maintainability.
- Store scripts in Git for version control.
- Avoid hardcoding credentials or sensitive information.
- Test scripts in a staging environment before production.
- Validate user input before processing.

---

## Production Scenario

### Scenario

A CI/CD deployment pipeline executes `deploy.sh`, but the deployment stops unexpectedly.

### Troubleshooting Steps

1. Verify the script has execute permission using `ls -l`.
2. Execute the script manually.
3. Check the Exit Status using `echo $?`.
4. Review the script for failed commands.
5. Inspect deployment logs.
6. Fix the root cause and rerun the deployment.

---

## Time Taken

45 Minutes

---

## Status

✅ Completed
