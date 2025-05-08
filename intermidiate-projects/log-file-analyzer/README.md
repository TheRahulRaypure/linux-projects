# 🧩 Project 6: Log File Analyzer

## 📌 Description

This script helps system admins quickly analyze log files for errors, warnings, failed login attempts, and any keyword patterns. It works with any plain text log file.

---

## ⚙️ Features

- Counts:
  - Total `error`, `warning`, and `failed` messages
  - Keyword occurrences (user input)
- Displays top 5 most frequent error messages
- Shows timestamp of the last error
- Accepts log file as an argument (defaults to `/var/log/syslog`)

---

## 🚀 How to Use

```bash
cd intermediate/log-file-analyzer
./log-analyzer.sh /var/log/syslog

