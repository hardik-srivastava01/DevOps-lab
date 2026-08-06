# Git Day 20 CheatSheet
## Pull Requests, Code Review & GitHub Collaboration

---

# 📌 One-Line Interview Answers

### What is a Pull Request (PR)?
→ A Pull Request (PR) is a request to merge changes from one branch into another after review.

---

### Why do we use Pull Requests?

- Code Review
- Team Collaboration
- CI/CD Automation
- Quality Assurance
- Safe Merging

---

### What is Code Review?

→ Code Review is the process of examining code before merging it into the main branch.

---

### Why is Code Review Important?

- Finds bugs early
- Improves code quality
- Ensures coding standards
- Improves security
- Shares knowledge among developers

---

### What is GitHub Flow?

→ GitHub Flow is a lightweight workflow where developers create a feature branch, make changes, open a Pull Request, review the code, merge it, and delete the branch.

---

# GitHub Flow

```text
main
 │
 │ Create Branch
 ▼
feature-login
 │
 │ Commit
 ▼
Push to GitHub
 │
 ▼
Pull Request
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

### What is Fork?

→ A Fork creates your own copy of another user's GitHub repository under your GitHub account.

---

### What is Clone?

→ Clone downloads a Git repository from GitHub to your local computer.

```bash
git clone <repository-url>
```

---

# Fork vs Clone

| Fork | Clone |
|------|-------|
| GitHub operation | Git operation |
| Repository copy on GitHub | Repository copy on local machine |
| Used for open-source contribution | Used for development |
| Requires GitHub account | Requires Git |

---

### What is Branch Protection?

→ Branch Protection prevents direct changes to important branches like `main` and enforces safe collaboration.

---

### Branch Protection Rules

✅ Pull Request required

✅ Code Review required

✅ CI/CD checks must pass

✅ No direct push

---

# Merge Strategies

## Merge Commit

Creates a merge commit.

```text
A---B------M
     \    /
      C--D
```

---

## Squash Merge

Combines all feature commits into one commit.

```text
A---B---S
```

---

## Rebase Merge

Moves feature commits on top of the latest main branch.

```text
A---B---C---D
```

---

# Merge Strategy Comparison

| Strategy | Merge Commit | History | Best Use |
|-----------|--------------|----------|----------|
| Merge Commit | ✅ | Complete | Large team projects |
| Squash Merge | ❌ | Clean | Small features |
| Rebase Merge | ❌ | Linear | Experienced teams |

---

# Important Git Commands

### Create Feature Branch

```bash
git switch -c feature-login
```

---

### Push Branch

```bash
git push -u origin feature-login
```

---

### List Branches

```bash
git branch
```

---

### Pull Latest Changes

```bash
git pull origin main
```

---

### Merge Branch

```bash
git merge feature-login
```

---

### Delete Branch

```bash
git branch -d feature-login
```

---

# Complete Collaboration Workflow

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
Pull Request
      │
      ▼
Code Review
      │
      ▼
CI/CD Checks
      │
      ▼
Merge
      │
      ▼
Delete Branch
```

---

# 🌍 Production Relevance

### DevOps

- Infrastructure as Code PRs
- Jenkins Pipeline Reviews
- Kubernetes Manifest Reviews
- CI/CD Validation

### SRE

- Production Hotfix PRs
- Monitoring Configuration Reviews
- Safe Rollbacks

### Cloud Engineer

- Terraform Reviews
- Cloud Infrastructure Approval
- Secure Production Deployments

---

# ⚠ Common Mistakes

❌ Pushing directly to `main`

❌ Merging without code review

❌ Ignoring failed CI/CD checks

❌ Keeping old feature branches

❌ Opening very large Pull Requests

---

# 🚀 Rapid Revision

```text
Pull Request → Request to merge code

Code Review → Review code before merge

GitHub Flow → Branch → Commit → Push → PR → Review → Merge

Fork → Copy repository on GitHub

Clone → Download repository locally

Branch Protection → Protect main branch

Merge Commit → Preserves full history

Squash Merge → Single clean commit

Rebase Merge → Linear history
```
