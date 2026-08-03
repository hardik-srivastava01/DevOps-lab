# Git Day 17 - Practice.md

## 🎯 Objective

Practice connecting a local Git repository with GitHub by cloning a repository, verifying the remote, creating a file, committing changes, pushing them to GitHub, and pulling the latest updates.

---

# 📋 Commands Executed

```bash
mkdir Git-Day17
cd Git-Day17

# Clone your GitHub repository
git clone <repository-url>

# Move inside cloned repository
cd <repository-name>

# Check configured remote repository
git remote -v

# Create a new file
echo "Day 17 Practice" > day17.txt

# Check repository status
git status

# Stage all changes
git add .

# Commit changes
git commit -m "Day 17 - Remote Repository Practice"

# Push changes to GitHub
git push origin main

# Pull latest changes from GitHub
git pull origin main

# Exit practice folder
cd ..
```

---

# 📊 Expected Output

### Check Git Remote

```bash
$ git remote -v

origin  https://github.com/username/DevOps-Lab.git (fetch)
origin  https://github.com/username/DevOps-Lab.git (push)
```

---

### Check Status

```bash
$ git status

On branch main

Untracked files:
  day17.txt
```

---

### After `git add .`

```bash
Changes to be committed:
new file: day17.txt
```

---

### After Commit

```bash
[main abc1234] Day 17 - Remote Repository Practice
1 file changed, 1 insertion(+)
```

---

### After Push

```bash
Enumerating objects...
Counting objects...
Writing objects...
To https://github.com/username/DevOps-Lab.git
```

---

### After Pull

```bash
Already up to date.
```

---

# 🔍 What You Learned

- Cloned a remote GitHub repository.
- Verified the configured remote repository.
- Created a new file inside the repository.
- Checked repository status.
- Staged changes using `git add`.
- Created a Git commit.
- Uploaded commits to GitHub.
- Downloaded the latest changes from GitHub.

---

# 🌍 Real-World Problems These Commands Solve

## `git clone`

Used when joining a new company or project to download the complete codebase.

Example:

```bash
git clone git@github.com:company/project.git
```

---

## `git remote -v`

Verify which GitHub repository your local project is connected to.

Useful when troubleshooting push or pull issues.

---

## `git status`

Check modified, staged, and untracked files before committing.

---

## `git add .`

Prepare all modified files for the next commit.

---

## `git commit`

Create a snapshot of your current work with a meaningful message.

---

## `git push`

Upload local commits to GitHub.

Commonly used to:

- Share code with teammates
- Trigger CI/CD pipelines
- Backup project changes

---

## `git pull`

Download and merge the latest changes from GitHub before starting work.

Helps avoid merge conflicts.

---

# ⚠ Common Errors & Solutions

## Error 1

```bash
fatal: repository not found
```

### Reason

- Incorrect repository URL
- Repository doesn't exist
- No permission to access it

---

## Error 2

```bash
Authentication failed
```

### Solution

- Use a Personal Access Token (PAT) for HTTPS
- Or configure SSH authentication

---

## Error 3

```bash
! [rejected] main -> main (fetch first)
```

### Solution

```bash
git pull origin main
git push origin main
```

---

## Error 4

```bash
nothing to commit, working tree clean
```

### Reason

No changes were made after the previous commit.

---

# 💼 Production Use Cases

### DevOps Engineer

- Push Infrastructure as Code
- Upload Jenkins pipelines
- Store Kubernetes manifests
- Manage CI/CD configuration

---

### SRE Engineer

- Push production fixes
- Pull monitoring updates
- Synchronize automation scripts

---

### Cloud Engineer

- Version Terraform code
- Maintain deployment scripts
- Collaborate on cloud infrastructure

---

# ⭐ Best Practices

- Always run `git pull` before starting new work.
- Verify the remote with `git remote -v`.
- Write clear and meaningful commit messages.
- Prefer SSH authentication for long-term projects.
- Never commit passwords, API keys, or Personal Access Tokens.

---

# ⏱ Time Taken

**30–40 Minutes**

---

# ✅ Status

**Completed**
