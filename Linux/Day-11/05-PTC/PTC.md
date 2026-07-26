# Linux Day 11 - Technical Interview Questions (Package Management)

## 🟢 Core Level (Fundamentals)

### Q1. What is a Package in Linux?

### Q2. What is a Package Manager?

### Q3. What is the difference between `apt` and `apt-get`?

### Q4. What is a Repository?

### Q5. What is the difference between `apt update` and `apt upgrade`?

### Q6. What is the difference between `apt install`, `apt remove`, and `apt purge`?

### Q7. What is a Dependency?

### Q8. What is Package Cache?

### Q9. What is the purpose of `apt search`?

### Q10. What is `dpkg`, and how is it different from `apt`?

---

# 🟡 Intermediate Level (Hands-on & Troubleshooting)

### Q11.
You run:

```bash
sudo apt install docker.io
```

but receive:

```bash
E: Unable to locate package docker.io
```

How would you troubleshoot this issue?

---

### Q12.
Why should you always run `apt update` before `apt upgrade`?

---

### Q13.
A package installation fails because of missing dependencies. How would you resolve it?

---

### Q14.
How do you verify whether a package is already installed?

---

### Q15.
You removed a package, but its configuration files still exist. Why?

---

### Q16.
What does `apt autoremove` do, and when should you use it?

---

### Q17.
How would you find detailed information about a package before installing it?

---

### Q18.
A package was accidentally removed. How would you reinstall it?

---

### Q19.
How would you determine which package installed a specific file on your system?

---

### Q20.
Your package installation is interrupted. What steps would you take to recover the package manager?

---

# 🔴 Advanced Level (FAANG / Product Companies)

### Q21.
A production server cannot install packages because the configured repository is unreachable. How would you investigate and resolve the issue?

---

### Q22.
After upgrading packages, an application stops working. How would you troubleshoot the problem?

---

### Q23.
Your CI/CD pipeline fails during `apt install`. What possible causes would you investigate?

---

### Q24.
How would you securely manage package updates across hundreds of production Linux servers?

---

### Q25.
Why is it risky to install packages from untrusted third-party repositories?

---

# ⭐ Expert Production Scenarios

### Q26.
A production server has no Internet access, but you need to install software. What approaches could you use?

---

### Q27.
Multiple servers have different versions of the same package. How would you ensure version consistency across all servers?

---

### Q28.
An `apt upgrade` reports dependency conflicts. How would you identify and resolve the issue without breaking the system?

---

### Q29.
How would you automate package installation and updates using Ansible, Bash, or a CI/CD pipeline?

---

### Q30.
Design a package management strategy for **500+ Linux servers** that ensures:
- Security patching
- Version consistency
- Minimal downtime
- Rollback capability
- Automated compliance checks
