# Git Day 19 - Practice.md

## 🎯 Objective

Practice Git undo operations by restoring files, resetting commits, reverting changes, and recovering commit history using `git reflog`.

---

# 📋 Commands Executed

```bash
mkdir Git-Day19
cd Git-Day19

# Initialize Git repository
git init

# Create initial file
echo "Version 1" > app.txt

# Stage and commit
git add .
git commit -m "Initial commit"

# Modify file
echo "Version 2" >> app.txt

# Check repository status
git status

# Restore file to last committed state
git restore app.txt

# Modify file again
echo "Version 2" >> app.txt

# Stage and commit changes
git add .
git commit -m "Second commit"

# View commit history
git log --oneline

# Undo last commit but keep changes staged
git reset --soft HEAD~1

# Commit again
git add .
git commit -m "Second commit"

# Revert the latest commit
git revert HEAD

# View HEAD movement history
git reflog
```

---

# 📊 Expected Output

### Initialize Repository

```bash
Initialized empty Git repository in Git-Day19/.git/
```

---

### Git Status

```bash
On branch main

Changes not staged for commit:
modified: app.txt
```

---

### Commit History

```bash
a1b2c3d Second commit
x9y8z7w Initial commit
```

---

### Soft Reset

```bash
git reset --soft HEAD~1
```

Result:

- Last commit removed.
- Changes remain staged.

---

### Revert

```bash
git revert HEAD
```

Result:

```bash
[main 8d7f2ab] Revert "Second commit"
```

A new commit is created that reverses the previous commit.

---

### Reflog

```bash
git reflog
```

Example:

```text
8d7f2ab HEAD@{0}: revert: Revert "Second commit"
a1b2c3d HEAD@{1}: commit: Second commit
x9y8z7w HEAD@{2}: commit: Initial commit
```

---

# 📖 What You Learned

- Initialized a Git repository.
- Restored file changes using `git restore`.
- Created multiple commits.
- Viewed commit history with `git log`.
- Undid the latest commit using `git reset --soft`.
- Safely reversed a commit using `git revert`.
- Used `git reflog` to view and recover Git history.

---

# 🌍 Real-World Problems These Commands Solve

## `git restore`

- Discard accidental local file changes.
- Restore files to their last committed version.

---

## `git reset --soft`

- Undo the latest commit while keeping changes staged.
- Edit or combine commits before pushing.

---

## `git revert`

- Safely undo a commit that has already been pushed.
- Preserve project history for team collaboration.

---

## `git reflog`

- Recover lost commits after a reset.
- Restore accidentally deleted work.
- Trace HEAD movements during troubleshooting.

---

# ⚠ Common Errors & Solutions

## Error 1

```bash
pathspec 'app.txt' did not match any files
```

### Reason

The file does not exist or the filename is incorrect.

### Solution

Verify the filename:

```bash
ls
```

---

## Error 2

```bash
fatal: ambiguous argument 'HEAD~1'
```

### Reason

There is only one commit in the repository.

### Solution

Create another commit before using:

```bash
git reset --soft HEAD~1
```

---

## Error 3

```bash
nothing to revert
```

### Reason

No valid commit is available to revert.

---

## Error 4

```bash
working tree clean
```

### Reason

There are no changes to restore or commit.

---

# 💼 Production Use Cases

### DevOps Engineer

- Revert faulty CI/CD pipeline changes.
- Undo incorrect Infrastructure as Code commits.
- Recover deployment history.

---

### SRE Engineer

- Roll back production configuration changes.
- Recover deleted monitoring configurations.

---

### Cloud Engineer

- Restore Terraform or Kubernetes configuration files.
- Reverse infrastructure changes safely.

---

# ⭐ Best Practices

- Use `git restore` for local file changes.
- Use `git reset --soft` only before pushing commits.
- Use `git revert` for commits already shared with the team.
- Avoid `git reset --hard` unless you are certain you want to discard local work.
- Use `git reflog` before assuming work is permanently lost.

---

# ⏱ Time Taken

**35–45 Minutes**

---

# ✅ Status

**Completed**
