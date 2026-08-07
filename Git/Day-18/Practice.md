# Git Day 18 - Practice.md

## 🎯 Objective

Practice creating Git branches, switching between branches, committing changes, merging a feature branch into the main branch, and visualizing the Git commit history.

---

# 📋 Commands Executed

```bash
mkdir Git-Day18
cd Git-Day18

# Initialize Git repository
git init

# Create README file
echo "# Project" > README.md

# Stage and commit
git add .
git commit -m "Initial commit"

# Create a new branch
git branch feature-login

# Switch to feature branch
git switch feature-login

# Verify current branch
git branch

# Add a new feature
echo "Login Feature" > login.txt

# Stage and commit feature
git add .
git commit -m "Added login feature"

# Switch back to main branch
git switch main

# Merge feature branch
git merge feature-login

# Display commit graph
git log --oneline --graph --all

# Exit practice directory
cd ..
rm -rf Git-Day18
```

---

# 📊 Expected Output

### Initialize Repository

```bash
Initialized empty Git repository in Git-Day18/.git/
```

---

### Check Current Branch

```bash
$ git branch

* feature-login
  main
```

---

### Merge Branch

```bash
Updating abc123..def456
Fast-forward
login.txt | 1 +
```

---

### View Commit Graph

```bash
* def456 Added login feature
* abc123 Initial commit
```

---

# 📖 What You Learned

- Initialized a new Git repository.
- Created the first commit.
- Created a feature branch.
- Switched between branches.
- Added and committed changes on the feature branch.
- Merged the feature branch into the `main` branch.
- Viewed the repository history as a graph.

---

# 🌍 Real-World Problems These Commands Solve

## `git branch`

Creates separate branches for features, bug fixes, or experiments without affecting the production code.

---

## `git switch`

Moves your working directory from one branch to another.

---

## `git merge`

Combines completed work from a feature branch into the target branch.

---

## `git log --graph --all`

Visualizes branch history, commits, and merges, making it easier to understand project evolution.

---

# ⚠ Common Errors & Solutions

## Error 1

```bash
error: pathspec 'main' did not match any file(s) known to git
```

### Reason

Your default branch may be `master` instead of `main`.

### Solution

Check branch names:

```bash
git branch
```

Then switch using the correct branch name:

```bash
git switch master
```

or rename it:

```bash
git branch -M main
```

---

## Error 2

```bash
fatal: not a git repository
```

### Reason

You are outside the Git repository.

### Solution

Navigate into the repository:

```bash
cd Git-Day18
```

---

## Error 3

```bash
Already up to date.
```

### Reason

The feature branch has already been merged.

---

## Error 4

```bash
CONFLICT (content): Merge conflict
```

### Solution

- Open the conflicted file.
- Resolve the conflict manually.
- Stage the resolved file:

```bash
git add .
```

- Complete the merge:

```bash
git commit
```

---

# 💼 Production Use Cases

### DevOps Engineer

- Develop CI/CD pipelines in feature branches.
- Test Infrastructure as Code safely.
- Merge reviewed changes into the production branch.

---

### SRE Engineer

- Create hotfix branches for production issues.
- Merge tested fixes after validation.

---

### Cloud Engineer

- Develop Terraform or Kubernetes changes in isolated branches.
- Merge infrastructure updates after review.

---

# ⭐ Best Practices

- Create a new branch for every feature or bug fix.
- Never develop directly on the `main` branch.
- Pull the latest changes before merging.
- Write meaningful commit messages.
- Delete feature branches after successful merges.

---

# ⏱ Time Taken

**30–40 Minutes**

---

# ✅ Status

**Completed**
