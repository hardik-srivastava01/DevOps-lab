# Git Day 19 CheatSheet
## Git Undo Operations & History

---

# One-Line Interview Answers

### Working Directory
→ The place where you create and modify files before staging them.

### Staging Area
→ A temporary area where changes are prepared before committing.

### Repository
→ The Git database that permanently stores commit history.

---

### What is `git restore`?
→ Restores files in the Working Directory or unstages files from the Staging Area.

```bash
git restore file.txt
git restore --staged file.txt
```

---

### What is `git reset`?
→ Moves HEAD to another commit and optionally unstages or removes changes.

---

### Soft Reset

→ Moves HEAD only.

```bash
git reset --soft HEAD~1
```

✔ Changes remain staged.

---

### Mixed Reset (Default)

→ Moves HEAD and unstages files.

```bash
git reset HEAD~1
```

✔ Changes remain in the Working Directory.

---

### Hard Reset

→ Moves HEAD and permanently removes local changes.

```bash
git reset --hard HEAD~1
```

⚠ Use carefully.

---

### What is `git revert`?

→ Creates a new commit that reverses a previous commit.

```bash
git revert <commit-id>
```

✔ Safe for shared repositories.

---

### What is `git reflog`?

→ Shows the history of HEAD movements and helps recover lost commits.

```bash
git reflog
```

---

# Reset vs Revert

| git reset | git revert |
|------------|------------|
| Rewrites history | Preserves history |
| Removes commits | Creates a new undo commit |
| Local repositories | Shared repositories |
| Not safe after push | Safe after push |

---

# Working Flow

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

# Important Commands

```bash
git restore file.txt
git restore --staged file.txt

git reset --soft HEAD~1
git reset HEAD~1
git reset --hard HEAD~1

git revert <commit-id>

git reflog
```

---

# Production Usage

✅ `git restore` → Undo local file changes.

✅ `git reset --soft` → Redo the last commit.

✅ `git reset --mixed` → Unstage changes.

✅ `git reset --hard` → Discard local work.

✅ `git revert` → Undo pushed commits safely.

✅ `git reflog` → Recover deleted or lost commits.

---

# Common Mistakes

❌ Using `git reset --hard` on important work.

❌ Using `git reset` after pushing commits.

❌ Forgetting that `git revert` creates a new commit.

❌ Not checking `git reflog` before assuming work is lost.

---

# Rapid Revision

```text
Working Directory → Edit files

Staging Area → git add

Repository → git commit

git restore → Undo file changes

git reset --soft → Undo commit, keep staged

git reset --mixed → Undo commit, keep files

git reset --hard → Delete local changes

git revert → Safe undo with new commit

git reflog → Recover lost commits
```
