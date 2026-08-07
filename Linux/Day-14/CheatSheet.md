# Linux Day 14 CheatSheet

## One-Line Interview Answers

### What is SSH?
→ SSH is an encrypted protocol for secure remote access and server administration.

### Why is SSH used?
→ SSH provides secure authentication and encrypted communication between client and server.

### What is SSH Architecture?
→ SSH follows a Client–Server architecture over TCP Port 22.

### What is Password Authentication?
→ Password Authentication verifies users using a username and password.

### What is SSH Key Authentication?
→ SSH Key Authentication uses a public-private key pair for secure login without passwords.

### Public Key vs Private Key?
→ Public Key is shared with the server; Private Key remains secret on the client.

### What is `authorized_keys`?
→ `authorized_keys` stores public keys that are allowed to access the server.

### What is `known_hosts`?
→ `known_hosts` stores fingerprints of trusted SSH servers to prevent MITM attacks.

### What is SSH Port?
→ SSH uses TCP Port 22 by default for secure remote communication.

### What is `ssh-keygen`?
→ `ssh-keygen` generates an SSH public-private key pair.

### What is SCP?
→ SCP securely transfers files between systems over SSH.

### What is SFTP?
→ SFTP securely transfers and manages files using the SSH protocol.

### Why is SSH preferred over Telnet?
→ SSH encrypts all communication, whereas Telnet transmits data in plain text.

### What is `sshd`?
→ `sshd` is the SSH server daemon that accepts incoming SSH connections.

### What is SSH Fingerprint?
→ An SSH fingerprint uniquely identifies a server to verify its authenticity.

---

# Interview Keywords

- SSH
- Secure Shell
- Encryption
- Client-Server
- TCP Port 22
- Public Key
- Private Key
- Key Pair
- authorized_keys
- known_hosts
- sshd
- Passwordless Authentication
- RSA
- ED25519
- SCP
- SFTP
- MITM Attack
- Remote Administration

---

# Common Follow-up Questions

- How does SSH Key Authentication work?
- Why is SSH more secure than Telnet?
- What happens during an SSH handshake?
- What is the purpose of `authorized_keys`?
- Why should Private Keys never be shared?
- What is the difference between RSA and ED25519 keys?
- How do you disable Password Authentication?
- How do you troubleshoot SSH connection failures?
- Why does SSH warn about changed host fingerprints?
- What file permissions should `.ssh` and private keys have?

---

# Production Relevance

## DevOps

- Deploy applications to production servers.
- Configure passwordless CI/CD deployments.
- Securely transfer deployment artifacts.
- Manage Linux servers remotely.

## SRE

- Access production servers during incidents.
- Troubleshoot service failures remotely.
- Collect logs and perform emergency fixes.
- Secure administrative access.

## Cloud Engineer

- Connect to AWS EC2, Azure VM, and GCP Compute Engine.
- Configure SSH access for cloud instances.
- Secure remote infrastructure management.
- Automate cloud server provisioning.

---

# 30–50 LPA Interview Tips

✅ Say **"SSH uses asymmetric cryptography for authentication."**

✅ Mention **"Public Key is stored on the server; Private Key never leaves the client."**

✅ Mention **"`authorized_keys` authorizes users, while `known_hosts` verifies server identity."**

✅ Mention **"SSH traffic is encrypted over TCP Port 22."**

✅ Recommend **SSH Key Authentication** over passwords for production environments.

---

# Rapid Revision

- SSH → Secure remote access
- Port → TCP 22
- Client → Initiates connection
- Server → Runs `sshd`
- Public Key → Stored on server
- Private Key → Secret, client only
- `authorized_keys` → Allows login
- `known_hosts` → Verifies server identity
- `ssh-keygen` → Generates key pair
- `scp` → Secure file copy
- `sftp` → Secure file transfer
- Telnet vs SSH → Plain text vs Encrypted
