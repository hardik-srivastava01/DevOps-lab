# Day 18 – Git Branching & Merging

## 🎯 Objective

Learn how Git branches work, why they are essential in software development, and how developers safely develop new features without affecting the main codebase.

---

# What is a Branch?

A **Branch** is an independent line of development in a Git repository.

It allows developers to work on new features, bug fixes, or experiments without affecting the main project.

### Example

```
main
 │
 ├── Commit A
 ├── Commit B
 │
 └── feature-login
      ├── Commit C
      └── Commit D
```

---

# Why Do We Use Branches?

Branches help developers:

- Develop new features safely.
- Fix bugs without affecting production.
- Allow multiple developers to work simultaneously.
- Test experimental code.
- Keep the main branch stable.

### Real DevOps Example

```
main
│
├── Stable Production Code

feature/docker

feature/terraform

feature/monitoring
```

Each engineer works on a separate branch and merges it after testing.

---

# Main Branch vs Feature Branch

## Main Branch

The **main** branch contains stable, tested, and production-ready code.

Characteristics:

- Stable
- Deployable
- Protected in most organizations

---

## Feature Branch

A **Feature Branch** is created to develop a new feature or fix a bug.

Example:

```
main
│
├── feature-login

├── feature-payment

├── feature-dashboard
```

After testing, the feature branch is merged into the main branch.

---

# Main vs Feature Branch

| Main Branch | Feature Branch |
|-------------|----------------|
| Stable code | Development work |
| Production-ready | Temporary branch |
| Protected | Can be deleted after merge |
| Shared by team | Used by individual developers |

---

# What is HEAD?

**HEAD** is a pointer that indicates the currently checked-out branch or commit.

Example:

```
HEAD
 │
 ▼
main
 │
 ├── Commit A
 ├── Commit B
```

If you switch branches:

```
HEAD
 │
 ▼
feature-login
```

HEAD always points to your current working branch.

---

# What is Merge?

A **Merge** combines changes from one branch into another.

Example:

Before merge

```
main
 │
 ├── A
 ├── B
 │
 └── feature-login
      ├── C
      └── D
```

After merge

```
main
 │
 ├── A
 ├── B
 ├── C
 └── D
```

---

# Fast Forward Merge (Basic)

A **Fast Forward Merge** happens when the target branch has not changed since the feature branch was created.

Example:

Before

```
A --- B (main)
       \
        C --- D (feature)
```

After Fast Forward Merge

```
A --- B --- C --- D (main)
```

No extra merge commit is created.

---

# What is a Merge Conflict?

A **Merge Conflict** occurs when Git cannot automatically merge changes because the same part of a file has been modified in different branches.

Example:

### Main Branch

```text
Server Port = 8080
```

### Feature Branch

```text
Server Port = 9090
```

Git cannot decide which version is correct.

---

# Conflict Resolution

When a conflict occurs:

### Step 1

Run merge:

```bash
git merge feature-login
```

Git reports a conflict.

---

### Step 2

Open the conflicted file.

Example:

```text
<<<<<<< HEAD
Server Port = 8080
=======
Server Port = 9090
>>>>>>> feature-login
```

---

### Step 3

Edit the file and keep the correct content.

Example:

```text
Server Port = 9090
```

---

### Step 4

Stage the resolved file.

```bash
git add .
```

---

### Step 5

Complete the merge.

```bash
git commit
```

---

# Git Branch Workflow

```text
              feature-login
             /
main ───────●──────────────
             \
              feature-payment
```

After testing:

```text
feature-login
        │
        ▼
git merge
        │
        ▼
main
```

---

# Real DevOps Use Cases

## DevOps Engineer

- Create branches for CI/CD improvements.
- Test Infrastructure as Code safely.
- Merge only reviewed configurations.

---

## SRE Engineer

- Create emergency hotfix branches.
- Merge production fixes after testing.
- Maintain stable production systems.

---

## Cloud Engineer

- Develop Terraform modules.
- Test cloud infrastructure changes.
- Merge only validated cloud deployments.

---

# Common Mistakes

- Committing directly to the `main` branch.
- Forgetting to pull the latest changes before merging.
- Deleting a branch before it is merged.
- Ignoring merge conflicts.
- Creating very large feature branches.

---

# Key Takeaway

Branches allow developers to work independently without affecting the stable codebase. The **main** branch contains production-ready code, while **feature branches** are used for new development. Git merges completed work back into the main branch, and any merge conflicts must be resolved manually before the merge is completed.

---

# Next Step (Day 19)

- Working Directory vs Staging Area vs Repository
- git restore
- git reset (soft, mixed, hard)
- git revert
- git reflog
- Difference: reset vs revert
- When to use each command in production
