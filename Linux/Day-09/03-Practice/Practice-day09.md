# Linux Day 9 Practice Log

## Objective

Practice Linux Process Management commands to understand how to monitor, identify, manage, and terminate running processes in Linux.

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

# Exit
cd ..
rm -r Linux-Day9
```

---

## Result

- Successfully created a practice directory.
- Identified the current shell Process ID (PID).
- Viewed running processes using different `ps` commands.
- Monitored CPU and Memory usage using `top`.
- Observed processes interactively using `htop`.
- Started a background process using `sleep`.
- Listed background jobs using `jobs`.
- Located processes using `pgrep` and `pidof`.
- Gracefully terminated a process using `kill`.
- Forcefully terminated a process using `kill -9`.
- Checked system uptime.
- Viewed CPU architecture information.
- Checked memory usage.
- Verified disk usage.
- Successfully cleaned up the practice directory.

---

## Issues Faced

Initially, I was confused about the difference between `ps`, `top`, and `htop`.

After practicing, I understood that:

- `ps` shows a snapshot of running processes.
- `top` provides real-time monitoring of CPU and memory usage.
- `htop` offers an interactive and user-friendly interface for monitoring and managing processes.

I also learned the difference between `kill` (graceful termination) and `kill -9` (forceful termination).

---

## Time Taken

60 minutes

---

## Status

✅ Completed
