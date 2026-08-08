# SRE Troubleshooting Lab 02

# Scenario

## Problem

The engineer is unable to connect to the server through SSH.

Error seen by engineer:

```text
ssh: connect to host SERVER_IP port 22: Connection refused
```

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

> **Note:** The workflow diagram is kept as the standard template. For this SSH incident, the relevant path is **Network → Server → SSH Service → Port 22 → Firewall → Logs → Fix → Verification**.

---

# Step 1 — Check Network Connectivity

## Why?

Before troubleshooting SSH, verify that the server is reachable over the network.

Commands

```bash
ping SERVER_IP
```

Expected

```text
64 bytes from SERVER_IP ...
```

If ping fails, possible causes:

- Server unreachable
- Network issue
- Routing issue
- ICMP blocked

> Ping failure alone does **not** prove SSH is unavailable because ICMP may be blocked.

---

# Step 2 — Check Server Reachability

## Why?

Determine whether the server itself can be reached.

Command

```bash
ssh user@SERVER_IP
```

Observed error:

```text
ssh: connect to host SERVER_IP port 22: Connection refused
```

This is important because **Connection Refused** generally means the host is reachable, but nothing is accepting the connection on port `22`, or an active network device is rejecting it.

---

# Step 3 — Check SSH Port

## Why?

SSH normally listens on TCP port `22`. We need to determine whether the port is reachable.

Command

```bash
nc -zv SERVER_IP 22
```

Expected if the port is open:

```text
Connection to SERVER_IP 22 port [tcp/ssh] succeeded!
```

For the incident:

```text
Connection refused
```

This indicates that port `22` is not accepting connections.

---

# Step 4 — Check SSH Service

## Why?

The SSH daemon may be stopped or failed.

On the server:

```bash
systemctl status ssh
```

On some distributions:

```bash
systemctl status sshd
```

Check whether the service is:

```text
active (running)
```

or:

```text
inactive
failed
```

---

# Step 5 — Check Port 22 Listening

## Why?

The SSH service might appear active but still not be listening on the expected port.

Command

```bash
ss -tulnp | grep :22
```

Expected:

```text
LISTEN ... 0.0.0.0:22
```

If there is no output, nothing is listening on port `22`.

---

# Step 6 — Check SSH Logs

## Why?

Logs can reveal why the SSH service failed.

Commands

```bash
journalctl -u ssh
```

or

```bash
journalctl -u sshd
```

Recent logs:

```bash
journalctl -u ssh --since "10 minutes ago"
```

Possible causes:

- Configuration error
- Service failure
- Invalid SSH configuration
- Permission problem
- Host resource issue

---

# Step 7 — Validate SSH Configuration

## Why?

A configuration error can prevent the SSH daemon from starting correctly.

Command

```bash
sudo sshd -t
```

If there is no output:

```text
Configuration is valid.
```

If there is an error, fix the SSH configuration before restarting the service.

---

# Step 8 — Check Firewall

## Why?

Even if SSH is running and port `22` is listening, a firewall can block incoming SSH connections.

For UFW:

```bash
sudo ufw status
```

Check whether SSH is allowed:

```bash
sudo ufw status | grep 22
```

If required:

```bash
sudo ufw allow 22/tcp
```

---

# Step 9 — Start/Restart SSH Service

## Why?

If SSH is stopped or failed, restore the service.

Command

```bash
sudo systemctl restart ssh
```

If the service was stopped:

```bash
sudo systemctl start ssh
```

Then verify:

```bash
systemctl status ssh
```

---

# Step 10 — Verify Port 22

Command

```bash
ss -tulnp | grep :22
```

Expected:

```text
LISTEN ... :22
```

---

# Step 11 — Verify SSH Connection

From the client machine:

```bash
ssh user@SERVER_IP
```

Expected:

```text
user@SERVER_IP's password:
```

or successful authentication using an SSH key.

---

# Root Cause

The SSH service was unavailable, causing TCP port `22` to reject incoming connections.

---

# Resolution

The SSH service was restored:

```bash
sudo systemctl restart ssh
```

Then port `22` was verified:

```bash
ss -tulnp | grep :22
```

---

# Verification

✅ Server reachable

✅ SSH service active

✅ Port 22 listening

✅ SSH connection successful

---

# Lessons Learned

- `Connection Refused` is different from `Connection Timed Out`.
- Always verify network reachability before investigating the application/service.
- For SSH issues, check **service → port → configuration → firewall → logs**.
- `ss -tulnp` confirms whether the expected port is actually listening.
- `sshd -t` is useful for validating SSH configuration before restarting.
- Always verify the connection after applying the fix.

---

# Commands Used

```bash
ping SERVER_IP
ssh user@SERVER_IP
nc -zv SERVER_IP 22
systemctl status ssh
systemctl status sshd
ss -tulnp
journalctl -u ssh
journalctl -u sshd
sshd -t
ufw status
ufw allow 22/tcp
systemctl restart ssh
systemctl start ssh
```

# Decision Tree

```text
                    SSH Unavailable
                          │
                          ▼
              What error do users see?
                          │
      ┌──────────┬────────────┬──────────────┐
      │          │            │
 Connection   Timeout      Auth Failed
 Refused                    / Permission
      │          │            │
      ▼          ▼            ▼
SSH Service? Network?     Credentials?
Port 22?     Firewall?    SSH Key?
Process?     Routing?     Permissions?
      │          │            │
      ▼          ▼            ▼
Check SSH    Check Network  Check Auth
Service      Check Firewall Check sshd_config
      │
      ▼
Check Port 22
      │
      ▼
Check SSH Logs
      │
      ▼
Root Cause Found
      │
      ▼
Fix
      │
      ▼
Verify SSH Connection
```

---

# Interview Answer (2 Minutes)

> "When SSH is unavailable and I receive a 'Connection refused' error, I first verify whether the server is reachable using ping or another network-level check. Since connection refused usually indicates that the host is reachable but the target port is not accepting connections, I check port 22 using `nc` and `ss -tulnp`. Then I verify the SSH service using `systemctl status ssh`. If the service is stopped or failed, I inspect `journalctl` logs and validate the configuration with `sshd -t`. I also check the firewall to make sure TCP port 22 is allowed. After fixing the root cause, I restart the SSH service if necessary, verify that port 22 is listening, and finally test the SSH connection again. This approach lets me isolate the issue systematically instead of making random changes."
