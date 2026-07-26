# Linux Day 9 CheatSheet

## One-Line Interview Answers

### What is a Process?
→ A process is a running instance of a program.

### What is Process Management?
→ Process management is the creation, scheduling, monitoring, and termination of processes.

### What is a Process Lifecycle?
→ A process moves through **New → Ready → Running → Waiting → Terminated**.

### What is a Foreground Process?
→ A foreground process runs in the current terminal and blocks it until completion.

### What is a Background Process?
→ A background process runs independently, allowing the terminal to remain usable.

### What is PID?
→ PID (Process ID) is the unique identifier assigned to every running process.

### What is PPID?
→ PPID (Parent Process ID) identifies the process that created the current process.

### What is a Parent Process?
→ A parent process creates and manages child processes.

### What is a Child Process?
→ A child process is created by another process and inherits its environment.

### What is a Daemon Process?
→ A daemon is a long-running background process that provides system or application services.

### What is a Zombie Process?
→ A zombie process has finished execution, but its parent hasn't collected its exit status.

### What is an Orphan Process?
→ An orphan process continues running after its parent exits and is adopted by **systemd (PID 1)**.

### What is `ps`?
→ `ps` displays a snapshot of running processes.

### What is `top`?
→ `top` provides real-time CPU, memory, and process monitoring.

### What is `htop`?
→ `htop` is an interactive process monitoring tool with a user-friendly interface.

### What is `pgrep`?
→ `pgrep` finds a process ID using its process name.

### What is `pidof`?
→ `pidof` returns the PID of a running program.

### What is `kill`?
→ `kill` sends a signal to terminate or control a process.

### What is SIGTERM?
→ SIGTERM (15) requests a graceful process shutdown.

### What is SIGKILL?
→ SIGKILL (9) forcefully terminates a process immediately.

### Difference between SIGTERM and SIGKILL?
→ SIGTERM allows cleanup before exit; SIGKILL stops the process instantly without cleanup.

### What is `jobs`?
→ `jobs` displays background jobs in the current shell.

### What is `fg`?
→ `fg` brings a background job to the foreground.

### What is `bg`?
→ `bg` resumes a stopped job in the background.

### What is `uptime`?
→ `uptime` shows how long the system has been running and its load average.

### What is `free -h`?
→ `free -h` displays system memory usage in a human-readable format.

### What is `lscpu`?
→ `lscpu` displays CPU architecture and hardware information.

### What is `df -h`?
→ `df -h` shows disk space usage in a human-readable format.

---

# Interview Keywords

- Process
- PID
- PPID
- Parent Process
- Child Process
- Daemon
- Zombie
- Orphan
- Foreground
- Background
- Process Lifecycle
- SIGTERM
- SIGKILL
- CPU Monitoring
- Memory Monitoring

---

# Common Follow-up Questions

- Difference between Process and Service?
- Difference between Parent and Child Process?
- Difference between Zombie and Orphan Process?
- When should you use SIGTERM instead of SIGKILL?
- How do you find a process by name?
- How do you identify high CPU usage?
- How do you monitor memory usage?
- How do you kill a hung process?
- Why should `kill -9` be the last option?
- How do you troubleshoot a process consuming excessive resources?

---

# Production Relevance

## DevOps

- Monitor deployment processes.
- Kill stuck CI/CD jobs.
- Verify application processes.
- Analyze CPU and memory usage.

## SRE

- Troubleshoot production incidents.
- Detect memory leaks.
- Investigate CPU spikes.
- Gracefully stop unhealthy processes.

## Cloud Engineer

- Monitor cloud VM resources.
- Diagnose application crashes.
- Optimize compute utilization.
- Verify workload health.

---

# 30–50 LPA Interview Tips

✅ Say **"Every service runs as one or more processes, but not every process is a service."**

✅ Mention **"Always prefer SIGTERM before SIGKILL to allow graceful cleanup."**

✅ Mention **"`top`/`htop` are used for real-time monitoring, while `ps` provides a point-in-time snapshot."**

✅ Mention **"Zombie processes indicate the parent hasn't collected the child's exit status."**

✅ Mention **"In production, investigate the root cause before killing a process."**

---

# Rapid Revision

- Process → Running program
- PID → Unique process ID
- PPID → Parent process ID
- Parent Process → Creates child processes
- Child Process → Inherits parent environment
- Foreground → Blocks terminal
- Background → Runs independently
- Daemon → Background service process
- Zombie → Finished, waiting for parent cleanup
- Orphan → Adopted by PID 1
- `ps` → Process snapshot
- `top` → Real-time monitoring
- `htop` → Interactive monitoring
- `pgrep` → Find PID by name
- `pidof` → Get program PID
- `kill` → Send signal
- SIGTERM → Graceful stop
- SIGKILL → Force stop
- `jobs` → Background jobs
- `uptime` → System uptime
- `free -h` → Memory usage
- `lscpu` → CPU details
- `df -h` → Disk usage
