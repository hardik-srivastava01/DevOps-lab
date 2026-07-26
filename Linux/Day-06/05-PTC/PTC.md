# Linux Day 6 - Technical Interview Questions (Redirection & Text Editors)

## 🟢 Core Level (Fundamentals)

### Q1. What is Standard Input (stdin)?

### Q2. What is Standard Output (stdout)?

### Q3. What is Standard Error (stderr)?

### Q4. What are File Descriptors 0, 1, and 2?

### Q5. What is the difference between `>` and `>>`?

### Q6. What is Input Redirection (`<`)?

### Q7. What is Error Redirection (`2>`)?

### Q8. What is the purpose of the `tee` command?

### Q9. What is the difference between `tee` and `>`?

### Q10. Why is Vim preferred over Nano in production environments?

---

# 🟡 Intermediate Level (Hands-on & Troubleshooting)

### Q11.
Your deployment script generates both normal output and errors. How would you save only the errors to a file?

---

### Q12.
A command overwrote an important log file by mistake. Which operator likely caused the issue?

---

### Q13.
You need to display command output on the terminal **and** save it to a log file. Which command would you use?

---

### Q14.
How would you append deployment logs to an existing file without deleting previous logs?

---

### Q15.
A script expects input from a file instead of the keyboard. Which redirection operator would you use?

---

### Q16.
Why is it considered a best practice to separate stdout and stderr in production systems?

---

### Q17.
A configuration file needs to be edited directly on a production server. Which editor would you choose and why?

---

### Q18.
How would you redirect both stdout and stderr into the same log file?

---

### Q19.
A CI/CD pipeline stores only successful output but misses error messages. What is the likely reason?

---

### Q20.
How would you troubleshoot a failed deployment using Linux log redirection?

---

# 🔴 Advanced Level (FAANG / Product Companies)

### Q21.
Design a logging strategy for a production deployment script that captures stdout, stderr, timestamps, and supports log rotation.

---

### Q22.
A deployment succeeds on one server but fails on another. How would you use output and error redirection to compare both executions?

---

### Q23.
A shell script runs through Jenkins. How would you ensure all logs are preserved for auditing and debugging?

---

### Q24.
Your production server reports intermittent errors that are not visible on the terminal. How would you capture and analyze them?

---

### Q25.
How would you design a centralized logging solution for hundreds of Linux servers?

---

# ⭐ Expert Production Scenarios

### Q26.
An Nginx configuration change causes the service to fail. Which logs and Linux commands would you use to identify the exact error?

---

### Q27.
A deployment script accidentally overwrites a production log file every day. How would you prevent this from happening?

---

### Q28.
Your application outputs **100 GB of logs daily**. How would you manage logging efficiently while keeping troubleshooting easy?

---

### Q29.
A production incident occurs at **2 AM**. Explain how properly separated stdout and stderr logs help reduce Mean Time to Recovery (MTTR).

---

### Q30.
Design a production-ready logging architecture for **500+ Linux servers** that includes:

- stdout and stderr separation
- Log rotation
- Centralized logging
- Searchable logs
- Alerting
- Long-term retention
- Backup and recovery
- Compliance auditing
