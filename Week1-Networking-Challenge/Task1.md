# Task 1: OSI & TCP/IP Models with Real-World Examples

## OSI Model (7 Layers)

The OSI model explains how data moves step by step, when computers communicate over the internet or a local network. This Model has 7 layers. Here’s each layer with a simple real-world example:

### 1. Application Layer – The apps we use to communicate.  
- **Example:** Web browsers (Chrome), Email apps (Gmail).  
- **Real-world:** When you open Gmail in Chrome and send an email, the request starts at this layer.  

### 2. Presentation Layer – Makes sure data is in the right format.  
- **Example:** Encryption (SSL/TLS for HTTPS), file formats (JPEG, MP3).  
- **Real-world:** When you log in to any secure website with HTTPS enabled, this layer encrypts your data.

### 3. Session Layer – Manages conversations between two devices.  
- **Example:** Session handling in video calls or logins.  
- **Real-world:** In Zoom, this layer keeps your meeting session active so you don’t have to log in again every few minutes.  

### 4. Transport Layer – Ensures data is delivered correctly and in order.  
- **Example:** TCP (reliable), UDP (faster but no guarantee).  
- **Real-world:**  
  - TCP → Used by YouTube or Netflix to stream videos without missing parts.  
  - UDP → Used by online games like PUBG.  

### 5. Network Layer – Decides the path the data takes.  
- **Example:** IP addressing, routing.  
- **Real-world:** When you visit `google.com`, your request is routed across multiple routers on the internet until it reaches Google’s server.  

### 6. Data Link Layer – Moves data between two connected devices.  
- **Example:** MAC addresses, switches.  
- **Real-world:** Inside your Wi-Fi router, this layer ensures that the correct laptop or phone in your house gets the data.  

### 7. Physical Layer – The actual cables, Wi-Fi signals, and hardware.  
- **Example:** Ethernet cables, Wi-Fi, fiber optics.  
- **Real-world:** When you connect your laptop to the internet using an Ethernet cable or Wi-Fi.

---

## TCP/IP Model (4 Layers)  

The TCP/IP model is simpler and is used in real life. It combines some OSI layers.  

### 1. Application Layer (OSI’s Application + Presentation + Session)  
- **Example:** Web apps, email, messaging.  
- **Real-world:** Sending a WhatsApp message, streaming on YouTube, or using Gmail all happen here.  

### 2. Transport Layer (same as OSI Transport Layer)  
- **Example:** TCP , UDP.  
- **Real-world:**  
  - TCP → Used by Netflix, YouTube, and Gmail to ensure reliable delivery.  
  - UDP → Used by Zoom or online gaming for fast voice/video data.  

### 3. Internet Layer (same as OSI Network Layer)  
- **Example:** IP addresses, routing.  
- **Real-world:** Your internet service provider (ISP) assigns you an IP address, and routers use it to send your request to websites like `amazon.com`.  

### 4. Network Access Layer (OSI’s Data Link + Physical)  
- **Example:** Ethernet, Wi-Fi, hardware.  
- **Real-world:** When your laptop connects to Wi-Fi, this layer ensures data actually travels over the air or cables.  

 ---