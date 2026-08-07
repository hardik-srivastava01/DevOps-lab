# Git Day 18 CheatSheet
## Git Branching & Merging

---

# One-Line Interview Answers

### What is a Branch?
→ A branch is an independent line of development in Git.

### Why do we use Branches?
→ To develop features or fix bugs without affecting the main code.

### What is the Main Branch?
→ The main branch contains stable, production-ready code.

### What is a Feature Branch?
→ A temporary branch created for developing a specific feature or bug fix.

### What is HEAD?
→ HEAD is a pointer to the currently checked-out branch or commit.

### What is Merge?
→ Merge combines changes from one branch into another.

### What is Fast Forward Merge?
→ A merge where Git moves the branch pointer forward without creating a merge commit.

### What is a Merge Conflict?
→ A merge conflict occurs when Git cannot automatically combine changes because the same part of a file was modified differently.

### How do you resolve a Merge Conflict?
→ Edit the conflicted file, keep the correct changes, then run:

```bash
git add .
git commit
```

---

# Important Commands

## Create Branch

```bash
git branch feature-login
```

## List Branches

```bash
git branch
```

## Switch Branch

```bash
git switch feature-login
```

## Merge Branch

```bash
git merge feature-login
```

## View Commit Graph

```bash
git log --oneline --graph --all
```

---

# Git Branch Workflow

```text
main
 │
 ├── Initial Commit
 │
 └── feature-login
      │
      └── Login Feature

git merge feature-login

        │
        ▼

main
 │
 ├── Initial Commit
 └── Login Feature
```

---

# Common Mistakes

❌ Working directly on `main`

❌ Forgetting to commit before switching branches

❌ Ignoring merge conflicts

❌ Deleting a branch before merging

❌ Not pulling latest changes before merge

---

# Production Relevance

✅ Feature Development

✅ Bug Fixes

✅ CI/CD Changes

✅ Infrastructure as Code

✅ Team Collaboration

---

# Rapid Revision

```text
Branch → Independent development line

Main → Stable production code

Feature Branch → New feature development

HEAD → Current branch pointer

Merge → Combine branches

Fast Forward → Merge without merge commit

Merge Conflict → Same file edited differently

Conflict Resolution → Edit → git add → git commit
```
