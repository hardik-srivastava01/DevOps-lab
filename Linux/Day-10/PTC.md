# Linux Day 10 - Technical Interview Questions (Services & Systemd)

## 🟢 Core Level (Fundamentals)

### Q1. What is a Service in Linux?

### Q2. What is the difference between a Service and a Process?

### Q3. What is a Daemon Process?

### Q4. What is `systemd`?

### Q5. What is the role of PID 1 in Linux?

### Q6. What is `systemctl`?

### Q7. What is the difference between `systemctl start` and `systemctl enable`?

### Q8. What is the Linux Boot Process?

### Q9. What is the Service Lifecycle?

### Q10. What is `journalctl` used for?

---

# 🟡 Intermediate Level (Hands-on & Troubleshooting)

### Q11.
A user reports that the website is down. Which `systemctl` commands would you use to investigate the issue?

---

### Q12.
A service starts successfully, but after reboot it does not start automatically. Why?

---

### Q13.
What is the difference between:

```bash
systemctl restart nginx
```

and

```bash
systemctl reload nginx
```

When would you use each?

---

### Q14.
How would you verify whether a service is currently running?

---

### Q15.
A service status shows **Failed**. What would be your troubleshooting approach?

---

### Q16.
How do you display logs for only the Docker service?

---

### Q17.
A service is consuming high CPU usage. How would you investigate it?

---

### Q18.
After editing the Nginx configuration, the changes are not reflected. What steps would you perform?

---

### Q19.
How do you list all running services on a Linux system?

---

### Q20.
A service is repeatedly crashing every few minutes. What information would you collect before restarting it?

---

# 🔴 Advanced Level (FAANG / Product Companies)

### Q21.
Your production application becomes unavailable immediately after deployment. Describe your end-to-end troubleshooting process using `systemctl` and `journalctl`.

---

### Q22.
A Docker service fails to start after a system reboot. How would you identify the root cause?

---

### Q23.
A Java application runs manually, but it does not start automatically after boot. How would you configure it as a `systemd` service?

---

### Q24.
How would you monitor and automatically recover critical production services if they crash?

---

### Q25.
Design a deployment strategy that updates a service with minimal downtime.

---

# ⭐ Expert Production Scenarios

### Q26.
An Nginx service fails with:

```text
Active: failed
```

What would you check first?

---

### Q27.
Your Jenkins service is inactive, but the process is still running. How can this happen, and how would you troubleshoot it?

---

### Q28.
A production server takes a very long time to boot. How would you identify which service is delaying startup?

---

### Q29.
How would you investigate a memory leak in a long-running systemd service?

---

### Q30.
Design a production-ready service management strategy for **500+ Linux servers** that includes:

- Automatic startup after reboot
- Health monitoring
- Centralized logging
- Automatic restart on failure
- Alerting
- Zero-downtime deployments
