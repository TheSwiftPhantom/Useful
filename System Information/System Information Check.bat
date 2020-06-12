@echo off
:: This batch file reveals OS, hardware, and network configuration.
title  Device Info
echo ====================
echo Checking your system information...
echo ====================
echo OS Info
echo ====================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: Hardware info
echo ====================
echo Hardware Info
echo ====================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
echo ====================
echo Network Info
echo ====================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
pause