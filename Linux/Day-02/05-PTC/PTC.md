# Linux Day 2 - Technical Interview Questions  
## File & Directory Management

---

# 🟢 Core Level (Fundamentals)

### Q1. What is the difference between a file and a directory in Linux?

### Q2. What is an absolute path?

### Q3. What is a relative path?

### Q4. Difference between absolute path and relative path?

### Q5. What does the root directory (`/`) represent in Linux?

### Q6. What is the purpose of the `mkdir` command?

### Q7. What is the purpose of the `touch` command?

### Q8. What is the difference between `cp` and `mv`?

### Q9. What happens when you use `mv` on a file?

### Q10. What does the `-r` option mean in Linux commands?

---

# 🟡 Intermediate Level (Hands-on & Troubleshooting)

### Q11.
You need to copy an entire application directory including all files and subdirectories. Which command will you use?

---

### Q12.
A developer accidentally overwrote a configuration file. How would you prevent this situation during file operations?

---

### Q13.
You moved a file but the application cannot find it anymore. How would you troubleshoot?

---

### Q14.
What is the difference between:

```bash
cp file.txt backup.txt
```

and

```bash
mv file.txt backup.txt
```

---

### Q15.
You are inside:

```bash
/home/user/project
```

How will you access:

```bash
/home/user/config/app.conf
```

using an absolute path and relative path?

---

### Q16.
Why is `cp -r` required when copying directories?

---

### Q17.
A script works on your machine but fails on a server because of paths. What could be the reason?

---

### Q18.
How will you verify that a copied file exists and contains the correct data?

---

### Q19.
What precautions should be taken before using:

```bash
rm -r
```

on production servers?

---

### Q20.
How can you display the complete directory structure of a project?

---

# 🔴 Advanced Level (FAANG / Product Companies)

### Q21.
A production deployment failed because required files were missing. Explain your troubleshooting approach using Linux file management commands.

---

### Q22.
Explain how incorrect relative paths can break CI/CD pipelines.

---

### Q23.
Design a backup strategy using Linux file copy operations for application configuration files.

---

### Q24.
A developer moved a critical file accidentally on a production server. How will you recover and investigate?

---

### Q25.
Why are absolute paths preferred in automation scripts?

---

# ⭐ Expert Production Scenarios

### Q26.
A deployment script runs successfully manually but fails in Jenkins/GitHub Actions. How can file path issues cause this?

---

### Q27.
You need to migrate an application directory from one server to another. Explain your approach.

---

### Q28.
A server has thousands of files. How would you safely copy only required files without affecting production data?

---

### Q29.
Explain how you would organize directories for a production application:

- Application files
- Configuration
- Logs
- Backups
- Temporary data

---

### Q30.
During a production incident, explain how commands like:

- `pwd`
- `ls`
- `cp`
- `mv`
- `find`
- `rm`

help reduce MTTR (Mean Time To Recovery).
