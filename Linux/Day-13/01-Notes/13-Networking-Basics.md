# Linux Day 13 - Linux Networking Fundamentals

## Objective

Learn the fundamental networking concepts required for Linux, DevOps, SRE, and Cloud Engineering. Understand how devices communicate over a network, how DNS works, the difference between TCP and UDP, and how to troubleshoot basic network connectivity issues.

---

## What is Networking?

Networking is the process of connecting multiple devices so they can exchange data using standard communication protocols.

In Linux, networking enables servers, applications, containers, and cloud resources to communicate with each other.

---

## Why is it Important?

Almost every DevOps, SRE, and Cloud Engineer task depends on networking.

Without networking you cannot:

- Access remote servers using SSH
- Deploy applications
- Connect to databases
- Call APIs
- Configure Load Balancers
- Debug production issues
- Communicate between Kubernetes Pods
- Access Cloud resources

---

## Real DevOps Use Cases

- Deploy applications to remote Linux servers.
- Connect Jenkins with GitHub.
- Configure Nginx Reverse Proxy.
- Debug website connectivity issues.
- Verify application ports.
- Configure AWS EC2 networking.
- Troubleshoot Kubernetes Services.
- Configure Load Balancers.

---

# Important Concepts

---

## IP Address

An IP Address is a unique numerical identifier assigned to every device connected to a network.

It allows devices to communicate with each other.

Example:

```
192.168.1.20
```

### Types

- IPv4
- IPv6

---

## Public IP vs Private IP

### Public IP

A Public IP is globally unique and accessible over the Internet.

Example

```
34.93.112.25
```

Used for

- Websites
- Cloud Servers
- APIs

---

### Private IP

Private IP addresses are used inside private networks.

They cannot be accessed directly from the Internet.

Example

```
192.168.x.x
10.x.x.x
172.16.x.x - 172.31.x.x
```

Used for

- Office Network
- Home WiFi
- AWS Private Subnet
- Kubernetes Internal Communication

---

## Loopback Address (127.0.0.1)

127.0.0.1 is called the Loopback Address or localhost.

It always points to your own machine.

Example

```
curl http://127.0.0.1
```

Real Uses

- Testing applications locally
- Running local databases
- Debugging services

---

## Hostname

Hostname is the human-readable name of a Linux machine.

Example

```
web-server-01
```

Instead of remembering IP addresses, administrators use hostnames.

---

## DNS (Domain Name System)

DNS converts Domain Names into IP Addresses.

Example

```
google.com
↓

142.250.xxx.xxx
```

Without DNS

```
https://google.com
```

would need to be accessed using its IP Address.

---

### DNS Resolution Flow

```
User

↓

Browser

↓

DNS Resolver

↓

DNS Server

↓

IP Address Returned

↓

Application Connects
```

---

## Port Numbers

A Port identifies which application should receive incoming network traffic.

Example

```
80     HTTP

443    HTTPS

22     SSH

3306   MySQL

5432   PostgreSQL

8080   Application

6379   Redis

9090   Prometheus
```

One IP Address can run multiple applications because each application listens on a different port.

---

## TCP vs UDP

### TCP

Transmission Control Protocol

Features

- Reliable
- Connection-Oriented
- Ordered Delivery
- Error Checking

Examples

- HTTP
- HTTPS
- SSH
- FTP
- Database Connections

---

### UDP

User Datagram Protocol

Features

- Faster
- Connectionless
- No Delivery Guarantee

Examples

- Live Streaming
- Video Calls
- Online Gaming
- DNS Queries

---

## Network Interfaces

A Network Interface connects Linux to a network.

Examples

```
eth0

ens33

wlan0

lo
```

Common Interface Types

- Ethernet
- WiFi
- Loopback
- Virtual Interfaces
- Docker Bridge

---

## Routing (Basic)

Routing decides where network packets should go.

Every Linux system has a Routing Table.

Example

```
Laptop

↓

Router

↓

Internet

↓

AWS Server
```

Without routing, packets cannot reach the destination.

---

## Commands Practiced

```bash
hostname

hostnamectl

ip addr

ip link

ip route

ping google.com

curl google.com

nslookup google.com

dig google.com

ss -tuln

netstat -tuln

traceroute google.com
```

---

## Common Mistakes

- Confusing Public IP with Private IP.
- Assuming localhost is accessible from another machine.
- Forgetting that DNS resolves names to IP addresses.
- Confusing Port Numbers with IP Addresses.
- Thinking TCP is always better than UDP.
- Ignoring routing issues during troubleshooting.
- Forgetting to check whether a service is listening on the required port.

---

## Hands-on Practice

Today I learned the core networking concepts used in Linux systems. I explored IP addresses, DNS resolution, hostnames, ports, TCP vs UDP, network interfaces, and basic routing. I also practiced essential networking commands that are frequently used by DevOps, SRE, and Cloud Engineers while troubleshooting production environments.

---

## Key Takeaway

Networking is the backbone of Linux, DevOps, SRE, and Cloud Computing. A strong understanding of IP addressing, DNS, ports, protocols, and routing is essential for deploying, managing, and troubleshooting modern production systems.

---

## Next Step

Tomorrow I will learn:

- What is SSH?
- Why SSH is used?
- SSH Architecture (Client ↔ Server)
- Password Authentication vs SSH Key Authentication
- Public Key vs Private Key
- authorized_keys
- known_hosts
- SSH Port (22)
- Basic SSH Security
