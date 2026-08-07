# Git Day 17 CheatSheet
## Remote Repository & GitHub

---

# 📌 One-Line Interview Answers

### What is a Local Repository?
→ A Local Repository is a Git repository stored on your local machine where development and commits are performed.

---

### What is a Remote Repository?
→ A Remote Repository is a Git repository hosted on a server like GitHub for collaboration and backup.

---

### Git Local vs Remote Repository

| Local Repository | Remote Repository |
|------------------|-------------------|
| Stored on local machine | Stored on GitHub/GitLab |
| Offline access | Internet required |
| Personal workspace | Shared workspace |
| Development happens here | Collaboration happens here |

---

### What is `git clone`?
→ `git clone` creates a complete local copy of a remote Git repository.

```bash
git clone <repository-url>
```

---

### What is `git remote`?
→ `git remote` manages connections between the local repository and remote repositories.

```bash
git remote
git remote -v
```

---

### What is `origin`?
→ `origin` is the default name of the remote repository created during cloning or when adding a remote.

---

### What is `git push`?
→ `git push` uploads local commits to the remote repository.

```bash
git push origin main
```

---

### What is `git pull`?
→ `git pull` downloads and merges the latest changes from the remote repository.

```bash
git pull origin main
```

---

### What is HTTPS?
→ HTTPS is a Git authentication method that uses a repository URL and a Personal Access Token (PAT).

Example:

```text
https://github.com/username/repository.git
```

---

### What is SSH?
→ SSH is a secure authentication method that uses a public/private key pair for passwordless access.

Example:

```text
git@github.com:username/repository.git
```

---

### What is a Personal Access Token (PAT)?
→ A PAT is a secure token used instead of a GitHub password for HTTPS authentication.

⚠ Never share your PAT.

---

# 🔄 Git Remote Workflow

```text
Working Directory
        │
    git add
        ▼
Staging Area
        │
  git commit
        ▼
Local Repository
        │
  git push
        ▼
Remote Repository (GitHub)
        ▲
  git pull
        │
```

---

# 💻 Important Commands

### Clone Repository

```bash
git clone <repository-url>
```

---

### View Remote

```bash
git remote
```

---

### View Remote URL

```bash
git remote -v
```

---

### Add Remote

```bash
git remote add origin <repository-url>
```

---

### Change Remote URL

```bash
git remote set-url origin <new-url>
```

---

### Remove Remote

```bash
git remote remove origin
```

---

### Push Changes

```bash
git push origin main
```

---

### Pull Changes

```bash
git pull origin main
```

---

# 🌍 Production Relevance

## DevOps

- Push Infrastructure as Code (Terraform)
- Upload Jenkins pipelines
- Store Kubernetes manifests
- Maintain CI/CD workflows

## SRE

- Push production fixes
- Pull monitoring configurations
- Manage automation scripts

## Cloud Engineer

- Version cloud infrastructure
- Collaborate on deployment code
- Sync infrastructure changes

---

# ⚠ Common Mistakes

❌ Forgetting `git pull` before `git push`

❌ Using the wrong remote URL

❌ Confusing `git clone` with `git pull`

❌ Sharing Personal Access Tokens

❌ Not checking remote using `git remote -v`

---

# 🎯 Common Interview Questions

### Clone a repository

```bash
git clone <repository-url>
```

---

### Check configured remote

```bash
git remote -v
```

---

### Upload code to GitHub

```bash
git push origin main
```

---

### Download latest changes

```bash
git pull origin main
```

---

### Add a new remote

```bash
git remote add origin <repository-url>
```

---

# 🚀 30–50 LPA Interview Focus

✅ Local Repository → Development happens locally.

✅ Remote Repository → Collaboration and backup on GitHub.

✅ `git clone` → Downloads the complete repository.

✅ `git remote` → Manages remote connections.

✅ `origin` → Default remote repository name.

✅ `git push` → Uploads commits to GitHub.

✅ `git pull` → Downloads and merges remote changes.

✅ HTTPS → Uses Personal Access Token (PAT).

✅ SSH → Uses SSH keys; preferred in professional DevOps environments.

---

# ⚡ Rapid Revision

```text
Git → Version Control System

GitHub → Remote hosting platform

Local Repository → On your computer

Remote Repository → On GitHub

git clone → Copy repository locally

git remote → Manage remote connections

origin → Default remote name

git push → Upload local commits

git pull → Download latest changes

HTTPS → PAT authentication

SSH → Key-based authentication

PAT → Secure replacement for GitHub password
```
