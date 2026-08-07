# SRE Troubleshooting Lab 01

# Scenario  
Website is down

## Problem

The website is down and users are unable to access it.

Error seen by users:

- Connection Refused
- Timeout
- 502 Bad Gateway
- 503 Service Unavailable

---

# Investigation Workflow

```text
            Website Down
                  │
                  ▼
        Is Network Reachable?
                  │
        ┌─────────┴─────────┐
        │                   │
       No                  Yes
        │                   │
Check DNS/IP         Can Server Respond?
        │                   │
        ▼                   ▼
 Fix Network         Check Web Server
                          │
                ┌─────────┴─────────┐
                │                   │
             Stopped            Running
                │                   │
       Start Service        Check Port
                │                   │
                ▼                   ▼
         Check Logs         Port Listening?
                                  │
                     ┌────────────┴───────────┐
                     │                        │
                    No                       Yes
                     │                        │
             Start Application        Check Firewall
                     │                        │
                     ▼                        ▼
                 Verify                Check Application Logs
                                             │
                                             ▼
                                      Root Cause Found
                                             │
                                             ▼
                                            Fix
                                             │
                                             ▼
                                       Verify Website
```

---

# Step 1 — Check Network Connectivity

## Why?

If the server is unreachable, checking services is useless.

Commands

```bash
ping google.com
ping <server-ip>
```

Expected

```
64 bytes from ...
```

If failed

- Internet issue
- Network issue
- DNS issue

---

# Step 2 — Check DNS Resolution

## Why?

Sometimes the website is down because the domain is not resolving.

Commands

```bash
nslookup example.com

dig example.com
```

Verify

- Correct IP
- DNS response received

---

# Step 3 — Check Server Reachability

Commands

```bash
ssh user@server-ip
```

or

```bash
ping server-ip
```

If SSH fails

Possible causes

- Server down
- Firewall
- Network failure

---

# Step 4 — Check Web Server Status

Why?

Nginx or Apache may have stopped.

Commands

```bash
systemctl status nginx
```

or

```bash
systemctl status apache2
```

If stopped

```bash
sudo systemctl start nginx
```

---

# Step 5 — Check Listening Ports

Why?

Service may be running but not listening.

Commands

```bash
ss -tulnp

netstat -tulnp
```

Verify

```
80
443
```

are listening.

---

# Step 6 — Check Logs

Why?

Logs tell the actual reason.

Commands

```bash
journalctl -u nginx

tail -f /var/log/nginx/error.log

tail -f /var/log/syslog
```

Possible errors

- Permission denied
- Port already in use
- Configuration error
- Disk full

---

# Step 7 — Check Disk Space

Why?

A full disk can stop applications from writing logs or starting.

Command

```bash
df -h
```

If disk usage

```
100%
```

Free space immediately.

---

# Step 8 — Check Memory

Why?

Out of memory can kill processes.

Commands

```bash
free -h

top

htop
```

---

# Step 9 — Check Running Processes

Commands

```bash
ps aux

pgrep nginx
```

Verify

Process exists.

---

# Step 10 — Restart Service

Commands

```bash
sudo systemctl restart nginx
```

---

# Step 11 — Verify Website

Commands

```bash
curl http://localhost

curl http://<server-ip>
```

Browser

```
http://server-ip
```

Expected

```
HTTP 200 OK
```

---

# Root Cause (Example)

The Nginx service had stopped after a failed configuration update.

---

# Resolution

```bash
sudo systemctl restart nginx
```

---

# Verification

✅ Website accessible

✅ HTTP 200 OK

✅ Service Active

✅ Port 80 Listening

---

# Lessons Learned

- Never assume the cause.
- Always troubleshoot layer by layer.
- Verify each hypothesis before moving on.
- Check logs before guessing.
- Confirm the fix with testing.

---

# Commands Used

```bash
ping
nslookup
dig
ssh
systemctl status nginx
systemctl restart nginx
ss -tulnp
ps aux
pgrep
journalctl
tail
df -h
free -h
top
htop
curl
```
# Decision Tree 
                    Website Down
                          │
                          ▼
              What error do users see?
                          │
      ┌──────────┬────────────┬──────────────┬────────────┐
      │          │            │              │
 Connection   Timeout      502 Bad       503 Service
 Refused                    Gateway      Unavailable
      │          │            │              │
      ▼          ▼            ▼              ▼
Service?     Network?     Backend?      Resources?
Port?        Firewall?    App?          CPU?
Process?     Routing?     Port?         RAM?

---

# Interview Answer (2 Minutes)

> "When a website is reported down, I follow a structured troubleshooting approach instead of guessing. First, I verify network connectivity and DNS resolution. Then I check whether the server is reachable via SSH. After that, I verify the web server status using `systemctl status nginx`, ensure ports 80/443 are listening with `ss -tulnp`, and inspect logs using `journalctl` or the Nginx error log. I also check disk space, memory, and running processes to identify resource issues. Once I find the root cause, I apply the fix, restart the service if required, and finally verify the website using `curl` and a browser. This systematic approach minimizes downtime and avoids unnecessary changes."
