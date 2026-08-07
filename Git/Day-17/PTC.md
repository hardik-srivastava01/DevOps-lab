# Git Day 17 – Technical Interview Questions (PTC)

## Topic: Remote Repository | git clone | git push | git pull | HTTPS vs SSH | PAT

---

# 🟢 Beginner Level (1–10)

### Q1. What is a Remote Repository?

### Q2. What is a Local Repository?

### Q3. What is the difference between a Local Repository and a Remote Repository?

### Q4. What is GitHub used for?

### Q5. What does the `git clone` command do?

### Q6. What is the purpose of the `git remote` command?

### Q7. What is `origin` in Git?

### Q8. What does the `git push` command do?

### Q9. What does the `git pull` command do?

### Q10. Why do developers use Remote Repositories?

---

# 🟡 Intermediate Level (11–20)

### Q11. Explain the difference between `git clone` and `git init`.

### Q12. Explain the difference between `git clone` and `git pull`.

### Q13. Explain the difference between `git push` and `git pull`.

### Q14. What is the purpose of `git remote -v`?

### Q15. How do you add a remote repository to an existing local repository?

### Q16. Can a Git repository have multiple remotes? If yes, why?

### Q17. What happens internally when you execute `git clone`?

### Q18. Why should you run `git pull` before `git push`?

### Q19. What happens if you run `git push` without committing changes?

### Q20. What happens if the remote repository URL is incorrect?

---

# 🔴 Advanced Level (21–30)

### Q21. Explain the complete Git workflow from creating a file to uploading it to GitHub.

### Q22. What happens internally when you execute `git push origin main`?

### Q23. What happens internally when you execute `git pull origin main`?

### Q24. Why is `origin` used in Git commands?

### Q25. Explain HTTPS authentication and SSH authentication.

### Q26. Why do professional DevOps engineers usually prefer SSH over HTTPS?

### Q27. What is a Personal Access Token (PAT), and why is it required?

### Q28. What security risks exist if a PAT is leaked?

### Q29. How can you change the URL of an existing remote repository?

### Q30. How are Remote Repositories used in CI/CD pipelines?

---

# 💼 Production Scenario Questions

### Q31.
A developer cloned the wrong repository. How would you verify and correct the configured remote?

---

### Q32.
You executed:

```bash
git push origin main
```

and got:

```text
! [rejected] main -> main (fetch first)
```

- Why did this happen?
- How would you fix it?

---

### Q33.
You run:

```bash
git clone <repository-url>
```

and receive:

```text
fatal: repository not found
```

List at least **five possible reasons** for this error.

---

### Q34.
Your teammate pushed new commits to GitHub while you were working locally. What steps will you follow before pushing your own changes?

---

### Q35.
You accidentally committed an API key and pushed it to GitHub. What immediate actions should you take?

---

# 🚀 DevOps / SRE Scenario Questions

### Q36.
How does `git push` trigger a CI/CD pipeline in tools like Jenkins or GitHub Actions?

### Q37.
Why is a Remote Repository essential for Infrastructure as Code (Terraform, Ansible, Kubernetes)?

### Q38.
Why should every infrastructure change be committed to Git instead of editing files directly on the server?

### Q39.
How would you securely authenticate Git operations on a production Linux server?

### Q40.
Imagine you're the only DevOps engineer in a company. Explain the complete workflow from writing code locally to deploying it through GitHub.

---

# ⭐ Bonus FAANG-Level Questions

### Q41. Can Git work without GitHub? Explain with an example.

### Q42. Can GitHub exist without Git? Why or why not?

### Q43. What is the difference between downloading a repository as a ZIP file and cloning it with Git?

### Q44. How would you migrate a local Git repository to a new GitHub repository?

### Q45. What are the advantages of using SSH authentication over HTTPS in enterprise environments?

---

# 🎯 30–50 LPA Interview Tip

Interviewers often ask scenario-based questions instead of command definitions. Be prepared to explain:

- **How** `git clone`, `git pull`, and `git push` work.
- **When** to use each command.
- **Why** SSH is preferred in production.
- **How** GitHub integrates with CI/CD pipelines.
- **How** to troubleshoot common Git remote errors.
