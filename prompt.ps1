# Imosi Utsalo - WGU Student ID: 123456789
# PowerShell Script: prompt.ps1

try {
    do {
        Write-Host "`nMain Menu:"
        Write-Host "1 - Append .log files to DailyLog.txt"
        Write-Host "2 - List directory contents to C916contents.txt"
        Write-Host "3 - Show CPU and Memory Usage"
        Write-Host "4 - Show running processes sorted by virtual size"
        Write-Host "5 - Exit"
        $choice = Read-Host "Enter your choice (1–5)"

        switch ($choice) {
            "1" {
                # B1: Append .log files with timestamp to DailyLog.txt
                $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
                Add-Content -Path DailyLog.txt -Value "`nTimestamp: $timestamp"
                Get-ChildItem -Path . -Filter *.log | ForEach-Object {
                    Add-Content -Path DailyLog.txt -Value $_.FullName
                }
                Write-Host "Log files added to DailyLog.txt"
            }

            "2" {
                # B2: List files in tabular format sorted alphabetically to C916contents.txt
                Get-ChildItem | Sort-Object Name | Format-Table Name, Length, LastWriteTime -AutoSize |
                    Out-String | Set-Content -Path C916contents.txt
                Write-Host "Directory contents saved to C916contents.txt"
            }

            "3" {
                # B3: Show CPU and memory usage
                $cpuUsage = (Get-CimInstance -ClassName Win32_Processor).LoadPercentage
                $freeMem = (Get-CimInstance -ClassName Win32_OperatingSystem).FreePhysicalMemory / 1024
                Write-Host "`nCPU_Usage`tFree_Memory_MB"
                Write-Host "$cpuUsage`t`t$([math]::Round($freeMem, 2))"
            }

            "4" {
                # B4: Display running processes sorted by virtual memory (ascending)
                Get-Process |
                    Sort-Object VirtualMemorySize64 |
                    Select-Object Name, Id, CPU, @{Name="VirtualMemory_MB";Expression={"{0:N2}" -f ($_.VirtualMemorySize64 / 1MB)}} |
                    Out-GridView -Title "Processes Sorted by Virtual Memory (MB)"
            }

            "5" {
                # B5: Exit script
                Write-Host "Exiting script. Bye-bye!"
                break
            }

            default {
                Write-Host "Invalid selection. Please enter a number from 1 to 5."
            }
        }

    } while ($true)
}
catch {
    # D: Exception Handling
    Write-Host "An error occurred: $($_.Exception.Message)"
}
