# Linux Day 14 - Technical Interview Questions

## 🟢 Core Level

### Q1. What is SSH, and why is it preferred over Telnet?

### Q2. Explain the SSH Client-Server architecture.

### Q3. What is the difference between Password Authentication and SSH Key Authentication?

### Q4. Explain the difference between a Public Key and a Private Key.

### Q5. What is the purpose of the `authorized_keys` file?

### Q6. What is the purpose of the `known_hosts` file?

### Q7. Why does SSH use TCP instead of UDP?

### Q8. What service is responsible for accepting SSH connections on Linux?

### Q9. Why should a Private Key never be shared?

### Q10. Why does SSH use Port 22 by default?

---

# 🟡 Intermediate Level

### Q11.
You are unable to SSH into a Linux server. What would you check first?

### Q12.
SSH connection is timing out. What could be the possible reasons?

### Q13.
SSH shows:

```
Permission denied (publickey)
```

How would you troubleshoot it?

### Q14.
How do you verify whether the SSH service is running?

### Q15.
How do you verify that Port 22 is listening?

### Q16.
How would you securely copy deployment artifacts to a production server?

### Q17.
How do you disable Password Authentication and enable only SSH Key Authentication?

### Q18.
What Linux file permissions should be set for the `.ssh` directory and the Private Key?

### Q19.
Why does SSH display:

```
REMOTE HOST IDENTIFICATION HAS CHANGED!
```

What would you do?

### Q20.
How do you generate a new SSH key pair using ED25519?

---

# 🔴 Advanced Level (FAANG / Product Companies)

### Q21.
Your CI/CD pipeline suddenly fails to connect to the deployment server over SSH. How would you investigate the issue?

### Q22.
A new DevOps engineer cannot SSH into an AWS EC2 instance using the same key that works for everyone else. What could be the possible causes?

### Q23.
A production server is reachable via ping, but SSH is not working. Explain your troubleshooting approach.

### Q24.
A developer accidentally committed the SSH Private Key to GitHub. What immediate actions would you take?

### Q25.
How would you secure SSH access for hundreds of production Linux servers?

---

# ⭐ Expert Production Scenarios

### Q26.
Users can SSH using passwords but not using SSH keys. Where would you start troubleshooting?

### Q27.
After changing the SSH configuration, all SSH connections fail. How would you recover the server?

### Q28.
A firewall is enabled on the server. How would you verify whether SSH traffic is being blocked?

### Q29.
How would you audit failed SSH login attempts on a Linux server?

### Q30.
Design a secure SSH access strategy for a production environment hosted on AWS with 500 Linux servers.
