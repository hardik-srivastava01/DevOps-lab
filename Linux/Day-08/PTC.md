# Linux Day 8 - Technical Interview Questions (Users, Groups & Privileges)

## 🟢 Core Level (Fundamentals)

### Q1. What is a Linux User?

### Q2. What is the difference between a Root User, Normal User, and System User?

### Q3. What is the difference between UID and GID?

### Q4. What is the difference between a Primary Group and a Secondary Group?

### Q5. What is the purpose of `sudo`?

### Q6. What is the difference between Root and `sudo`?

### Q7. What information is stored in `/etc/passwd`?

### Q8. What information is stored in `/etc/group`?

### Q9. What is `/etc/shadow`, and why is it protected?

### Q10. What is the Principle of Least Privilege (PoLP)?

---

# 🟡 Intermediate Level (Hands-on & Troubleshooting)

### Q11.
A developer cannot run Docker without using `sudo`. How would you fix this?

---

### Q12.
How do you verify which groups a user belongs to?

---

### Q13.
What happens if you execute:

```bash
usermod -G docker devuser
```

instead of:

```bash
usermod -aG docker devuser
```

---

### Q14.
How would you create a new user with a home directory and Bash shell?

---

### Q15.
A user cannot access a project directory even though the permissions look correct. What would you check first?

---

### Q16.
How do you safely grant administrative access to a developer without sharing the Root password?

---

### Q17.
How do you lock a Linux user account without deleting it?

---

### Q18.
How would you identify whether a Linux account is a System User or a Normal User?

---

### Q19.
A user forgets their password. How would you reset it?

---

### Q20.
How do you audit all users with `sudo` privileges on a Linux server?

---

# 🔴 Advanced Level (FAANG / Product Companies)

### Q21.
Your production deployment fails with **Permission Denied**. Describe your troubleshooting approach.

---

### Q22.
A DevOps engineer accidentally logs in directly as Root and modifies production files. Why is this considered a security risk?

---

### Q23.
How would you implement the Principle of Least Privilege for a team of Developers, QA Engineers, and System Administrators?

---

### Q24.
A CI/CD pipeline requires administrative privileges. How would you configure secure access without exposing the Root account?

---

### Q25.
How would you manage Linux users and groups across hundreds of production servers?

---

# ⭐ Expert Production Scenarios

### Q26.
An application suddenly cannot read its configuration files after deployment. How would you determine whether the issue is related to users, groups, or permissions?

---

### Q27.
A developer reports:

```text
Permission denied
```

when accessing a shared project directory. Walk through your complete troubleshooting process.

---

### Q28.
How would you securely onboard a new DevOps engineer with the minimum required permissions?

---

### Q29.
A former employee has left the company. What steps would you take to securely remove their access from Linux production servers?

---

### Q30.
Design a **Linux User & Access Management strategy for 500+ production servers** that includes:

- User provisioning
- Group-based access control
- Sudo policies
- SSH key authentication
- Least Privilege (PoLP)
- Access auditing
- Offboarding process
- Compliance and security monitoring
