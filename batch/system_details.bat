@echo off
cls

echo.
echo // System Basic Information
echo User name:                                 %USERNAME%
echo Host name:                                 %COMPUTERNAME%
systeminfo | findstr /c:"Nombre del sistema operativo"
systeminfo | findstr /c:"Tipo de sistema"
systeminfo | findstr /c:"Modelo" 
echo. 
echo. 

echo // CPU
wmic cpu get name, architecture, numberofcores, maxclockspeed, addresswidth, manufacturer, status
echo.

echo // Hard Drives (space)
wmic diskdrive get deviceid, size, partitions, manufacturer, model, serialnumber, status
echo. 

echo // Physical Memory
systeminfo | findstr /c:"Cantidad total de memoria"
wmic memorychip get devicelocator, name, capacity, speed, memorytype, formfactor, manufacturer, partnumber, serialnumber, status
echo. 

echo // BIOS
wmic bios get version, serialnumber
echo. 

echo // User Accounts
wmic useraccount get name, sid
echo. 

echo // Network Information
ipconfig /all | find /i "Tipo de nodo"
ipconfig | find /i "IPv4"
ipconfig /all | find /i "Puerta de enlace"
ipconfig /all | find /i "Servidor DHCP"
ipconfig /all | find /i "Servidores DNS"
echo.