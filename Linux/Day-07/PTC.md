# Linux Day 7 - Technical Interview Questions (File Compression & Archiving)

## 🟢 Core Level (Fundamentals)

### Q1. What is Archiving in Linux?

### Q2. What is Compression?

### Q3. What is the difference between Archiving and Compression?

### Q4. What is the difference between `.tar`, `.gz`, and `.tar.gz`?

### Q5. What is a Backup?

### Q6. Why is `tar` commonly used in Linux?

### Q7. What is the difference between `gzip` and `zip`?

### Q8. What is the purpose of `gunzip`?

### Q9. What is the difference between `du` and `df`?

### Q10. When would you use `zip` instead of `tar.gz`?

---

# 🟡 Intermediate Level (Hands-on & Troubleshooting)

### Q11.
Your project contains **5,000 files**. Which command would you use to create a single compressed archive for deployment?

---

### Q12.
A backup file named `backup.tar.gz` is received. How would you verify its contents **without extracting** it?

---

### Q13.
Your server is running out of disk space. Which commands would you use to identify whether the problem is filesystem usage or a large directory?

---

### Q14.
A `.gz` file is received, but the original file is needed. Which command would you use?

---

### Q15.
A deployment artifact is **3 GB**. How would compression help in a CI/CD pipeline?

---

### Q16.
You accidentally extracted an archive into the wrong directory. How would you prevent this in production?

---

### Q17.
A backup archive becomes corrupted. What best practices would have prevented data loss?

---

### Q18.
When would you prefer `gzip` over `zip` in Linux production environments?

---

### Q19.
How would you check whether a server has enough disk space before creating a backup?

---

### Q20.
Why is archiving generally performed before compression?

---

# 🔴 Advanced Level (FAANG / Product Companies)

### Q21.
Design a backup strategy for a production Linux server that minimizes storage usage while allowing fast recovery.

---

### Q22.
A production server generates **50 GB of logs every day**. How would you archive, compress, and retain them efficiently?

---

### Q23.
Your CI/CD pipeline must package an application before deployment. Which archive format would you choose and why?

---

### Q24.
How would you automate daily backups of application data using Linux tools?

---

### Q25.
A cloud VM has only **10 GB** of free storage. What steps would you take before generating a large backup archive?

---

# ⭐ Expert Production Scenarios

### Q26.
A deployment to **100 Linux servers** requires transferring the same application package. How would you optimize file size and transfer speed?

---

### Q27.
A backup archive cannot be extracted on another server. What troubleshooting steps would you follow?

---

### Q28.
Your monitoring system reports **95% disk utilization**. Explain your investigation process using Linux commands.

---

### Q29.
How would you design a log rotation and compression strategy for high-traffic production servers?

---

### Q30.
Design an enterprise backup solution for **500+ Linux servers** that includes:

- Daily incremental backups
- Weekly full backups
- Compression
- Archive verification
- Off-site/cloud storage
- Backup encryption
- Retention policy
- Disaster recovery testing

