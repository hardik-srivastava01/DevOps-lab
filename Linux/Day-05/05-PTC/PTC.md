# Linux Day 5 - Technical Interview Questions (File Viewing & Text Processing)

## 🟢 Core Level (Fundamentals)

### Q1. What is the purpose of the `cat` command?

### Q2. What is the difference between `cat`, `less`, and `more`?

### Q3. Why is `less` preferred for large log files?

### Q4. What is the difference between `head` and `tail`?

### Q5. What is the use of `tail -f`?

### Q6. What is `grep` and why is it widely used?

### Q7. What does the `wc` command do?

### Q8. What is the difference between `wc -l`, `wc -w`, and `wc -c`?

### Q9. What is the purpose of the `sort` command?

### Q10. Why is `sort` often used before `uniq`?

---

# 🟡 Intermediate Level (Hands-on & Troubleshooting)

### Q11.
A production log file is **10 GB**. Which command would you use to read it efficiently and why?

---

### Q12.
How would you monitor new log entries in real time on a Linux server?

---

### Q13.
A developer reports **"Database Connection Failed"**. Which command would you use to search this message in application logs?

---

### Q14.
How would you count the total number of error entries in a log file?

---

### Q15.
You need to find all unique IP addresses from a log file. Which Linux command combination would you use?

---

### Q16.
How would you display only the last 50 lines of a log file?

---

### Q17.
A configuration file contains duplicate entries. How would you identify and remove them?

---

### Q18.
You need to display the first 20 lines of a configuration file. Which command would you use?

---

### Q19.
A command produces thousands of lines of output. Why is `less` a better choice than `cat`?

---

### Q20.
Explain how pipes (`|`) improve command execution in Linux.

---

# 🔴 Advanced Level (FAANG / Product Companies)

### Q21.
Your application is crashing in production. Explain your complete log investigation process using Linux text-processing commands.

---

### Q22.
How would you identify the **top recurring error messages** from a production log file?

---

### Q23.
A CI/CD deployment fails. Which Linux commands would you use to quickly identify the root cause from deployment logs?

---

### Q24.
A Kubernetes Pod is repeatedly restarting. How would Linux text-processing commands help during troubleshooting?

---

### Q25.
How would you analyze a **50 GB** log file without consuming excessive memory?

---

# ⭐ Expert Production Scenarios

### Q26.
Design a log analysis workflow for **500+ Linux servers** using only standard Linux commands before introducing centralized logging.

---

### Q27.
A production server becomes slow due to excessive logging. How would you identify the largest log files and investigate them?

---

### Q28.
An application team reports intermittent failures. Explain how you would use `grep`, `tail`, `wc`, `sort`, `uniq`, and pipes together to identify the issue.

---

### Q29.
How would you detect the most frequent error occurring in a production log file?

---

### Q30.
Design a production troubleshooting workflow that includes:

- Log inspection
- Real-time monitoring
- Error filtering
- Duplicate analysis
- Event counting
- Root Cause Analysis (RCA)
- Performance optimization
- Automation opportunities
