# PowerShell_Automation_Project
PowerShell_Automation_Project
PowerShell Automation Project

This project was developed as part of a consulting initiative for a growing start-up based in Salt Lake City, Utah. The client’s environment initially supported 35 employees, with plans to double their staff in the coming months. To prepare for this expansion, automation was introduced to streamline routine server administration tasks and improve operational efficiency.

🔹 Section B: Script Functionality Overview

The PowerShell script, prompts.ps1, provides an interactive user menu using a switch statement. The menu automates several common administrative tasks and continues to run until the user exits by selecting option 5.

🧩 Menu Options

1️⃣ Log File Listing

Finds all .log files in the Requirements1 folder.

Appends results (with the current timestamp) to DailyLog.txt without overwriting existing data.

2️⃣ Directory Contents

Lists files in the Requirements1 folder in alphabetical order and saves them to C916contents.txt.

3️⃣ System Resource Usage

Displays CPU and memory utilization in real time for quick performance checks.

4️⃣ Running Processes

Lists all running processes, sorts them by virtual memory usage, and displays them in a grid view.

5️⃣ Exit Script

Cleanly ends the session and exits the menu loop.
