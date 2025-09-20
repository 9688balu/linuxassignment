# linuxassignment
DevOps Environment Setup for New Developers Configured system monitoring (htop, nmon, df, du), secure user management for Sarah and Mike with password policies, and automated web server backups using cron jobs. Includes verification logs, scripts, and documentation.

# DevOps Assignment: Environment Setup for New Developers

##  Role
Fresher DevOps Engineer assisting Rahul (Senior DevOps Engineer) at TechCorp.

##  Objective
Set up secure, monitored, and well-maintained development environments for Sarah and Mike, including system monitoring, user management, and automated backups.

---

## Task 1: System Monitoring Setup

### Tools Installed
- `htop` and `nmon` for CPU, memory, and process monitoring
- `df` and `du` for disk usage tracking

###  Logs Generated
- `/var/log/disk_usage.log`
- `/var/log/top_processes.log`

### Screenshots
- Installation confirmation
- <img width="940" height="299" alt="image" src="https://github.com/user-attachments/assets/159fcf8b-65ce-4daf-9ea4-2273eab1a16b" />

- Monitoring tools in action
<img width="823" height="493" alt="image" src="https://github.com/user-attachments/assets/3e2a87a5-462d-40a9-baa5-18b539aa0136" />
<img width="810" height="672" alt="image" src="https://github.com/user-attachments/assets/01dd3661-f0ba-45af-b8b6-dd6e509d9b05" />
<img width="833" height="496" alt="image" src="https://github.com/user-attachments/assets/470429b9-c422-4610-a927-b1de08a6d2bb" />

- Disk and process logs
- <img width="940" height="67" alt="image" src="https://github.com/user-attachments/assets/c2843d5f-9156-46bf-a04b-820c63d3b610" />
<img width="940" height="142" alt="image" src="https://github.com/user-attachments/assets/150ee7ef-345e-4b65-be34-62c325f570f5" />
<img width="1028" height="367" alt="image" src="https://github.com/user-attachments/assets/245752d8-2354-48f2-85d5-14d566a6178e" />

##  Task 2: User Management and Access Control

###  Users Created
- Sarah (`/home/Sarah/workspace`)
- Mike (`/home/Mike/workspace`)

### Security Measures
- Directory isolation with `chmod 700`
- Password policy: 30-day expiry, complexity enforced via `pwquality`

### Screenshots
- User creation
  <img width="940" height="363" alt="image" src="https://github.com/user-attachments/assets/d1d5ddce-50fd-4ef5-b6e8-e518e0084f4a" />
- Directory permissions
- <img width="940" height="143" alt="image" src="https://github.com/user-attachments/assets/19a05cb1-c5ca-4b77-91b9-3bc80833baec" />
- Password policy config files
- <img width="940" height="442" alt="image" src="https://github.com/user-attachments/assets/464be5b4-772c-4d51-a269-52bac6cc9742" />
- <img width="940" height="209" alt="image" src="https://github.com/user-attachments/assets/aa7feab5-6dec-494c-8380-4cf06b3230fb" />
- <img width="940" height="43" alt="image" src="https://github.com/user-attachments/assets/d644928a-2a7b-400b-8a74-fcb4a452193b" />-

## Task 3: Backup Configuration for Web Servers

### Sarah (Apache)
- Backup paths: `/etc/httpd/`, `/var/www/html/`
- Script: `/usr/local/bin/apache_backup.sh`
- Cron: Every Tuesday at 12:00 AM

### Mike (Nginx)
- Backup paths: `/etc/nginx/`, `/usr/share/nginx/html/`
- Script: `/usr/local/bin/nginx_backup.sh`
- Cron: Every Tuesday at 12:00 AM

### Backup Directory
- `/backups/`
- Filenames: apache_backup_2025-09-20.tar.gz  apache_backup_2025-09-21.tar.gz  apache_v
- 
### Verification Logs
- `apache_verify_YYYY-MM-DD.log`
- `nginx_verify_YYYY-MM-DD.log`

### Screenshots
<img width="796" height="90" alt="image" src="https://github.com/user-attachments/assets/220c2100-9b0d-47c8-9948-6d29ca230739" />

- Script contents
- <img width="1147" height="573" alt="image" src="https://github.com/user-attachments/assets/00522cfd-66c2-46e9-bf42-06b118c50d90" />

- Cron job entries
- <img width="701" height="119" alt="image" src="https://github.com/user-attachments/assets/cc79c336-585c-4744-aa6b-9febaf644c14" />

- Backup files and verification logs
- <img width="1584" height="208" alt="image" src="https://github.com/user-attachments/assets/d5aea63a-646a-4210-b19b-5595b2d3b078" />
- <img width="1013" height="730" alt="image" src="https://github.com/user-attachments/assets/b5761777-8e4a-4d67-8022-bb3d39ea0e4c" />
- <img width="862" height="675" alt="image" src="https://github.com/user-attachments/assets/72a574cb-1883-4bde-8b41-8309cb73e5d8" />


## Challenges Faced
-  Initial cron job misfire due to permission issues
-  Missing Nginx Directories: Initial backup script failed because /etc/nginx and /usr/share/nginx/html were not present on the system.
-  Date mismatch in verification log filename
-  Resolved by manual script execution and log inspection




---

## 🔗 Submission
GitHub Repository: [Insert your repo link here]

Submitted via Vlearn as per instructions.
