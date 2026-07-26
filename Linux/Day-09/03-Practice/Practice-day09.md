# Linux Day 9 Practice Log

## Objective

Practice Linux Process Management commands to understand how to monitor, identify, manage, and terminate processes. Learn to analyze CPU and memory usage, work with foreground/background processes, and troubleshoot running applications.

---

## Commands Executed

```bash
mkdir Linux-Day9
cd Linux-Day9

# Current shell process
echo $$

# Running processes
ps
ps -ef
ps aux

# Real-time monitoring
top

# Modern process monitor (if installed)
htop

# Start a background process
sleep 300 &

# View background jobs
jobs

# Find process
pgrep sleep
pidof sleep

# Kill process
kill <PID>

# Force kill (if needed)
kill -9 <PID>

# Check system uptime
uptime

# CPU Information
lscpu

# Memory Information
free -h

# Disk Usage
df -h

cd ..
rm -r Linux-Day9
```

---

## Result

- Identified the current shell PID using `echo $$`.
- Listed running processes using `ps`, `ps -ef`, and `ps aux`.
- Monitored CPU and memory usage using `top`.
- Explored interactive process monitoring with `htop`.
- Started a background process using `sleep 300 &`.
- Viewed background jobs using `jobs`.
- Located processes using `pgrep` and `pidof`.
- Terminated processes using `kill` and `kill -9`.
- Checked system uptime.
- Viewed CPU specifications.
- Monitored system memory.
- Checked disk usage.

---

## Issues Faced

Initially, I was confused about the differences between `ps`, `top`, and `htop`.

After practicing, I understood:

- `ps` shows a snapshot of running processes.
- `top` provides real-time CPU and memory monitoring.
- `htop` is an interactive and user-friendly process monitor.
- `kill` sends **SIGTERM (15)** for graceful termination.
- `kill -9` sends **SIGKILL (9)** to forcefully terminate a process and should be used only when necessary.
- `pgrep` and `pidof` help quickly locate process IDs without manually searching.

---

## Real-World Problems You Can Solve

### DevOps

- Kill stuck deployment or CI/CD processes.
- Identify high CPU or memory-consuming applications.
- Monitor Docker, Jenkins, or Nginx processes.
- Verify application startup after deployment.
- Diagnose performance bottlenecks.

### SRE

- Investigate production incidents caused by runaway processes.
- Detect memory leaks.
- Analyze CPU spikes.
- Gracefully terminate unhealthy services.
- Troubleshoot zombie or orphan process issues.

### Cloud Engineer

- Monitor EC2/VM resource utilization.
- Identify overloaded cloud instances.
- Troubleshoot application crashes.
- Optimize compute resource usage.
- Verify process health after cloud deployments.

---

## Commands Used in Production

| Command | Production Use |
|----------|----------------|
| `echo $$` | Identify the current shell PID |
| `ps` | View running processes |
| `ps -ef` | Display detailed process information |
| `ps aux` | Monitor all system processes |
| `top` | Real-time CPU and memory monitoring |
| `htop` | Interactive process monitoring |
| `jobs` | Manage background jobs |
| `pgrep` | Find PID by process name |
| `pidof` | Get PID of a running program |
| `kill` | Gracefully terminate a process |
| `kill -9` | Forcefully terminate an unresponsive process |
| `uptime` | Check system uptime and load average |
| `lscpu` | Display CPU information |
| `free -h` | Check memory usage |
| `df -h` | Check disk space utilization |

---

## Best Practices

- Use `SIGTERM` before `SIGKILL`.
- Verify the PID before killing a process.
- Monitor CPU and memory before troubleshooting.
- Use `top` or `htop` during production incidents.
- Run long-running tasks in the background when appropriate.
- Investigate the root cause instead of repeatedly killing processes.
- Continuously monitor system resource utilization.

---

## Time Taken

60 Minutes

---

## Status

✅ Completed
