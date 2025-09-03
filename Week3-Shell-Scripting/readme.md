# Week 3: Building Automation Tools with Bash Scripting

This directory contains my projects for Week 3 of the #90DaysOfDevOps challenge. This week was all about moving from running single commands to building complete, reusable tools with Bash scripting.

---
### Challenge 1: User Account Management Script

**Objective:** To create a Bash script that makes it easy to manage user accounts on a Linux system

I created a script named `user_account_management.sh` that can create, delete, reset passwords for, and list user accounts.

**Key Features:**
*   **Easy to Use:** The script uses simple options like `-c` for create, `-d` for delete, `-r` for reset, and `-l` for list.
*   **Smart and Safe:** Before doing anything, the script always checks if a user already exists to prevent errors.
*   **Intelligent User Listing:** The list function is smart enough to only show real human users (UIDs 1000-2000), not the system accounts.

**How to Use:**
```bash
# To create a new user
./user_account_management.sh -c

# To delete a user
./user_account_management.sh -d

# To reset password of the existing User
./user_account_management.sh -r

# To list all real users
./user_account_management.sh -l

The full script can be found here: [user_account_management.sh](user_account_management.sh).

---
### Challenge 2: Automated Backup Script with Rotation & S3 Sync

**Objective:** To create a script that not only backs up a directory but also automatically manages the backups and syncs them to a secure cloud location.

I built a script named `backup_with_rotation.sh` that functions as a real-world backup solution.

#### Key Features:
*   **Automatic Timestamped Backups:** Creates a `.zip` archive of a specified source directory. The archive is named with the current date and time to ensure every backup is unique.
*   **Smart Backup Rotation:** This is the core feature. The script automatically keeps only the **last 3 backups**. To do this, it lists all backups sorted by time (`ls -t`) and uses `awk` to identify and delete any older files, preventing the disk from filling up.
*   **Cloud Integration (AWS S3):** I added a crucial bonus feature to make this a true disaster-recovery tool. After a local backup is created, the script uses the AWS CLI to `sync` the entire backup directory to an S3 bucket. This ensures the backups are stored safely off-site.

#### How to Use:
The script takes three arguments: the destination path for local backups, the source path of the data to back up, and the name of the S3 bucket.
```bash
# Command structure:
# ./backup_with_rotation.sh <destination_path> <source_path> <s3_bucket_name>

# Example:
./backup_with_rotation.sh /home/ubuntu/backups /home/ubuntu/project-files my-secure-backup-bucket

The full script can be found here: [backup_with_rotation.sh](backup_with_rotation.sh).

#### Scheduling with Cron (Automation):
To make this a fully automated, "hands-off" solution, I also scheduled the script to run using `cron`.

1.  I opened the crontab editor:
    ```bash
    crontab -e
    ```
2.  To test the automation, I added the following line to make the script run every minute. After confirming that it worked correctly, I commented it out to stop the frequent backups.
    ```crontab
    # m h  dom mon dow   command
    #* * * * * bash /home/gagan/challenges/backup_with_rotation.sh /home/gagan/backups /home/gagan/challenges my-test-backup-bucket-gs
    ```
This final step turns the script into a true automated system, which is a key goal in DevOps.