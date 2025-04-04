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

---

## 🧠 What is Host Header Injection?

Host Header Injection occurs when applications use the `Host` header value to generate links, redirect URLs, or include it in responses without proper validation. An attacker can manipulate this header to perform:
- Web cache poisoning
- Password reset poisoning
- Redirects & SSRF
- Virtual host routing attacks

---

## 🚀 Usage

### 🔧 Setup

```bash
git clone https://github.com/N0neC/host-header-injection-tool.git
cd host-header-injection-tool
chmod +x host_header_tool.sh
