# 🖥️ Linux Day 9 - Process Management

## 🎯 Learning Objectives

After completing this topic, you will be able to:

- Understand what a Process is.
- Explain the Process Lifecycle.
- Differentiate Foreground and Background Processes.
- Understand Process IDs (PID).
- Explain Parent and Child Processes.
- Understand Daemon Processes.
- Learn the concept of Zombie Processes.
- Monitor CPU and Memory usage.
- Understand Process Signals (SIGTERM & SIGKILL).

---

# 1️⃣ What is a Process?

## 📖 What is it?

A **Process** is a program that is currently running in memory.

Whenever you open an application such as Chrome, VS Code, Docker, or Nginx, Linux creates one or more processes.

---

## ❓ Why is it Needed?

The operating system executes programs in the form of processes.

Without processes:

- Programs cannot run.
- CPU cannot execute instructions.
- Memory cannot be allocated.
- Applications cannot interact with the operating system.

---

## ⚙️ How Does it Work?

When a program starts:

1. Linux loads it into RAM.
2. Assigns a unique Process ID (PID).
3. Allocates CPU and memory.
4. Starts execution.

When the program finishes, Linux releases all allocated resources.

---

## 🌍 Real-world Example

Opening VS Code creates multiple processes such as:

- VS Code UI
- Extension Host
- Terminal
- File Watcher

---

## ☁️ DevOps Use

DevOps Engineers use processes to:

- Monitor applications.
- Identify crashed services.
- Troubleshoot production servers.
- Kill unwanted processes.
- Analyze CPU and Memory usage.

---

## 🎤 Interview Tip

**Q:** What is the difference between a Program and a Process?

**A:**

- Program → Stored on Disk.
- Process → Running instance of the Program in Memory.

---

# 2️⃣ Process Lifecycle

## 📖 What is it?

A Process Lifecycle describes the different states a process passes through from creation until termination.

---

## ❓ Why is it Needed?

Linux uses process states to efficiently schedule CPU time and system resources.

---

## ⚙️ How Does it Work?

Process States:

- New
- Ready
- Running
- Waiting (Blocked)
- Terminated

```
New
 ↓
Ready
 ↓
Running
 ↙      ↘
Waiting  Terminated
```

---

## 🌍 Real-world Example

A web application starts.

↓

Waits for Database Response.

↓

Continues execution.

↓

Terminates.

---

## ☁️ DevOps Use

Useful while troubleshooting:

- Slow applications
- Hung services
- Waiting database connections

---

## 🎤 Interview Tip

**Q:** What is the Waiting state?

**A:**

The process is waiting for an external event such as:

- Disk I/O
- Network Response
- Database Query

---

# 3️⃣ Foreground vs Background Process

## 📖 What is it?

Foreground Process

Runs inside the current terminal and occupies it until completion.

Background Process

Runs independently without blocking the terminal.

---

## ❓ Why is it Needed?

Long-running tasks should not block the terminal.

---

## ⚙️ How Does it Work?

Foreground

```bash
ping google.com
```

Background

```bash
ping google.com &
```

---

## 🌍 Real-world Example

- Backup Scripts
- Log Monitoring
- Cron Jobs
- Deployments

---

## ☁️ DevOps Use

Frequently used for:

- Monitoring
- Backup
- Automation
- CI/CD Scripts

---

## 🎤 Interview Tip

**Q:** How do you run a process in the background?

**A:**

By adding **&** at the end of the command.

---

# 4️⃣ Process ID (PID)

## 📖 What is it?

PID (Process ID) is a unique number assigned to every running process.

---

## ❓ Why is it Needed?

Linux identifies and manages every process using its PID.

---

## ⚙️ How Does it Work?

Whenever a process starts, Linux automatically assigns a unique PID.

Example:

```
PID : 2345
```

---

## 🌍 Real-world Example

To stop Nginx:

First find PID.

Then terminate the process.

---

## ☁️ DevOps Use

Used to:

- Kill Processes
- Restart Services
- Monitor Applications
- Debug Production Servers

---

## 🎤 Interview Tip

**Q:** Can two running processes have the same PID?

**A:**

No.

Every running process has a unique PID.

---

# 5️⃣ Parent Process & Child Process

## 📖 What is it?

A Parent Process creates another process called a Child Process.

---

## ❓ Why is it Needed?

Applications often create multiple child processes to perform different tasks simultaneously.

---

## ⚙️ How Does it Work?

```
Terminal
   │
   └── bash
         │
         ├── python
         ├── docker
         └── nginx
```

---

## 🌍 Real-world Example

Running

```bash
python app.py
```

bash becomes Parent.

python becomes Child.

---

