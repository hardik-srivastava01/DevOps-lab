# Linux Day 10 Practice Log

## Objective

Practice Linux Service Management commands to understand how services are managed using `systemctl` and how logs help troubleshoot services in a Linux system.

---

## Commands Executed

```bash
mkdir Linux-Day10
cd Linux-Day10

# List all active services
systemctl list-units --type=service

# Check SSH service status
systemctl status ssh

# Check Cron service status
systemctl status cron

# Restart SSH service
sudo systemctl restart ssh

# Reload SSH service configuration
sudo systemctl reload ssh

# Enable SSH service at boot
sudo systemctl enable ssh

# List all installed service files
systemctl list-unit-files --type=service

# Show failed services
systemctl --failed

# View SSH service logs
journalctl -u ssh --no-pager

cd ..
rm -r Linux-Day10
```

---

## Result

- Successfully created a practice directory.
- Listed all active services running on the system.
- Checked the current status of SSH and Cron services.
- Restarted the SSH service successfully.
- Reloaded the SSH service configuration without stopping the service.
- Enabled the SSH service to start automatically during system boot.
- Listed all installed service unit files.
- Checked for failed services using `systemctl --failed`.
- Viewed SSH service logs using `journalctl`.
- Removed the practice directory after completing the exercise.

---

## Issues Faced

Initially, I was confused about the difference between **restart** and **reload**.

After practicing, I understood:

- **restart** stops the service and starts it again.
- **reload** applies configuration changes without completely stopping the running service.
- I also learned that `journalctl` is useful for viewing service logs and troubleshooting service failures.

---

## Time Taken

45 Minutes

---

## Status

✅ Completed

---

## Commands Practiced

- `systemctl list-units --type=service`
- `systemctl status`
- `systemctl restart`
- `systemctl reload`
- `systemctl enable`
- `systemctl list-unit-files`
- `systemctl --failed`
- `journalctl -u`

---

## Key Learning

- A Linux Service is a background process managed by **systemd**.
- `systemctl` is the primary command used to manage services.
- `journalctl` helps analyze service logs for troubleshooting.
- Services can be started automatically during boot using `enable`.
- Checking service status and logs is the first step while investigating production issues in DevOps and SRE.

