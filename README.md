# OSS Audit — Open Source Software Capstone Project

**Student Name:** Bhavin
**Course:** Open Source Software (NGMC)
**Chosen Software:** Python Programming Language
**License:** Python Software Foundation (PSF) License

---

## About This Project

This repository is part of the Open Source Software capstone project — *The Open Source Audit*. The project involves a structured audit of Python, one of the world's most widely-used open-source programming languages, alongside five shell scripts that demonstrate practical Linux and Bash scripting skills.

---

## Repository Contents

```
oss-audit-[rollnumber]/
├── README.md
├── script1_system_identity.sh
├── script2_package_inspector.sh
├── script3_disk_auditor.sh
├── script4_log_analyzer.sh
└── script5_manifesto_generator.sh
```

---

## Script Descriptions

### Script 1 — System Identity Report (`script1_system_identity.sh`)

Displays a formatted welcome screen with key information about the Linux system. It shows the Linux distribution name, kernel version, currently logged-in user, home directory, system uptime, current date and time, and the open-source license that covers the OS.

**Concepts used:** Variables, `echo`, command substitution (`$()`), `/etc/os-release` parsing, output formatting.

---

### Script 2 — FOSS Package Inspector (`script2_package_inspector.sh`)

Checks whether the `python3` package is installed on the system using `dpkg`. If found, it retrieves the version, maintainer, and description. A `case` statement then prints a short philosophy note about the package based on its name.

**Concepts used:** `if-then-else`, `case` statement, `dpkg -l`, `dpkg -s`, pipe with `grep`.

---

### Script 3 — Disk and Permission Auditor (`script3_disk_auditor.sh`)

Loops through a predefined list of important system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and reports each directory's permissions, owner, group, and disk usage. Also checks if the Python binary exists and prints its permissions.

**Concepts used:** `for` loop, arrays, `ls -ld`, `du -sh`, `awk`, `cut`, conditional directory checks.

---

### Script 4 — Log File Analyzer (`script4_log_analyzer.sh`)

Reads a log file line by line and counts how many lines contain a given keyword (default: `error`). Accepts the log file path and an optional keyword as command-line arguments. Prints the count and the last 5 matching lines.

**Concepts used:** `while read` loop, `if-then`, counter variables, command-line arguments (`$1`, `$2`), `grep`, `tail`.

**Usage:**
```bash
./script4_log_analyzer.sh /var/log/syslog error
```

---

### Script 5 — Open Source Manifesto Generator (`script5_manifesto_generator.sh`)

An interactive script that asks the user three questions about their open-source values and composes a personalised manifesto paragraph from their answers. The output is saved to a `.txt` file named after the current user.

**Concepts used:** `read` for user input, string concatenation, writing to a file with `>` and `>>`, `date` command, `cat` to display output.

---

## How to Run the Scripts

### Prerequisites

- A Linux system (Ubuntu, Debian, Fedora, or any major distribution)
- Bash shell (version 4.0 or later)
- `python3` and `dpkg` installed (for Script 2)
- A log file available on the system (for Script 4)

### Steps

**1. Clone the repository**
```bash
git clone https://github.com/bhavin-01/oss-audit-24MEI10153.git
cd oss-audit-[rollnumber]
```

**2. Make all scripts executable**
```bash
chmod +x script1_system_identity.sh
chmod +x script2_package_inspector.sh
chmod +x script3_disk_auditor.sh
chmod +x script4_log_analyzer.sh
chmod +x script5_manifesto_generator.sh
```

**3. Run each script**

```bash
# Script 1 — System Identity Report
./script1_system_identity.sh

# Script 2 — FOSS Package Inspector
./script2_package_inspector.sh

# Script 3 — Disk and Permission Auditor
./script3_disk_auditor.sh

# Script 4 — Log File Analyzer (requires a log file path as argument)
./script4_log_analyzer.sh /var/log/syslog error

# Script 5 — Open Source Manifesto Generator (interactive)
./script5_manifesto_generator.sh
```

---

## Dependencies

| Script | Dependency | How to install |
|--------|-----------|----------------|
| Script 1 | `uname`, `uptime`, `whoami` | Pre-installed on all Linux systems |
| Script 2 | `dpkg`, `python3` | `sudo apt install python3` |
| Script 3 | `ls`, `du`, `awk` | Pre-installed on all Linux systems |
| Script 4 | `grep`, `tail` | Pre-installed on all Linux systems |
| Script 5 | `date`, `whoami` | Pre-installed on all Linux systems |

---

## Notes

- All scripts are written for **Debian/Ubuntu-based** Linux distributions. Script 2 uses `dpkg`; if running on an RPM-based system (Fedora, CentOS), replace `dpkg -l` and `dpkg -s` with `rpm -q` and `rpm -qi`.
- Script 4 requires a valid, readable log file as input. The path `/var/log/syslog` may vary by distribution — use `/var/log/messages` on Fedora/CentOS.
- Script 5 will generate a file named `manifesto_<username>.txt` in the current working directory.

---

*Submitted as part of the OSS Capstone Project | VITyarthi Portal*