## ☁️ DevOps Use

Useful while debugging application hierarchy.

---

## 🎤 Interview Tip

**Q:** Who creates Child Processes?

**A:**

Parent Process.

---

# 6️⃣ Daemon Process

## 📖 What is it?

A Daemon Process is a background service that starts automatically and continues running without user interaction.

---

## ❓ Why is it Needed?

Servers require services that must remain available continuously.

---

## ⚙️ How Does it Work?

Starts during system boot.

Runs continuously.

Waits for requests.

---

## 🌍 Real-world Example

- sshd
- nginx
- cron
- systemd
- docker

---

## ☁️ DevOps Use

Almost every production service runs as a daemon.

---

## 🎤 Interview Tip

**Q:** Name some daemon processes.

**A:**

sshd, nginx, docker, cron, systemd.

---

# 7️⃣ Zombie Process

## 📖 What is it?

A Zombie Process has finished execution but still exists in the Process Table because its parent has not collected its exit status.

---

## ❓ Why is it Needed?

It is a temporary state that allows the parent process to retrieve the child's exit information.

---

## ⚙️ How Does it Work?

```
Child exits

↓

Parent doesn't collect status

↓

Zombie Process
```

---

## 🌍 Real-world Example

A buggy application creates child processes but never collects their exit status.

---

## ☁️ DevOps Use

Too many zombie processes indicate application bugs or poor process management.

---

## 🎤 Interview Tip

**Q:** Can Zombie Processes consume CPU?

**A:**

No.

They only occupy an entry in the Process Table.

---

# 8️⃣ CPU & Memory Monitoring

## 📖 What is it?

Monitoring how much CPU and RAM every running process consumes.

---

## ❓ Why is it Needed?

Helps detect:

- High CPU Usage
- Memory Leaks
- Performance Issues

---

## ⚙️ How Does it Work?

Linux continuously tracks resource usage for every running process.

---

## 🌍 Real-world Example

Finding an application consuming 95% CPU.

---

## ☁️ DevOps Use

Used for:

- Performance Monitoring
- Capacity Planning
- Troubleshooting

---

## 🎤 Interview Tip

**Q:** Why monitor CPU and Memory?

**A:**

To identify resource bottlenecks before they impact production.

---

# 9️⃣ Process Signals (SIGTERM & SIGKILL)

## 📖 What is it?

Signals are software interrupts used to communicate with running processes.

---

## ❓ Why is it Needed?

To stop, restart, pause, or control running processes.

---

## ⚙️ How Does it Work?

SIGTERM (15)

- Gracefully stops a process.
- Allows cleanup before exiting.

SIGKILL (9)

- Immediately terminates a process.
- Cannot be ignored.

---

## 🌍 Real-world Example

Application hangs.

↓

Try SIGTERM.

↓

If it doesn't stop,

↓

Use SIGKILL.

---

## ☁️ DevOps Use

Safely stopping services during deployments.

Force killing hung applications.

---

## 🎤 Interview Tip

**Q:** SIGTERM vs SIGKILL?

**A:**

SIGTERM allows graceful shutdown.

SIGKILL immediately terminates the process.

---

# 💼 Real DevOps Scenario

A production server becomes slow.

A DevOps Engineer:

- Checks CPU usage.
- Finds high Memory consuming process.
- Identifies its PID.
- Reviews Parent Process.
- Sends SIGTERM.
- Uses SIGKILL only if necessary.
- Restarts the affected service.
- Confirms the server is healthy again.

---

# 📌 Key Takeaways

- A Process is a running program.
- Every Process has a unique PID.
- Linux manages Processes using different states.
- Parent Processes create Child Processes.
- Daemon Processes provide background services.
- Zombie Processes indicate parent-child synchronization issues.
- CPU and Memory monitoring are essential for server health.
- SIGTERM performs graceful shutdown.
- SIGKILL forcefully terminates a process.

---

# 🎤 Interview Questions

1. What is a Process?
2. Program vs Process?
3. Explain the Process Lifecycle.
4. Foreground vs Background Process?
5. What is PID?
6. Parent vs Child Process?
7. What is a Daemon Process?
8. What is a Zombie Process?
9. Can a Zombie Process consume CPU?
10. Why monitor CPU and Memory?
11. What is SIGTERM?
12. What is SIGKILL?
13. SIGTERM vs SIGKILL?
14. How does Linux manage running processes?

---

# 📅 Next Step

Tomorrow I will learn:

- What is a Service?
- What is a Daemon?
- What is Systemd?
- What is systemctl?
- Boot Process (Basic)
- Service States(Active,Inactive,Failed,Enabled,Disabled)
- Difference between service and systemctl
