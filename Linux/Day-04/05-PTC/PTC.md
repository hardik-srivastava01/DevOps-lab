# Linux Day 4 - Technical Interview Questions (Linux File Permissions)

## 🟢 Core Level (Fundamentals)

### Q1. What are Linux File Permissions?

### Q2. What do Read (r), Write (w), and Execute (x) permissions mean?

### Q3. What is the difference between file permissions and directory permissions?

### Q4. Who are User, Group, and Others?

### Q5. Explain the permission `rwxr-xr-x`.

### Q6. Explain the permission `644`.

### Q7. Explain the permission `755`.

### Q8. Why is `777` considered insecure?

### Q9. What is the purpose of the `chmod` command?

### Q10. What is the difference between symbolic and numeric permissions?

---

# 🟡 Intermediate Level (Hands-on & Troubleshooting)

### Q11.
You get a **"Permission denied"** error while executing a shell script. How would you troubleshoot it?

---

### Q12.
A developer cannot modify a configuration file. Which Linux commands would you use to identify the issue?

---

### Q13.
What is the difference between `chmod 755` and `chmod 644`? When would you use each?

---

### Q14.
How would you make a script executable without changing other permissions?

---

### Q15.
A file is readable but cannot be modified. Which permission is missing?

---

### Q16.
How do `whoami`, `groups`, and `id` help during permission troubleshooting?

---

### Q17.
What information does the `stat` command provide that `ls -l` does not?

---

### Q18.
A deployment fails because the application cannot read its configuration file. What would you check first?

---

### Q19.
Why should configuration files rarely have execute permissions?

---

### Q20.
How would you verify that only the owner has access to an SSH private key?

---

# 🔴 Advanced Level (FAANG / Product Companies)

### Q21.
Design a permission strategy for a production application where Developers, QA, and Operations require different access levels.

---

### Q22.
A CI/CD pipeline creates files owned by `root`, causing application failures. How would you resolve the issue?

---

### Q23.
A production server reports **"Permission denied"** after deployment. Explain your complete troubleshooting process.

---

### Q24.
How does the **Principle of Least Privilege (PoLP)** improve Linux server security?

---

### Q25.
What security risks can occur if critical system files are assigned `777` permissions?

---

# ⭐ Expert Production Scenarios

### Q26.
An application cannot write logs after deployment. How would you investigate whether the issue is related to permissions, ownership, or filesystem access?

---

### Q27.
Your deployment script changes permissions on thousands of files. How would you ensure it doesn't introduce security vulnerabilities?

---

### Q28.
A Kubernetes container cannot access a mounted volume because of permission issues. How would you troubleshoot it?

---

### Q29.
An SSH private key is accidentally assigned `644` permissions. Why is this a security risk, and what should the correct permission be?

---

### Q30.
Design a secure permission model for **500+ Linux servers** that includes:

- Least Privilege (PoLP)
- User and Group Management
- File Ownership
- Permission Auditing
- SSH Key Security
- Configuration File Protection
- CI/CD Access Control
- Compliance and Monitoring
