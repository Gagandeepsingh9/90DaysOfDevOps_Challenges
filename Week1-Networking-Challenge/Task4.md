# Task 4 – Cheat Sheet For Networking Commands
 
Here’s a cheat sheet that explains the purpose and usage of the most essential Networking commands.

---

## 1. `ping`

**Purpose:**  
Checks if a host (website, server, or IP) is reachable or not.

**Usage Example:**  
```bash
ping google.com
```

**What happens:**  
- Sends small packets to `google.com`.  
- If replies come back, the connection works.  
- Shows how long it takes (latency).  

**Real-world use:**  
Check if a server is online or if your internet is working.

---

## 2. `traceroute` (Linux) / `tracert` (Windows)

**Purpose:**  
Shows the path/hops that packets take to reach a destination, including all the routers in between.

**Usage Example:**  
Linux/macOS:
```bash
traceroute google.com
```

Windows:
```powershell
tracert google.com
```

**What happens:**  
- Displays each “hop” your data goes through.  
- Helps identify where network slowdowns or failures occur.  

**Real-world use:**  
Troubleshoot slow or broken connections (e.g., finding if the issue is with your ISP).

---

## 3. `netstat`

**Purpose:**  
Displays active network connections, listening ports, and routing tables.

**Usage Example:**  
```bash
netstat -tulnp
```

**What happens:**  
- `-t` → TCP connections  
- `-u` → UDP connections  
- `-l` → Listening ports  
- `-n` → Show numbers instead of hostnames  
- `-p` → Show process using the port  

**Real-world use:**  
Check which applications are using network ports (e.g., is a web server running on port 80?).

---

## 4. `curl`

**Purpose:**  
Sends requests to URLs and shows the response. Great for testing APIs or web servers.

**Usage Example:**  
```bash
curl https://example.com
```

**What happens:**  
- Fetches the HTML of the website.  
- Can also send POST, PUT, DELETE requests for APIs.  

**Real-world use:**  
Check if a website or REST API is responding.

---

## 5. `dig` (Linux/macOS) / `nslookup` (Windows)

**Purpose:**  
Queries DNS servers to find IP addresses of domain names.

**Usage Example (Linux/macOS):**  
```bash
dig google.com
```

**Usage Example (Windows):**  
```powershell
nslookup google.com
```

**What happens:**  
- Returns the IP address(es) of `google.com`.  
- Shows which DNS server gave the answer.  

**Real-world use:**  
Check if DNS is resolving correctly (useful when a site doesn’t load but the server is fine).

---

## Summary Cheat Sheet

| Command   | Purpose                          | Example               |
|-----------|----------------------------------|-----------------------|
| `ping`    | Test connectivity                | `ping google.com`     |
| `traceroute` / `tracert` | Show path of packets        | `traceroute google.com` |
| `netstat` | Show open ports & connections    | `netstat -tulnp`      |
| `curl`    | Make HTTP requests               | `curl https://api.github.com` |
| `dig` / `nslookup` | DNS lookup                 | `dig google.com`      |

---


