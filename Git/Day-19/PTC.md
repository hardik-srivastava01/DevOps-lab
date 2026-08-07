# Git Day 19 – Technical Interview Questions (PTC)

## Topic: Git Restore, Reset, Revert & Reflog

---

# 🟢 Beginner Level

### Q1. What is the Working Directory?

### Q2. What is the Staging Area?

### Q3. What is a Git Repository?

### Q4. Explain the flow from Working Directory to Repository.

### Q5. What is `git restore`?

### Q6. What is `git reset`?

### Q7. What is the difference between `git restore` and `git reset`?

### Q8. What is `git revert`?

### Q9. What is `git reflog`?

### Q10. Why is `git reflog` important?

---

# 🟡 Intermediate Level

### Q11. Explain the difference between `git reset --soft`, `--mixed`, and `--hard`.

### Q12. What happens internally when you run `git reset --soft HEAD~1`?

### Q13. What happens internally during `git reset --hard HEAD~1`?

### Q14. What is the difference between `git reset` and `git revert`?

### Q15. When should you use `git restore` instead of `git reset`?

### Q16. Can `git reflog` recover a deleted commit? Explain.

### Q17. Why is `git revert` preferred in team projects?

### Q18. What happens if you accidentally run `git reset --hard`?

### Q19. How can `git reflog` help after a hard reset?

### Q20. Why is rewriting Git history dangerous on shared branches?

---

# 🔴 Advanced Level (30–50 LPA)

### Q21. Explain a real production scenario where `git revert` is safer than `git reset`.

### Q22. Why should `git reset --hard` never be used on a shared branch?

### Q23. How would you recover a lost commit using `git reflog`?

### Q24. What are the risks of rewriting Git history?

### Q25. Explain how `git reflog` differs from `git log`.

### Q26. How do DevOps engineers recover deleted Infrastructure as Code using Git?

### Q27. What happens if a bad commit is pushed to production? Which Git command should be used?

### Q28. Why is `git revert` considered audit-friendly?

### Q29. How does Git store commit history after a revert?

### Q30. Which undo command would you choose for:
- Unstaging files
- Undoing a local commit
- Undoing a pushed commit
- Recovering a lost commit

Explain your choices.

---

# 💼 Production Scenario Questions

### Q31.
You accidentally committed a password locally but haven't pushed it yet. Which command would you use and why?

### Q32.
A faulty commit has already been pushed to GitHub and deployed. How would you safely undo it?

### Q33.
A teammate accidentally executed `git reset --hard`. How can you try to recover the lost work?

### Q34.
You staged the wrong files for a commit. Which command would you use to unstage them?

### Q35.
Your manager asks you to maintain a complete audit trail of all changes. Would you use `git reset` or `git revert`? Explain.

---

# 🚀 Interview Tip

For DevOps interviews, remember this rule:

- **Local changes not shared?** → `git reset`
- **Changes already pushed/shared?** → `git revert`
- **Recover lost work?** → `git reflog`
- **Discard local file changes?** → `git restore`
