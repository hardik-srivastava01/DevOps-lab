# Linux Day 14 - SSH (Secure Shell)

## Objective

Learn SSH (Secure Shell), the industry-standard protocol for securely accessing and managing remote Linux servers. Understand SSH architecture, authentication methods, key-based login, and security best practices used in DevOps, SRE, and Cloud Engineering.

---

## What is SSH?

SSH (Secure Shell) is a secure network protocol used to remotely access, manage, and administer Linux servers over an encrypted connection.

Unlike Telnet, SSH encrypts all communication between the client and the server, protecting passwords, commands, and transferred data from interception.

---

## Why is it Important?

SSH is one of the most frequently used technologies in DevOps, SRE, and Cloud Engineering.

Without SSH, engineers cannot:

- Connect to remote Linux servers.
- Deploy applications.
- Manage cloud instances.
- Troubleshoot production issues.
- Execute administrative commands securely.
- Transfer files securely.

---

## Real DevOps Use Cases

- Access AWS EC2 instances.
- Connect to Azure and GCP virtual machines.
- Deploy applications from CI/CD pipelines.
- Manage Kubernetes worker nodes.
- Configure production servers remotely.
- Perform incident troubleshooting.
- Secure server administration.

---

# Important Concepts

---

## What is SSH?

SSH (Secure Shell) is an encrypted protocol used for secure remote login and command execution.

Unlike Telnet, SSH encrypts authentication credentials and all transmitted data.

---

## Why SSH is Used?

SSH provides secure remote administration by:

- Encrypting communication.
- Preventing password interception.
- Authenticating users.
- Executing remote commands securely.
- Transferring files securely.

---

## SSH Architecture

```
SSH Client
      │
Encrypted Connection (TCP Port 22)
      │
SSH Server (sshd)
      │
Linux Server
```

### Components

### SSH Client

The machine from which the user initiates the SSH connection.

Examples:

- Laptop
- Jenkins Server
- CI/CD Runner

---

### SSH Server

The remote Linux machine running the SSH daemon (`sshd`) that accepts incoming SSH connections.

Examples:

- AWS EC2
- Azure VM
- GCP VM
- Physical Linux Server

---

## Password Authentication

The user enters a username and password to authenticate.

### Advantages

- Easy to configure.
- Suitable for testing.

### Disadvantages

- Vulnerable to brute-force attacks.
- Password leakage risk.
- Not recommended for production.

---

## SSH Key Authentication

Authentication is performed using a cryptographic key pair instead of passwords.

### Advantages

- More secure.
- Resistant to brute-force attacks.
- Recommended for production.
- Used by almost all cloud providers.

---

## Public Key vs Private Key

### Public Key

- Shared with the server.
- Stored inside the server.
- Safe to distribute.

Example:

```
id_rsa.pub
```

---

### Private Key

- Stored only on the client.
- Never shared.
- Used to prove identity.

Example:

```
id_rsa
```

If the Private Key is compromised, unauthorized users may gain server access.

---

## authorized_keys

```
~/.ssh/authorized_keys
```

This file stores the public keys of users allowed to access the server.

During login, the SSH server checks whether the client's public key exists in this file.

If it matches, access is granted.

---

## known_hosts

```
~/.ssh/known_hosts
```

This file stores fingerprints of previously connected SSH servers.

Purpose:

- Prevent Man-in-the-Middle (MITM) attacks.
- Verify server identity.

If a server fingerprint changes unexpectedly, SSH displays a security warning.

---

## SSH Port (22)

SSH uses TCP Port 22 by default.

Example

```
Client
      │
TCP Port 22
      │
SSH Server
```

Many organizations change the default SSH port to reduce automated scanning and brute-force attempts, although this should complement—not replace—strong authentication and other security controls.

---

## Basic SSH Commands

```bash
ssh user@server-ip

ssh -p 2222 user@server-ip

ssh-keygen

ssh-copy-id user@server-ip

scp file.txt user@server-ip:/home/user

sftp user@server-ip

exit
```

---

## Common Mistakes

- Logging in directly as the Root user.
- Sharing Private Keys.
- Giving 777 permissions to `.ssh`.
- Leaving Password Authentication enabled on production servers unnecessarily.
- Ignoring SSH fingerprint warnings.
- Committing Private Keys to GitHub.
- Not rotating SSH keys.

---

## Hands-on Practice

Today I learned how SSH enables secure remote administration of Linux servers. I understood SSH architecture, password-based authentication, SSH key authentication, the difference between Public and Private Keys, the purpose of `authorized_keys` and `known_hosts`, and how SSH secures communication over encrypted channels.

---

## Real World Problems You Can Solve

### DevOps

- Securely deploy applications to production servers.
- Configure CI/CD pipelines using SSH.
- Transfer deployment artifacts.
- Automate remote server management.

### SRE

- Investigate production incidents remotely.
- Restart failed services.
- Collect logs from remote servers.
- Perform emergency server maintenance.

### Cloud Engineer

- Connect to AWS EC2 instances.
- Configure Linux virtual machines.
- Secure cloud server access.
- Manage cloud infrastructure remotely.

---

## Best Practices

- Prefer SSH Key Authentication over passwords.
- Disable Root login where possible.
- Protect Private Keys with strong permissions.
- Rotate SSH keys periodically.
- Use least-privilege accounts with `sudo`.
- Monitor SSH login attempts.
- Use MFA or bastion hosts where applicable for production environments.

---

## Key Takeaway

SSH is the foundation of secure Linux administration. Every DevOps, SRE, and Cloud Engineer relies on SSH for remote server management, automation, deployment, and production troubleshooting.

---

## Next Step

Tomorrow I will learn:

- What is Bash?
- What is a Shell Script?
- Why Automation?
- Script Structure (#!/bin/bash)
- Variables
- User Input (read)
- Command Line Arguments ($1, $2)
- Conditional Statements (if, else)
- Loops (for, while)
- Exit Status ($?)
