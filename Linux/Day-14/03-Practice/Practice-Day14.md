# Linux Day 14 Practice Log

## Objective

Practice SSH (Secure Shell) commands to understand secure remote server access, SSH key generation, file transfer, and remote Linux administration used in DevOps, SRE, and Cloud Engineering.

---

## Commands Executed

```bash
mkdir Linux-Day14
cd Linux-Day14

# Check SSH client version
ssh -V

# Generate SSH key pair
ssh-keygen

# View public key
cat ~/.ssh/id_ed25519.pub

# View private key (Don't share it)
ls -l ~/.ssh

# Connect to remote server
ssh username@server_ip

# Copy file to remote server
scp file.txt username@server_ip:/home/username/

# Exit remote session
exit

cd ..
rm -r Linux-Day14
```

---

## Result

- Verified the installed SSH client version.
- Successfully generated a new SSH key pair.
- Viewed the generated public key.
- Verified the presence and permissions of SSH key files.
- Understood how to establish a secure remote SSH connection.
- Learned how to securely transfer files using SCP.
- Successfully exited the remote SSH session.

---

## Issues Faced

Initially, I was confused about the difference between the Public Key and the Private Key.

After practicing, I understood:

- The **Public Key** is copied to the remote server and stored in `authorized_keys`.
- The **Private Key** remains only on the client machine and must never be shared.
- SSH Key Authentication is more secure than Password Authentication because passwords are never transmitted during login.

---

## Real World Problems You Can Solve

### DevOps

- Deploy applications to production servers using SSH.
- Configure CI/CD pipelines for passwordless deployments.
- Securely copy build artifacts using SCP.
- Manage remote Linux servers.
- Troubleshoot failed deployments remotely.

### SRE

- Access production servers during incidents.
- Collect logs from remote systems.
- Restart failed services remotely.
- Investigate server issues without physical access.
- Perform emergency maintenance securely.

### Cloud Engineer

- Connect to AWS EC2 instances using SSH keys.
- Secure Linux virtual machine access.
- Transfer configuration files to cloud servers.
- Manage cloud infrastructure remotely.
- Verify SSH connectivity after provisioning new instances.

---

## Best Practices

- Always use SSH Key Authentication in production.
- Never share your Private Key.
- Protect Private Keys with appropriate file permissions.
- Disable direct Root login whenever possible.
- Rotate SSH keys periodically.
- Remove unused public keys from `authorized_keys`.
- Verify the server fingerprint before connecting for the first time.
- Use `scp` or `rsync` instead of insecure file transfer methods.

---

## Time Taken

55 Minutes

---

## Status

✅ Completed
