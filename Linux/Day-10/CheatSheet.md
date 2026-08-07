# Linux Day 10 CheatSheet

## One-Line Interview Answers

### What is a Service?
→ A service is a long-running background application managed by **systemd**.

### What is a Process?
→ A process is a running instance of a program.

### Service vs Process?
→ A service provides continuous functionality; a process is any running program.

### What is a Daemon Process?
→ A daemon is a background process that provides system or application services.

### Why do daemon names end with 'd'?
→ The suffix **'d'** stands for **daemon** (e.g., `sshd`, `httpd`, `dockerd`).

### What is systemd?
→ `systemd` is the init system and service manager responsible for booting Linux and managing services.

### What is `systemctl`?
→ `systemctl` is the command-line utility used to manage services controlled by `systemd`.

### What is the Linux Boot Process?
→ BIOS/UEFI → GRUB → Kernel → systemd (PID 1) → Services → Login.

### What is PID 1?
→ PID 1 is the **systemd** process that starts and manages all system services.

### What is a Service Lifecycle?
→ A service lifecycle includes Start, Stop, Restart, Reload, Enable, and Disable operations.

### Difference between Restart and Reload?
→ Restart stops and starts the service; Reload applies configuration changes without stopping the service (if supported).

### What is `journalctl`?
→ `journalctl` is the utility used to view logs collected by `systemd`.

### How do you check a service status?
→ `systemctl status <service>`

### How do you start a service?
→ `systemctl start <service>`

### How do you stop a service?
→ `systemctl stop <service>`

### How do you restart a service?
→ `systemctl restart <service>`

### How do you enable a service at boot?
→ `systemctl enable <service>`

### How do you disable a service at boot?
→ `systemctl disable <service>`

### How do you view logs for a specific service?
→ `journalctl -u <service>`

### How do you follow logs in real time?
→ `journalctl -fu <service>`

---

# Interview Keywords

- Service
- Process
- Daemon
- systemd
- systemctl
- PID 1
- Boot Process
- Service Lifecycle
- journalctl
- Active
- Inactive
- Failed
- Enabled
- Disabled
- Restart
- Reload

---

# Common Follow-up Questions

- Difference between a Service and a Process?
- What happens if `systemd` fails?
- Why is PID 1 special?
- Difference between `restart` and `reload`?
- How do you check why a service failed?
- What is a daemon?
- How do you enable a service after reboot?
- How do you check service logs?
- Why use `systemd` instead of running applications manually?
- How do you troubleshoot a failed service?

---

# Production Relevance

## DevOps

- Deploy and restart applications.
- Manage Docker, Jenkins, and Nginx services.
- Automate service startup after reboot.
- Verify deployments.

## SRE

- Troubleshoot production incidents.
- Analyze service logs.
- Restart failed services.
- Monitor service health.

## Cloud Engineer

- Configure services on cloud VMs.
- Enable services during provisioning.
- Troubleshoot startup failures.
- Maintain cloud application availability.

---

# 30–50 LPA Interview Tips

✅ Say **"A service is a managed background application, while a process is any running program."**

✅ Mention **"`systemd` is the init system running as PID 1."**

✅ Mention **"`journalctl` is the primary tool for service log analysis."**

✅ Mention **"Use `reload` when only configuration changes are needed; use `restart` when the application must restart."**

✅ Mention **"Always verify service status and logs before restarting a failed service."**

---

# Rapid Revision

- Service → Managed background application
- Process → Running instance of a program
- Daemon → Background service process
- systemd → Init system & service manager
- PID 1 → systemd process
- `systemctl` → Manage services
- `status` → Check service health
- `start` → Start service
- `stop` → Stop service
- `restart` → Stop + Start
- `reload` → Reload configuration
- `enable` → Start at boot
- `disable` → Don't start at boot
- `journalctl` → View service logs
- Boot Process → BIOS → GRUB → Kernel → systemd → Services → Login
