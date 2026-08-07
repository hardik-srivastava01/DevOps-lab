# Linux Day 10 - Linux Services & Systemd

## Objective

Learn how Linux manages services using **systemd**. Understand the difference between a Service and a Process, Daemon Processes, the Linux Boot Process, Service Lifecycle, and how to manage and troubleshoot services using `systemctl` and `journalctl`.

---

# What is a Service?

A Service is a background application that continuously provides functionality to the operating system or other applications.

Examples:

- SSH
- Nginx
- Apache
- Docker
- Jenkins
- MySQL

Unlike normal programs, services usually start automatically during system boot and continue running in the background.

---

# Why is it Important?

Every production Linux server depends on services.

Without services:

- Websites won't load.
- Databases won't run.
- SSH access won't work.
- Docker containers won't start.
- Monitoring tools won't collect metrics.

---

# Real DevOps Use Cases

- Starting Docker service.
- Restarting Nginx after deployment.
- Checking Jenkins status.
- Enabling services after reboot.
- Troubleshooting failed services.
- Monitoring service logs.

---

# Important Concepts

---

## Service vs Process

### Service

A long-running background application managed by **systemd**.

Examples:

- nginx
- docker
- ssh
- mysql

### Process

A running instance of any program.

Example:

```bash
firefox
```

Every Service is implemented using one or more Processes, but not every Process is a Service.

---

## Daemon Process

A Daemon is a background process that runs without user interaction and provides system or application services.

Examples

- sshd
- nginx
- dockerd
- crond

Daemon names often end with **d**, meaning **daemon**.

---

## What is systemd?

**systemd** is the default init system and service manager used by most modern Linux distributions.

Responsibilities:

- Boot the operating system.
- Start and stop services.
- Manage system state.
- Track service health.
- Handle dependencies between services.

---

## systemctl

`systemctl` is the command-line utility used to manage services controlled by **systemd**.

Common Commands

Check status

```bash
systemctl status nginx
```

Start service

```bash
sudo systemctl start nginx
```

Stop service

```bash
sudo systemctl stop nginx
```

Restart service

```bash
sudo systemctl restart nginx
```

Reload configuration

```bash
sudo systemctl reload nginx
```

Enable at boot

```bash
sudo systemctl enable nginx
```

Disable at boot

```bash
sudo systemctl disable nginx
```

View all services

```bash
systemctl list-units --type=service
```

---

## Boot Process (Basic)

Linux Boot Sequence

```
BIOS / UEFI
      ↓
Bootloader (GRUB)
      ↓
Linux Kernel
      ↓
systemd (PID 1)
      ↓
System Services
      ↓
User Login
```

### Explanation

**BIOS/UEFI**
- Initializes hardware.

**GRUB**
- Loads the Linux Kernel.

**Kernel**
- Initializes memory, CPU, drivers, and hardware.

**systemd**
- Starts all required services.

**Login**
- User can now access the system.

---

## Service Lifecycle

Typical Service States

```
Start
   ↓
Running
   ↓
Reload (Optional)
   ↓
Restart (Optional)
   ↓
Stop
```

Common Service Status

- Active
- Inactive
- Failed
- Enabled
- Disabled

---

## Service Logs (`journalctl`)

`journalctl` displays logs collected by **systemd**.

View complete logs

```bash
journalctl
```

Logs for a service

```bash
journalctl -u nginx
```

Latest logs

```bash
journalctl -xe
```

Follow logs in real time

```bash
journalctl -fu nginx
```

Today's logs

```bash
journalctl --since today
```

---

## Commands Practiced

```bash
systemctl status nginx

systemctl start nginx

systemctl stop nginx

systemctl restart nginx

systemctl reload nginx

systemctl enable nginx

systemctl disable nginx

systemctl list-units --type=service

journalctl

journalctl -u nginx

journalctl -xe

journalctl -fu nginx
```

---

## Common Mistakes

- Confusing a Process with a Service.
- Forgetting to enable a service after installation.
- Restarting instead of reloading configuration.
- Ignoring service logs during troubleshooting.
- Running applications manually instead of as services.
- Not checking service status after deployment.

---

## Hands-on Practice

Today I learned how Linux manages services using **systemd**. I explored the difference between Services and Processes, understood Daemon Processes, learned the Linux Boot Process, managed services using `systemctl`, and analyzed logs using `journalctl`.

---

## Real World Problems You Can Solve

### DevOps

- Restart Nginx after deployment.
- Start Docker automatically after reboot.
- Troubleshoot Jenkins service failures.
- Enable production services.
- Verify deployment success.

### SRE

- Investigate failed services.
- Analyze service logs.
- Restart crashed applications.
- Monitor critical system services.
- Reduce production downtime.

### Cloud Engineer

- Configure services on cloud VMs.
- Enable services during provisioning.
- Troubleshoot EC2 startup issues.
- Manage application services on Azure and GCP.
- Validate cloud service health.

---

## Best Practices

- Always check service status after deployment.
- Use `reload` when configuration changes don't require a full restart.
- Enable critical services at boot.
- Review logs before restarting failed services.
- Monitor service health continuously.
- Avoid running production applications outside **systemd**.
- Use descriptive service names and maintain proper logging.

---

## Key Takeaway

**systemd** is the heart of modern Linux service management. Every DevOps, SRE, and Cloud Engineer must know how to start, stop, troubleshoot, monitor, and automate services because production applications depend on them.

---

## Next Step

Tomorrow I will learn:

- Package kya hota hai?
- Package Manager kya hota hai?
- apt vs apt-get
- Repository kya hoti hai?
- Update vs Upgrade
- Install vs Remove vs Purge
- Dependency kya hoti hai?
- Cache kya hota hai?
