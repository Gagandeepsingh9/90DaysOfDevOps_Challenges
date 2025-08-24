# Task 3: AWS EC2 and Security Groups

## Introduction
When you launch an EC2 instance in AWS, it needs to be protected from unwanted traffic. This is done using **Security Groups (SGs)**.  
Think of a Security Group as a virtual firewall that controls who can access your server and on which ports. Without the right Security Group rules, your EC2 might launch but nobody will be able to connect to it.

This guide explains, step by step, how to create an EC2 instance and configure a Security Group for common use cases like SSH and web servers.

---

## Step 1: Launch an EC2 Instance
1. Open the AWS Management Console → go to **EC2** → click **Launch Instance**.
2. Enter a name for your instance, for example: `my-first-ec2`.
3. Choose **Amazon Linux (Free Tier eligible)** as the AMI.
4. Select the instance type: **t2.micro** (free tier).
5. Create or choose an existing **key pair** (used for SSH login).
6. In the **Network settings**, select **Create new Security Group**.  
   This is where you’ll define your firewall rules.

---

## Step 2: Understand Security Group Rules
A Security Group has two types of rules:
- **Inbound rules** → control who can connect **to** your EC2.
- **Outbound rules** → control where your EC2 can connect **out** to the internet.

By default:
- Inbound → **empty** (nobody can connect).
- Outbound → **all traffic allowed** (your EC2 can connect to the internet).

---

## Step 3: Add Inbound Rules
For a basic setup:
1. Click **Add rule**.
2. Choose **SSH**.  
   - Protocol: TCP, Port: 22  
   - Source: **My Custom IP** (recommended) or just for testing can use CIDR **0.0.0.0/0** 
   → This allows you to log in securely from your laptop.
3. Click **Add rule** again.
4. Choose **HTTP**.  
   - Protocol: TCP, Port: 80  
   - Source: 0.0.0.0/0 (anyone can access your website).
5. (Optional) Add **HTTPS**.  
   - Protocol: TCP, Port: 443  
   - Source: 0.0.0.0/0 (for secure websites).

---

## Step 4: Save and Launch
1. Review the Security Group rules you created.  
   Example:
   - SSH (22) → My IP only  
   - HTTP (80) → Anywhere  
   - HTTPS (443) → Anywhere  
2. Click **Launch instance**.
3. Once running, you can connect with:
   ```bash
   ssh -i mykey.pem ec2-user@<public-ip>

---

## Step 5: Testing Security Group Rules

To test that the rules are working:

- If **SSH (22)** is open only to your IP → you can connect, but your friend from another network cannot.  
- If **HTTP (80)** is open → you can set up a web server (Apache/Nginx) and access it from your browser using instance public IP at `http://<public-ip>`.  
- If you remove the **HTTP rule** → the browser will no longer reach your server.  

This confirms that Security Groups are actively controlling access.

---

## Step 6: Best Practices

- Always keep **SSH (22)** restricted to your IP, never open it to `0.0.0.0/0`.  
- For web servers, allow **HTTP (80)** and **HTTPS (443)** to the world.  
- For databases, don’t allow public access. Instead, allow only specific instances or private networks.  
- Security Groups are **stateful**: once you allow inbound traffic, the return traffic is automatically allowed.  

---

## Conclusion

Creating and configuring a Security Group is an essential part of using AWS EC2 securely.

- Add only the rules you need.  
- Keep **SSH** locked down.  
- Use **HTTP/HTTPS** for public websites.  

