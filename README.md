# Linux User Management Using Bash Scripts

This project provides two Bash scripts to automate Linux user management using a CSV file.
It is designed for System Administration and DevOps practice.

---

## Project Overview

The project consists of two scripts:

1- `data.sh`  
2- `user.sh`

The workflow:
- The first script collects employee data and stores it in a CSV file.
- The second script reads the CSV file and creates Linux users automatically with random passwords.

---

## Script 1: data.sh

### Description
This script:
- Prompts the user to enter:
  - Username
  - Full name
- Saves the data into `employee.csv` after confirmation.

### Script Logic
- Takes input from the user
- Confirms the entered data
- Appends the data to `employee.csv`

### Example Output

Enter your user name: Yousof
Enter your Full name: Yousof Khaled Mostafa
are you sure data is correct [y/n] y
your data has been stored successfully


---

## Script 2: user.sh

### Description
This script:
- Must be run as **root**
- Reads user data from `employee.csv`
- Creates Linux users automatically
- Generates random passwords
- Forces password change on first login
- Stores generated credentials in `out.txt`

### Features
- Root privilege validation
- CSV file validation
- Secure random password generation using `openssl`
- Automatic user creation
- Password expiration enforcement

---

## Requirements

- Linux Operating System
- Bash Shell
- Root privileges
- `openssl` installed

---

## How to Run

### Step 1: Add Employees
```bash
./add_employee.sh

Step 2: Create Linux Users (Run as root)
sudo ./create_users.sh

Files Generated

employee.csv → Stores usernames and full names
out.txt → Stores usernames and generated passwords

Author
Yousof Khaled
