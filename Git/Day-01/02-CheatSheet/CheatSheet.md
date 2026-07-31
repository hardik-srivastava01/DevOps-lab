# Git Day 16 CheatSheet
## Git Fundamentals

---

# One-Line Interview Answers

### What is Version Control System (VCS)?
→ A Version Control System tracks changes in files over time and allows collaboration, history tracking, and rollback.

---

### What is Git?
→ Git is a distributed Version Control System used to track source code changes locally.

---

### What is GitHub?
→ GitHub is a cloud platform used to host and collaborate on Git repositories.

---

### Git vs GitHub?

→ Git is a Version Control System, while GitHub is a cloud hosting platform for Git repositories.

---

### What is a Repository?
→ A Repository (Repo) is a storage location containing project files and complete version history.

---

### What is a Commit?
→ A Commit is a snapshot of project changes at a specific point in time.

---

### What is Working Directory?
→ The Working Directory is where files are created and modified before Git tracks them.

---

### What is Staging Area?
→ The Staging Area is an intermediate area where selected changes are prepared before committing.

---

### What is Local Repository?
→ The Local Repository stores the complete Git history on your local machine.

---

### What is Remote Repository?
→ A Remote Repository is an online copy of the Git repository hosted on platforms like GitHub.

---

# Git Workflow

```
Working Directory
        │
        ▼
Staging Area
        │
        ▼
Local Repository
        │
        ▼
Remote Repository (GitHub)
```

---

# Basic Git Commands

### Check Git Version

```bash
git --version
```

---

### Initialize Repository

```bash
git init
```

---

### Check Repository Status

```bash
git status
```

---

### Stage File

```bash
git add README.md
```

---

### Stage All Files

```bash
git add .
```

---

### Create Commit

```bash
git commit -m "Initial commit"
```

---

### View Commit History

```bash
git log
```

---

### Short Commit History

```bash
git log --oneline
```

---

# Production Relevance

## DevOps

- Track Infrastructure as Code.
- Manage CI/CD pipelines.
- Version automation scripts.
- Collaborate with development teams.

## SRE

- Track production fixes.
- Roll back faulty deployments.
- Maintain operational scripts.

## Cloud Engineer

- Store Terraform configurations.
- Version cloud deployment code.
- Collaborate on cloud infrastructure.

---

# Common Interview Scenarios

### Q: You created a file but Git doesn't track it. What will you do?

```bash
git add <filename>
```

---

### Q: How do you save project changes permanently?

```bash
git commit -m "Meaningful commit message"
```

---

### Q: How do you check modified files?

```bash
git status
```

---

### Q: How do you initialize a new Git repository?

```bash
git init
```

---

### Q: How do you see previous commits?

```bash
git log --oneline
```

---

# Common Mistakes

❌ Forgetting to run `git add` before `git commit`

❌ Writing meaningless commit messages like `"update"` or `"test"`

❌ Confusing Git with GitHub

❌ Committing secrets or passwords

❌ Ignoring `git status`

---

# 30–50 LPA Interview Focus

✅ Git =
