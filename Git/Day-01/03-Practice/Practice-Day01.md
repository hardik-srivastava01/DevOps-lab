# Git Day 16 Practice Log

## Objective

Practice the basic Git workflow by creating a new repository, adding a file, staging changes, creating the first commit, and viewing commit history. These are the foundational Git operations used in every software development and DevOps project.

---

# Commands Executed

```bash
mkdir Git-Day16
cd Git-Day16

# Check Git installation
git --version

# Initialize a Git repository
git init

# Create README file
echo "# DevOps Journey" > README.md

# Check repository status
git status

# Stage the file
git add README.md

# Create first commit
git commit -m "Initial commit"

# View commit history
git log --oneline

# Exit and remove practice folder
cd ..
rm -r Git-Day16
```

---

# Result

- Verified Git installation.
- Initialized a new Git repository.
- Created a `README.md` file.
- Checked repository status before committing.
- Added the file to the Staging Area.
- Created the first Git commit.
- Viewed the commit history using `git log --oneline`.

---

# Issues Faced

During the first commit, Git may display an error like:

```bash
Author identity unknown
```

This happens because Git requires your username and email to identify who made the commit.

Configure Git once:

```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

After configuration, the commit will succeed.

---

# Real-World Problems You Can Solve

## DevOps

- Initialize Infrastructure as Code (IaC) repositories.
- Track configuration changes.
- Maintain CI/CD pipeline files.
- Version automation scripts.

Example:

```bash
git init
git add .
git commit -m "Add Jenkins pipeline"
```

---

## SRE

- Track production fixes.
- Maintain operational scripts.
- Roll back to previous commits when required.

---

## Cloud Engineer

- Store Terraform configurations.
- Version cloud deployment scripts.
- Collaborate on infrastructure code.

---

# Commands Used in Production

| Command | Purpose |
|---------|---------|
| `git --version` | Verify Git installation |
| `git init` | Create a new Git repository |
| `git status` | Check repository status |
| `git add` | Stage changes |
| `git commit -m` | Save changes permanently |
| `git log --oneline` | View concise commit history |

---

# Best Practices

- Write meaningful commit messages.
- Check `git status` before every commit.
- Stage only required files.
- Commit frequently with small logical changes.
- Never commit passwords, API keys, or secrets.

---

# Time Taken

30 Minutes

---

# Status

✅ Completed
