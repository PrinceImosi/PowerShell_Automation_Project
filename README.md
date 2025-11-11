# PowerShell_Automation_Project
PowerShell_Automation_Project

🔹 Section B: Script Functionality Overview

As part of the initiative to streamline administrative tasks for the growing startup client, this section focuses on building an interactive PowerShell script to automate key system operations. The script leverages a switch statement to present a simple menu that allows users to perform common server management tasks without manual repetition. It runs continuously until the user chooses to exit, providing an efficient and user-friendly automation solution.

🧩 Menu Options

1️⃣ Log File Listing

Uses a regular expression to identify all .log files within the Requirements1 folder.

Appends the results to a file named DailyLog.txt without overwriting existing data.

Each time the option is selected, the current date is added before the file listing for reference.
<img width="524" height="369" alt="image" src="https://github.com/user-attachments/assets/86dc2173-5a18-4d4e-b767-0dc0890b83bd" />


2️⃣ Directory Contents

Lists all files in the Requirements1 folder in tabular format, sorted alphabetically (A–Z).

Saves the output to a file named C916contents.txt in the same directory.

3️⃣ System Resource Usage

Displays the system’s current CPU and memory utilization, offering a quick performance snapshot.

4️⃣ Running Processes

Lists all running processes on the system.

Sorts them by virtual memory size (from least to greatest).

Displays the results in an interactive grid view for improved visibility and analysis.

5️⃣ Exit Script

Cleanly terminates script execution and exits the menu loop.
