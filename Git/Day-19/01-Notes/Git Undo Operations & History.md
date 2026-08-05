# Day 19 – Git Undo Operations & History

## 🎯 Objective

Learn how Git tracks changes, how to undo mistakes safely, and when to use commands like `git restore`, `git reset`, `git revert`, and `git reflog` in real production environments.

---

# Working Directory vs Staging Area vs Repository

Git manages files through three main areas.

## 1. Working Directory

The **Working Directory** is where you create, edit, and delete files.

Example:

```
README.md (modified)
main.py (edited)
```

Changes here are **not yet tracked** by Git.

---

## 2. Staging Area

The **Staging Area (Index)** is a temporary area where selected changes are prepared for the next commit.

Command:

```bash
git add README.md
```

Only staged files become part of the next commit.

---

## 3. Repository

The **Repository** stores the complete commit history permanently.

Command:

```bash
git commit -m "Updated README"
```

---

# Working Directory → Staging Area → Repository

```text
Working Directory
        │
    git add
        ▼
Staging Area
        │
  git commit
        ▼
Repository
```

---

# What is `git restore`?

`git restore` is used to discard unwanted changes in the Working Directory or unstage files from the Staging Area.

### Restore File

```bash
git restore README.md
```

### Unstage File

```bash
git restore --staged README.md
```

### Production Use

- Remove accidental edits.
- Unstage the wrong file before committing.

---

# What is `git reset`?

`git reset` moves the current branch (HEAD) to another commit.

It has three modes.

---

## Soft Reset

Moves HEAD only.

Files remain staged.

```bash
git reset --soft HEAD~1
```

Use Case

Undo the last commit but keep changes ready to recommit.

---

## Mixed Reset (Default)

Moves HEAD and unstages files.

Files remain in the Working Directory.

```bash
git reset HEAD~1
```

or

```bash
git reset --mixed HEAD~1
```

Use Case

Undo a commit and review changes before staging again.

---

## Hard Reset

Moves HEAD and deletes all local changes.

```bash
git reset --hard HEAD~1
```

⚠ Warning:

This permanently removes uncommitted work.

---

# What is `git revert`?

`git revert` safely undoes a commit by creating a **new commit** that reverses the previous changes.

Syntax

```bash
git revert <commit-id>
```

Example

```bash
git revert a1b2c3d
```

Production Use

- Undo a bad commit already pushed to GitHub.
- Preserve project history.

---

# What is `git reflog`?

`git reflog` records every movement of **HEAD**.

It helps recover commits that seem "lost."

Command

```bash
git reflog
```

Example Output

```text
abc123 HEAD@{0}: commit: Added login feature
xyz789 HEAD@{1}: reset: moving to HEAD~1
```

Production Use

Recover commits after:

- Hard reset
- Deleted branch
- Accidental checkout
- Mistaken reset

---

# Difference: `git reset` vs `git revert`

| git reset | git revert |
|------------|------------|
| Removes commit history | Creates a new commit |
| Changes branch history | Preserves history |
| Best for local commits | Best for shared/public commits |
| Can rewrite history | Safe for team projects |

---

# When to Use Each Command in Production

## `git restore`

- Undo local file changes.
- Remove accidental edits.
- Unstage files.

---

## `git reset --soft`

- Edit the last commit message.
- Combine commits before pushing.

---

## `git reset --mixed`

- Unstage files for review.
- Reorganize staged changes.

---

## `git reset --hard`

- Discard unwanted local work.
- Reset a development environment.

⚠ Never use on shared branches.

---

## `git revert`

- Undo a pushed commit safely.
- Fix production mistakes.
- Preserve Git history.

---

## `git reflog`

- Recover deleted commits.
- Restore after accidental reset.
- Recover lost branch history.

---

# Undo Operations Workflow

```text
Working Directory
      │
git restore
      │
      ▼
Staging Area
      │
git reset
      │
      ▼
Repository
      │
git revert
      │
      ▼
New Commit Created
```

---

# Real DevOps Use Cases

## DevOps Engineer

- Undo faulty CI/CD pipeline changes.
- Recover deleted Infrastructure as Code.
- Restore Jenkins pipeline configurations.

---

## SRE Engineer

- Revert production configuration mistakes.
- Recover lost deployment commits.
- Restore monitoring configurations.

---

## Cloud Engineer

- Recover Terraform changes.
- Undo Kubernetes manifest errors.
- Restore cloud deployment history.

---

# Common Mistakes

- Using `git reset --hard` without understanding the consequences.
- Using `git reset` on shared branches.
- Forgetting that `git revert` creates a new commit.
- Not checking `git reflog` before assuming work is lost.
- Confusing `git restore` with `git reset`.

---

# Key Takeaway

Git provides multiple ways to undo changes. Use **`git restore`** for local file changes, **`git reset`** for local history changes, **`git revert`** for safely undoing commits in shared repositories, and **`git reflog`** to recover seemingly lost commits. Choosing the correct command depends on whether the changes are local or already shared with others.

---

# Next Step (Day 20)

- What is a Pull Request (PR)?
- Why do companies use PRs?
- Code Review
- Approve / Request Changes
- Merge Pull Request
- Fork vs Clone
- GitHub Issues (Basic)
- GitHub Flow
