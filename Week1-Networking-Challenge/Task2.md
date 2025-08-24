# Task 2: Protocols and Ports for DevOps  

## Introduction  
In networking, **protocols** are sets of rules that allow computers and services to communicate. Each protocol usually works on a specific **port number**, which acts like a "door" for sending and receiving data.  

Here are the most important protocols every DevOps engineer should know:  

---

## Common Protocols and Their Ports  

### 1. **HTTP (Hypertext Transfer Protocol)**  
- **Port:** `80`  
- **Purpose:** Used for web traffic (unsecured).  
- **DevOps Relevance:**  
  - Serving websites and APIs without encryption.  
  - Useful in local testing or environments where encryption isn’t required.  

---

### 2. **HTTPS (Hypertext Transfer Protocol Secure)**  
- **Port:** `443`  
- **Purpose:** Secure version of HTTP (uses SSL/TLS encryption).  
- **DevOps Relevance:**  
  - Hosting secure production websites and APIs.  
  - Protects login credentials, payment info, and sensitive data.  
  - Example: While Accessing `https://github.com` to push/pull code securely.  

---

### 3. **SSH (Secure Shell)**  
- **Port:** `22`  
- **Purpose:** Secure remote login and command execution on servers.  
- **DevOps Relevance:**  
  - Accessing Linux servers on AWS, Azure, GCP, etc.  
  - Running deployment scripts remotely.  
  - Example: `ssh ubuntu@123.45.67.89` to manage a remote server.  

---

### 4. **FTP (File Transfer Protocol)**  
- **Port:** `21` (client connects to in order to establish FTP session), `20` (For Actual Data Transfer)  
- **Purpose:** Transfer files between client and server.  
- **DevOps Relevance:**  
  - Uploading/downloading files.   

---

### 5. **DNS (Domain Name System)**  
- **Port:** `53` (UDP/TCP)  
- **Purpose:** Translates domain names (like `google.com`) into IP addresses.  
- **DevOps Relevance:**  
  - Setting up custom domains in AWS Route 53.  
  - Debugging website availability issues with tools like `nslookup` or `dig`.  

---

### 6. **SMTP (Simple Mail Transfer Protocol)**  
- **Port:** `25` (default), `587` (secure), `465` (secure legacy).  
- **Purpose:** Sending emails.  
- **DevOps Relevance:**  
  - Automating email alerts (e.g., monitoring tools like Prometheus/Alertmanager).  
  - Configuring CI/CD pipelines to send notifications.  

---

### 7. **SNMP (Simple Network Management Protocol)**  
- **Port:** `161` (queries), `162` (traps).  
- **Purpose:** Monitoring and managing network devices.  
- **DevOps Relevance:**  
  - Used in infrastructure monitoring tools.  
  - Helps track server performance, disk space, and uptime.  

---

### 8. **MySQL / Database Protocols**  
- **Port:** `3306` (MySQL), `5432` (PostgreSQL), `27017` (MongoDB).  
- **Purpose:** Database connections.  
- **DevOps Relevance:**  
  - Managing application databases.  
  - Configuring secure connections in Kubernetes, Docker, and cloud environments.  

---

## 📊 Quick Reference Table  

| Protocol | Port(s) | Use Case in DevOps |
|----------|---------|---------------------|
| HTTP     | 80      | Hosting test websites, APIs |
| HTTPS    | 443     | Hosting production websites, secure APIs |
| SSH      | 22      | Secure server login, deployments |
| FTP      | 20, 21  | Legacy file transfers |
| SFTP     | 22      | Secure file transfers |
| DNS      | 53      | Domain name resolution |
| SMTP     | 25, 465, 587 | Sending automated emails |
| SNMP     | 161, 162 | Server and network monitoring |
| MySQL    | 3306    | Application databases |
| PostgreSQL | 5432  | Application databases |
| MongoDB  | 27017   | NoSQL databases |

---
