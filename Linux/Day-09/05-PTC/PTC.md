# Linux Day 9 - Technical Interview Questions (Process Management)

## 🟢 Core Level (Fundamentals)

### Q1. What is a Process in Linux?

### Q2. What is the difference between a Program and a Process?

### Q3. What is the Process Lifecycle?

### Q4. What is PID, and why is it important?

### Q5. What is PPID?

### Q6. What is the difference between a Parent Process and a Child Process?

### Q7. What is the difference between a Foreground Process and a Background Process?

### Q8. What is a Daemon Process?

### Q9. What is a Zombie Process?

### Q10. What is the difference between SIGTERM and SIGKILL?

---

# 🟡 Intermediate Level (Hands-on & Troubleshooting)

### Q11.
A Java application is consuming **95% CPU**. How would you identify the responsible process?

---

### Q12.
A process is not responding to `kill PID`. What would you do next, and why?

---

### Q13.
How would you find the PID of an Nginx process?

---

### Q14.
A server is running slowly. Which Linux commands would you use to determine whether the issue is related to CPU, memory, or disk?

---

### Q15.
A process is consuming excessive memory. How would you investigate it?

---

### Q16.
You accidentally started a long-running command in the foreground. How can you move it to the background without stopping it?

---

### Q17.
A background job has finished. How would you verify it?

---

### Q18.
How would you identify the parent process of a running application?

---

### Q19.
You observe multiple Zombie processes on a production server. What is the root cause, and how would you resolve it?

---

### Q20.
A process restarts repeatedly after being killed. What could be the reason?

---

# 🔴 Advanced Level (FAANG / Product Companies)

### Q21.
A production API suddenly becomes unresponsive. Explain your step-by-step process troubleshooting approach.

---

### Q22.
A Docker container exits unexpectedly every few minutes. Which Linux process commands would you use to investigate?

---

### Q23.
How would you detect and troubleshoot a memory leak in a long-running application?

---

### Q24.
A deployment script hangs indefinitely. How would you determine whether the problem is CPU, memory, I/O, or a blocked process?

---

### Q25.
Design a monitoring strategy for production Linux servers to detect abnormal process behavior before users are affected.

---

# ⭐ Expert Production Scenarios

### Q26.
A server's **load average is very high**, but CPU utilization is low. What could cause this, and how would you investigate?

---

### Q27.
A critical production process is accidentally terminated. What immediate actions would you take to minimize downtime?

---

### Q28.
How would you safely terminate a production process without causing data corruption or service interruption?

---

### Q29.
Your monitoring system reports that a process has become a Zombie. Explain why this happens and how you would fix it without rebooting the server.

---

### Q30.
Design a production-ready process monitoring solution for **500+ Linux servers** that includes:

- CPU monitoring
- Memory monitoring
- Process health checks
- Automatic restart
- Alerting
- Centralized logging
- Performance dashboards
