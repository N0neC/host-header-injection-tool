# 🛡️ Host Header Injection Testing Tool

A simple yet powerful Bash-based tool to automate **Host Header Injection** vulnerability testing on single URLs or lists of subdomains.

---

## 🔥 Features

- Automatically injects payloads into various HTTP headers.
- Tests against top 25+ commonly abused headers.
- Supports:
  - `Host`
  - `X-Forwarded-Host`
  - `X-Host`
  - `Forwarded`
  - and many more...
- Live response analysis in terminal.
- Identifies vulnerable headers automatically.
- Supports URL input (`-u`) or list of domains (`-l`).
- Clean output with vulnerability status.
- Shows backend testing process and payloads in use.

---

## 🧠 What is Host Header Injection?

Host Header Injection occurs when applications use the `Host` header value to generate links, redirect URLs, or include it in responses without proper validation. An attacker can manipulate this header to perform:
- Web cache poisoning
- Password reset poisoning
- Open redirect & SSRF
- Virtual host routing attacks

---

## 🚀 Usage

### 🔧 Setup

```bash
git clone https://github.com/N0neC/host-header-injection-tool.git
cd host-header-injection-tool
chmod +x host_header_tool.sh
```

---

### ▶️ Run the Tool

#### 🔹 Scan a Single URL:

```bash
./host_header_tool.sh -u https://example.com
```

#### 🔹 Scan from a List of Subdomains:

```bash
./host_header_tool.sh -l domains.txt
```

---

### 💬 Help

```bash
./host_header_tool.sh -h
```

Shows all available options and usage examples.

---

### 📁 Example Domain List Format

Save this in a file like `domains.txt`:

```
https://example.com
https://sub1.example.com
https://api.example.com
```

---

## 🧪 Sample Output

```
[+] Testing: https://example.com
[~] Injecting header: Host: evil.com
[~] Injecting header: X-Forwarded-Host: evil.com
[+] Response Code: 302
[✔️] Vulnerable via X-Forwarded-Host header!
```

If no vulnerability is found:

```
[✖] Not Vulnerable to Host Header Injection
```

---

## 📦 Headers Tested

This tool tests the following headers (and more):

- Host  
- X-Host  
- X-Forwarded  
- X-Forwarded-Host  
- X-Forwarded-For  
- X-Forwarded-Server  
- X-ProxyUser-Ip  
- X-Original-Url  
- X-Original-Host  
- Forwarded  
- Forwarded-For  
- X-Wap-Profile  
- True-Client-IP  
- X-HTTP-Host-Override  
- X-Rewrite-URL  
- X-Real-IP  
- Referer  
- Origin  
- Via  
- Client-IP  
- CF-Connecting-IP  
- Fastly-Client-IP  
- Forwarded-Proto  
- Front-End-Https  
- X-Client-IP  
- X-Cluster-Client-IP

---

## 👨‍💻 Author

**None_C** ([@N0neC](https://github.com/N0neC))  
🔗 LinkedIn: [Mrutunjaya Senapati](https://www.linkedin.com/in/mrutunjaya-senapati/)  
✍️ Medium Blog: [@mrutunjayasenapati0](https://medium.com/@mrutunjayasenapati0)

---

## ☠️ Disclaimer

This tool is for **educational purposes only**.  
Do **NOT** use it on websites you don’t own or have explicit permission to test.  
The author is **not responsible** for any misuse or illegal activity.

---

## ⭐ Star the Repo

If you find this tool useful, don't forget to **Star** ⭐ the repo and share it with other hackers, students, or cybersecurity pros.

---

