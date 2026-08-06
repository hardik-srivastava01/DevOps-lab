# Day 20 – Pull Requests, Code Review & GitHub Collaboration

## 🎯 Objective

Learn how developers collaborate using GitHub through Pull Requests (PRs), Code Reviews, GitHub Flow, Forks, Branch Protection, and Merge Strategies.

---

# What is a Pull Request (PR)?

A **Pull Request (PR)** is a request to merge changes from one branch into another branch.

It allows team members to review code, discuss changes, run automated tests, and approve the code before it is merged.

### Example

```text
feature-login-ui
        │
        ▼
Pull Request
        │
        ▼
main
```

---

## Why do we use Pull Requests?

- Review code before merging.
- Detect bugs early.
- Maintain code quality.
- Trigger CI/CD pipelines.
- Enable team collaboration.

### Real DevOps Example

A DevOps engineer updates a Jenkins pipeline.

Instead of pushing directly to `main`, they:

1. Create a feature branch.
2. Push it to GitHub.
3. Open a Pull Request.
4. Team reviews the changes.
5. CI pipeline runs automatically.
6. PR is approved and merged.

---

# What is Code Review?

A **Code Review** is the process of examining another developer's code before merging it.

Reviewers check for:

- Bugs
- Security issues
- Performance
- Coding standards
- Readability
- Best practices

---

## Benefits of Code Review

- Improves code quality.
- Reduces production bugs.
- Encourages knowledge sharing.
- Ensures team coding standards.
- Improves security.

---

# What is GitHub Flow?

GitHub Flow is a simple branching workflow used by many software teams.

### Steps

```text
main
 │
 │
Create Branch
 │
 ▼
feature-login
 │
Commit Changes
 │
 ▼
Push to GitHub
 │
 ▼
Open Pull Request
 │
 ▼
Code Review
 │
 ▼
Merge
 │
 ▼
Delete Branch
```

---

# GitHub Flow Commands

Create a branch

```bash
git switch -c feature-login
```

Push branch

```bash
git push -u origin feature-login
```

After approval

```bash
git switch main
git pull
git merge feature-login
```

Delete branch

```bash
git branch -d feature-login
```

---

# Fork vs Clone

## What is Fork?

A **Fork** creates your own copy of someone else's GitHub repository under your GitHub account.

Used mainly for:

- Open-source contributions
- External collaboration

Example

```text
Original Repository
        │
      Fork
        │
Your GitHub Account
```

---

## What is Clone?

A **Clone** downloads a repository from GitHub to your local computer.

```bash
git clone <repository-url>
```

---

# Fork vs Clone

| Fork | Clone |
|------|-------|
| GitHub operation | Git operation |
| Creates repository copy on GitHub | Downloads repository locally |
| Used in open-source | Used for development |
| Requires GitHub account | Requires Git |

---

# What is Branch Protection?

**Branch Protection** prevents direct changes to important branches like `main`.

Common rules include:

- No direct push.
- Pull Request required.
- Code review required.
- CI checks must pass.
- Signed commits (optional).

---

## Why Branch Protection?

- Protect production code.
- Prevent accidental commits.
- Enforce reviews.
- Improve security.
- Maintain deployment stability.

---

# Merge Strategies (Basic)

GitHub supports multiple merge strategies.

---

## 1. Merge Commit

Creates a new merge commit.

```text
A---B-------M
     \     /
      C---D
```

### Advantages

- Preserves complete branch history.
- Easy to track feature branches.

---

## 2. Squash and Merge

Combines all commits into one.

```text
A---B---S
```

### Advantages

- Cleaner Git history.
- One commit per feature.

---

## 3. Rebase and Merge

Moves feature commits on top of the latest main branch.

```text
A---B---C---D
```

### Advantages

- Linear commit history.
- No merge commits.

---

# Merge Strategy Comparison

| Strategy | Merge Commit | History | Best Use |
|-----------|--------------|----------|----------|
| Merge Commit | Yes | Complete | Team projects |
| Squash Merge | No | Clean | Small features |
| Rebase Merge | No | Linear | Experienced teams |

---

# Complete GitHub Collaboration Workflow

```text
Create Branch
      │
      ▼
Write Code
      │
      ▼
git add
      │
      ▼
git commit
      │
      ▼
git push
      │
      ▼
Open Pull Request
      │
      ▼
Code Review
      │
      ▼
CI/CD Checks
      │
      ▼
Approved
      │
      ▼
Merge
      │
      ▼
Delete Feature Branch
```

---

# Real DevOps Use Cases

## DevOps Engineer

- Submit PRs for Jenkins, Terraform, Docker, and Kubernetes changes.
- Wait for automated CI checks.
- Merge only after approval.

---

## SRE Engineer

- Create hotfix branches.
- Request reviews before production deployment.
- Protect critical infrastructure branches.

---

## Cloud Engineer

- Review Terraform and CloudFormation updates.
- Merge only after validation.
- Prevent direct production changes.

---

# Common Mistakes

- Pushing directly to `main`.
- Opening PRs without testing.
- Merging without code review.
- Ignoring CI/CD failures.
- Leaving stale branches after merging.

---

# Key Takeaway

Modern software teams rarely commit directly to the `main` branch. Instead, developers create feature branches, push changes to GitHub, open Pull Requests, complete Code Reviews, pass CI/CD checks, and then merge using an appropriate strategy. Branch Protection ensures production code remains secure and stable.

---

