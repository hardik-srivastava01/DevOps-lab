# Linux Day 9 - Process Management

## Objective

Learn how Linux manages processes, understand the Process Lifecycle, Process IDs (PID), Parent & Child Processes, Daemon and Zombie Processes, CPU & Memory Monitoring, and Process Signals. These concepts are fundamental for DevOps, SRE, and Cloud Engineers to monitor, troubleshoot, and manage production systems.

---

# What is a Process?

A Process is a running instance of a program. When a program is executed, Linux loads it into memory, assigns it a unique Process ID (PID), allocates CPU and memory resources, and begins execution.

Examples:

- `nginx`
- `docker`
- `python app.py`
- `java`
- `ssh`

---

# Why is it Important?

Every application running on Linux is a process.

DevOps and SRE engineers continuously monitor, troubleshoot, optimize, and terminate processes to maintain production system health and availability.

---

# Real DevOps Use Cases

- Monitor high CPU usage.
- Identify memory leaks.
- Restart crashed applications.
- Kill stuck deployment processes.
- Investigate production incidents.
- Monitor container processes.

---

# Important Concepts

---

## What is a Process?

A process is an executing program with its own:

- PID
- Memory
- CPU allocation
- Execution state
- Parent process

---

## Process Lifecycle

A Linux process moves through different states:

```
New
 ↓
Ready
 ↓
Running
 ↓
Waiting / Sleeping
 ↓
Running
 ↓
Terminated
```

### States

- **New** → Process is created.
- **Ready** → Waiting for CPU.
- **Running** → Executing on CPU.
- **Sleeping/Waiting** → Waiting for I/O or an event.
- **Terminated** → Process has finished.

---

## Foreground vs Background Process

### Foreground Process

Runs in the current terminal and blocks it until completion.

Example:

```bash
python app.py
```

---

### Background Process

Runs independently, allowing continued use of the terminal.

Example:

```bash
python app.py &
```

View jobs:

```bash
jobs
```

Bring to foreground:

```bash
fg
```

---

## Process ID (PID)

Every running process has a unique numeric identifier called the Process ID (PID).

Example:

```bash
ps -ef
```

or

```bash
ps aux
```

---

## Parent Process & Child Process

A Parent Process creates one or more Child Processes.

Example:

```
systemd (PID 1)
      │
      ├── sshd
      │     └── bash
      │            └── python
```

Child processes inherit resources and environment from the parent.

---

## Daemon Process

A Daemon is a background process that provides services without user interaction.

Examples:

- `sshd`
- `dockerd`
- `nginx`
- `crond`

Daemon names commonly end with **d**.

---

## Zombie Process (Concept)

A Zombie Process is a terminated child process whose parent has not yet collected its exit status.

Characteristics:

- Already finished execution.
- Occupies only the process table entry.
- Cannot be killed directly.
- Removed when the parent reads its exit status or exits.

---

## CPU & Memory Monitoring

Common Commands

Show running processes:

```bash
ps aux
```

Interactive monitoring:

```bash
top
```

Enhanced monitoring:

```bash
htop
```

Memory usage:

```bash
free -h
```

CPU information:

```bash
lscpu
```

---

## Process Signals

Signals are software interrupts sent to processes.

### SIGTERM (15)

Requests a graceful shutdown, allowing cleanup before exit.

Example:

```bash
kill PID
```

or

```bash
kill -15 PID
```

---

### SIGKILL (9)

Forcefully terminates a process immediately without cleanup.

Example:

```bash
kill -9 PID
```

---

## Commands Practiced

```bash
ps aux

ps -ef

top

htop

jobs

bg

fg

kill PID

kill -15 PID

kill -9 PID

free -h

lscpu

pidof nginx

pgrep nginx
```

---

## Common Mistakes

- Using `SIGKILL` before trying `SIGTERM`.
- Killing the wrong process by PID.
- Ignoring zombie processes.
- Running long tasks in the foreground unnecessarily.
- Confusing processes with services.
- Not monitoring CPU and memory before troubleshooting.

---

## Hands-on Practice

Today I learned how Linux manages processes. I explored process creation, lifecycle, foreground and background execution, monitored CPU and memory usage, identified process IDs, understood parent and child relationships, and learned when to use `SIGTERM` and `SIGKILL` for process management.

---

## Real World Problems You Can Solve

### DevOps

- Kill stuck deployment processes.
- Monitor application CPU and memory usage.
- Identify crashed services.
- Restart unhealthy applications.
- Analyze resource bottlenecks.

### SRE

- Investigate production incidents.
- Detect memory leaks.
- Analyze high CPU utilization.
- Handle zombie processes.
- Perform graceful application shutdowns.

### Cloud Engineer

- Monitor cloud VM resource utilization.
- Troubleshoot EC2 process failures.
- Manage application processes on cloud instances.
- Optimize compute resources.
- Analyze workload performance.

---

## Best Practices

- Prefer `SIGTERM` before using `SIGKILL`.
- Verify the PID before terminating a process.
- Monitor CPU and memory regularly.
- Use `top` or `htop` during incident response.
- Run long-running tasks in the background.
- Investigate root causes instead of repeatedly killing processes.
- Monitor production systems continuously.

---

## Key Takeaway

Processes are the foundation of every Linux system. Mastering process management enables DevOps, SRE, and Cloud Engineers to troubleshoot production issues, optimize system performance, and maintain application availability.

---

## Next Step

Tomorrow I will learn:

- What is a Service?
- What is a Daemon?
- What is Systemd?
- What is systemctl?
- Boot Process (Basic)
- Service States(Active,Inactive,Failed,Enabled,Disabled)
- Difference between service and systemctl
