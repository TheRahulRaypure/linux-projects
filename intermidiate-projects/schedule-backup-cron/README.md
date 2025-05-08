# ⏰ Project 10: Scheduled Folder Backup Using Cron

## 🧾 Description
A Bash script that creates a compressed backup of a specified directory and is scheduled to run daily using cron.

## 🧰 Features
- Timestamped compressed backups
- Automatically runs every day at 2:00 AM
- Logs output for monitoring

## 🚀 How to Run

### Manually:
```bash
./backup.sh


# to schedule a cron job
```bash 
    crontab -e
```

```bash 
    0 2 * * * /foler-path >> cron.log  2>&1
