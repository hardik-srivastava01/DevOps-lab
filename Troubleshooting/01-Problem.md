# SRE Troubleshooting Lab 01

# Incident: Website Down

## Scenario

Users reported that the website was inaccessible.

The application was hosted on a Linux server running Nginx.

---

# Symptoms

- Website not opening
- Browser showed **Connection Refused**
- Users could not access the application
- Service unavailable

---

# Investigation Path

```text
Users Report Website Down
          │
          ▼
Verify Issue
          │
          ▼
Check Network Connectivity
          │
          ▼
Check Server Reachability
          │
          ▼
Check Nginx Service
          │
          ▼
Check Listening Ports
          │
          ▼
Check Logs
          │
          ▼
Identify Root Cause
          │
          ▼
Apply Fix
          │
          ▼
Verify Website
```

---

# Architecture

```text
            User Browser
                  │
                  ▼
            HTTP Request
                  │
                  ▼
          Linux Web Server
                  │
          ┌───────┴────────┐
          │                │
       Nginx          Backend App
          │                │
          └───────┬────────┘
                  ▼
              Website
```

---

# Step 1 — Verify Issue

## Why

Confirm that the website is actually unavailable.

Commands

```bash
curl http://localhost

curl http://<server-ip>
```

Expected

```
HTTP 200 OK
```

Observed

```
Connection Refused
```

---

# Step 2 — Check Network

Commands

```bash
ping <server-ip>
```

Purpose

Verify the server is reachable.

---

# Step 3 — Check Nginx Service

Commands

```bash
systemctl status nginx
```

Observed

```
inactive (dead)
```

---

# Step 4 — Check Port

Commands

```bash
ss -tulnp
```

Observed

Port 80 was not listening.

---

# Step 5 — Check Logs

Commands

```bash
journalctl -u nginx

tail -f /var/log/nginx/error.log
```

Purpose

Identify why Nginx stopped.

---

# Root Cause

The Nginx service was stopped, so no process was listening on port 80.

---

# Resolution

```bash
sudo systemctl start nginx
```

---

# Verification

Commands

```bash
systemctl status nginx

ss -tulnp

curl http://localhost
```

Expected

```
HTTP/1.1 200 OK
```

Website opened successfully.

---

# Lessons Learned

- Verify the issue before troubleshooting.
- Check the service before changing configurations.
- Always inspect logs instead of guessing.
- Confirm port availability after restarting the service.
- Verify the fix from the user's perspective.

---

# Commands Used

```bash
curl
ping
systemctl status nginx
systemctl start nginx
ss -tulnp
journalctl -u nginx
tail -f /var/log/nginx/error.log
```

---

# Production Impact

- Users were unable to access the website.
- Business services were temporarily unavailable.
- Restoring the Nginx service resolved the outage.

---

# Prevention

- Enable Nginx auto-start:

```bash
sudo systemctl enable nginx
```

- Configure monitoring and alerts.
- Regularly review service logs.
- Include health checks in monitoring.

---

# Interview Answer (2 Minutes)

> A website outage was reported by users. I first verified the issue using `curl`, then checked server connectivity. After confirming the server was reachable, I inspected the Nginx service using `systemctl status nginx` and found it inactive. I verified that port 80 was not listening with `ss -tulnp` and examined the logs using `journalctl` and the Nginx error log. After identifying that the service had stopped, I restarted it with `systemctl start nginx` and confirmed recovery by checking the service status, listening ports, and receiving an HTTP 200 response from `curl`. This structured approach helped identify the root cause quickly and restore service safely.
