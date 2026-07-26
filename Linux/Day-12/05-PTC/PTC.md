# Linux Day 12 - Technical Interview Questions (Environment Variables)

## 🟢 Core Level (Fundamentals)

### Q1. What are Environment Variables in Linux?

### Q2. What is the difference between a Local Variable and an Environment Variable?

### Q3. What does the `export` command do?

### Q4. What is the purpose of the `PATH` variable?

### Q5. What is the difference between `.bashrc`, `.profile`, and `.bash_profile`?

### Q6. What happens when you execute `echo $PATH`?

### Q7. What is a Session Variable?

### Q8. What is a Persistent Variable?

### Q9. What is the difference between `env` and `printenv`?

### Q10. How do you make an environment variable permanent?

---

# 🟡 Intermediate Level (Hands-on & Troubleshooting)

### Q11.
You installed Terraform, but running `terraform` returns:

```bash
command not found
```

How would you troubleshoot the issue?

---

### Q12.
You added a new variable to `.bashrc`, but it is not available in the current terminal. Why?

---

### Q13.
You accidentally overwrote the `PATH` variable. What problems can this cause, and how would you recover?

---

### Q14.
How would you verify whether an environment variable is exported?

---

### Q15.
A Bash script cannot access a variable defined in your terminal. What could be the reason?

---

### Q16.
How do you temporarily set an environment variable for only one terminal session?

---

### Q17.
How do you permanently add `/opt/myapp/bin` to the `PATH` variable?

---

### Q18.
How would you remove an environment variable from the current shell?

---

### Q19.
A Java application requires the `JAVA_HOME` variable. How would you configure it?

---

### Q20.
How would you verify that an application is reading the correct environment variable?

---

# 🔴 Advanced Level (FAANG / Product Companies)

### Q21.
A CI/CD pipeline works on one server but fails on another because environment variables are missing. How would you investigate and fix the issue?

---

### Q22.
A Docker container cannot access an API key stored as an environment variable. What would you check?

---

### Q23.
A production application starts successfully but connects to the wrong database. How would you determine whether environment variables are the cause?

---

### Q24.
Why is storing passwords directly in `.bashrc` considered a security risk? What is the recommended approach?

---

### Q25.
How would you manage environment variables securely across Development, Testing, Staging, and Production environments?

---

# ⭐ Expert Production Scenarios

### Q26.
Your deployment pipeline fails because the `PATH` variable does not include the AWS CLI. How would you resolve the issue?

---

### Q27.
After rebooting a Linux server, all custom environment variables disappear. What is the most likely cause?

---

### Q28.
A child process cannot access a variable defined in the parent shell. Explain why and how you would fix it.

---

### Q29.
Multiple versions of Java are installed on a server. How would you use environment variables to switch between them safely?

---

### Q30.
Design a production-ready strategy for managing environment variables and secrets across hundreds of Linux servers while maintaining security, consistency, and ease of deployment.
