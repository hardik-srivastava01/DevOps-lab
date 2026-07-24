# Linux Day 13 Practice Log

## Objective

Practice Linux networking commands to understand IP addressing, routing, DNS resolution, hostname management, network connectivity, listening ports, and downloading resources from the terminal.

---

## Commands Executed

```bash
mkdir Linux-Day13
cd Linux-Day13

# Check IP Address
ip addr

# Show routing table
ip route

# Check hostname
hostname
hostnamectl

# Test connectivity
ping google.com

# DNS lookup
nslookup google.com

# Alternative DNS lookup
dig google.com

# Show listening ports
ss -tuln

# Network connections
ss -tunap

# Download a webpage
curl https://google.com

# Download a file
wget https://example.com

cd ..
rm -r Linux-Day13
```

---

## Result

- Successfully created and removed the practice directory.
- Viewed all available network interfaces and IP addresses.
- Displayed the system routing table.
- Verified the system hostname.
- Tested Internet connectivity using ICMP.
- Performed DNS resolution using `nslookup` and `dig`.
- Displayed listening ports and active network connections.
- Retrieved webpage content using `curl`.
- Downloaded a file using `wget`.

---

## Issues Faced

Initially, I was confused about the difference between `curl` and `wget`.

After practicing, I understood:

- `curl` is mainly used for testing APIs and viewing HTTP responses.
- `wget` is primarily used for downloading files.
- `ss -tuln` shows only listening ports, while `ss -tunap` provides detailed information about active connections, processes, and listening services.

---

## Real World Problems You Can Solve

### DevOps

- Verify server connectivity after deployment.
- Check if an application is listening on the correct port.
- Debug DNS resolution failures.
- Validate API responses after CI/CD deployment.
- Verify routing before connecting services.

### SRE

- Troubleshoot production server outages.
- Investigate network connectivity issues.
- Identify services not listening on required ports.
- Diagnose DNS-related incidents.
- Monitor active network connections during outages.

### Cloud Engineer

- Verify EC2 VM networking.
- Troubleshoot Route53 DNS issues.
- Validate Security Group and Firewall configurations.
- Test application accessibility after deployment.
- Verify routing inside cloud virtual networks.

---

## Best Practices

- Always verify DNS before troubleshooting applications.
- Check routing before assuming network failure.
- Use `ss` instead of the deprecated `netstat`.
- Prefer `curl` for API and application testing.
- Use `wget` for downloading packages or installation files.
- Verify hostname after provisioning new servers.

---

## Time Taken

60 Minutes

---

## Status

✅ Completed
