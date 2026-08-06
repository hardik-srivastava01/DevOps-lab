# Git Day 20 - Practice.md

## 🎯 Objective

Practice the complete GitHub collaboration workflow by creating a feature branch, making changes, committing them, pushing the branch to GitHub, checking remote branches, and syncing the local `main` branch.

---

# 📋 Commands Executed

```bash
# Create and switch to a new feature branch
git switch -c feature-login-ui

# Create a sample file
echo "Login UI Updated" > login.txt

# Check repository status
git status

# Stage changes
git add .

# Commit changes
git commit -m "Add login UI"

# Push the feature branch to GitHub
git push -u origin feature-login-ui

# Display local and remote branches
git branch -a

# Switch back to the main branch
git switch main

# Pull the latest changes from GitHub
git pull origin main
```

---

# 📊 Expected Output

## Create Branch

```bash
Switched to a new branch 'feature-login-ui'
```

---

## Git Status

```bash
On branch feature-login-ui

Untracked files:
  login.txt

nothing added to commit but untracked files present
```

---

## Commit

```bash
[feature-login-ui 3a8d4c2] Add login UI
 1 file changed, 1 insertion(+)
 create mode 100644 login.txt
```

---

## Push Branch

```bash
git push -u origin feature-login-ui
```

Output:

```text
Enumerating objects...
Counting objects...
Writing objects...
To https://github.com/username/repository.git
 * [new branch]      feature-login-ui -> feature-login-ui
Branch 'feature-login-ui' set up to track 'origin/feature-login-ui'.
```

---

## Check Branches

```bash
git branch -a
```

Example Output

```text
* feature-login-ui
  main
  remotes/origin/main
  remotes/origin/feature-login-ui
```

---

## Switch Back to Main

```bash
Switched to branch 'main'
```

---

## Pull Latest Changes

```bash
git pull origin main
```

Output (if already updated)

```text
Already up to date.
```

---

# 📖 What You Learned

- Created a feature branch using `git switch -c`.
- Added a new project file.
- Checked repository status.
- Staged and committed changes.
- Pushed a new branch to GitHub.
- Linked the local branch with the remote branch using `-u`.
- Viewed local and remote branches.
- Switched back to the `main` branch.
- Pulled the latest code from GitHub.

---

# 🌍 Real-World Problems These Commands Solve

## `git switch -c`

Creates an isolated branch for developing a new feature without affecting the production code.

---

## `git add`

Stages selected changes for the next commit.

---

## `git commit`

Creates a permanent snapshot of staged changes.

---

## `git push -u origin feature-login-ui`

Uploads the feature branch to GitHub and establishes tracking between local and remote branches.

---

## `git branch -a`

Displays all local branches and remote-tracking branches.

---

## `git pull origin main`

Synchronizes the local `main` branch with the latest changes from GitHub.

---

# ⚠ Common Errors & Solutions

## Error 1

```text
fatal: a branch named 'feature-login-ui' already exists
```

### Solution

Switch to the existing branch:

```bash
git switch feature-login-ui
```

---

## Error 2

```text
fatal: 'origin' does not appear to be a git repository
```

### Solution

Verify the remote:

```bash
git remote -v
```

If missing:

```bash
git remote add origin <repository-url>
```

---

## Error 3

```text
error: failed to push some refs
```

### Reason

The remote branch has newer commits.

### Solution

```bash
git pull origin feature-login-ui
git push
```

---

## Error 4

```text
nothing to commit, working tree clean
```

### Reason

No new changes are available to commit.

---

# 💼 Production Use Cases

### DevOps Engineer

- Develop CI/CD pipelines in feature branches.
- Push Terraform or Ansible changes for review.
- Open Pull Requests after pushing feature branches.

### SRE Engineer

- Create hotfix branches for production issues.
- Push monitoring and alerting configuration updates.

### Cloud Engineer

- Develop Kubernetes manifests and Terraform modules in isolated branches.
- Synchronize production infrastructure with GitHub.

---

# ⭐ Best Practices

- Create a separate branch for every feature or bug fix.
- Use descriptive branch names such as:
  - `feature-login-ui`
  - `feature-auth`
  - `bugfix-api-timeout`
- Commit frequently with meaningful messages.
- Push feature branches instead of committing directly to `main`.
- Pull the latest `main` branch before starting new work.

---

# ⏱ Time Taken

**25–35 Minutes**

---

# ✅ Status

**Completed**
