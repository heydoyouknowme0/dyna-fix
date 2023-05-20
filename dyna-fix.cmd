@echo off
setlocal EnableDelayedExpansion

set flgs=0

for /f "tokens=2 delims=:" %%a in ('ipconfig /all ^| findstr /c:"Default Gateway"') do (
    if not "%%a"==" " if !flgs! == 0 (
    	set gatewayer=%%a
    	set gateway=!gatewayer:*:=!
    	set gateway=!gateway:~1!
    	for /f "tokens=2" %%b in ("!gatewayer!") do (
        	set gateway=%%b
    	)
        echo This gateway is !gateway!
        choice /M "Do you want to continue?"
        set option=!errorlevel!
        if !option! equ 1 (
            echo running
            set flgs=1
        ) else (
            echo Next
        )
	)
)

if !flgs! == 0 (
	echo Not found
	EXIT
)


set myServer=web.whatsapp.com

for /f "tokens=1,2 delims=[]" %%a IN ('ping -n 1 !myServer!') DO (
 if "%%b" NEQ "" set myServerIP=%%b
)
route add %myServerIP% mask 255.255.255.255 %gateway%
set myServer=9anime.to

for /f "tokens=1,2 delims=[]" %%a IN ('ping -n 1 !myServer!') DO (
 if "%%b" NEQ "" set myServerIP=%%b
)
route add %myServerIP% mask 255.255.255.255 %gateway%
route add     23.11.235.27  mask 255.255.255.255 %gateway%
route add    172.64.111.33  mask 255.255.255.255 %gateway%
route add     104.31.16.10  mask 255.255.255.255 %gateway%
route add    15.207.254.54  mask 255.255.255.255 %gateway%
route add   157.240.199.60  mask 255.255.255.255 %gateway%
route add    35.230.115.26  mask 255.255.255.255 %gateway%
route add     23.49.74.181  mask 255.255.255.255 %gateway%
route add    104.16.120.50  mask 255.255.255.255 %gateway%
route add    104.18.29.101  mask 255.255.255.255 %gateway%
route add    104.18.28.101  mask 255.255.255.255 %gateway%
route add   157.240.239.60  mask 255.255.255.255 %gateway%
route add    157.240.16.52  mask 255.255.255.255 %gateway%
route add   116.119.86.161  mask 255.255.255.255 %gateway%
route add     23.62.47.182  mask 255.255.255.255 %gateway%
route add  118.215.153.144  mask 255.255.255.255 %gateway%
route add    23.209.71.231  mask 255.255.255.255 %gateway%
route add    157.240.15.60  mask 255.255.255.255 %gateway%
route add   104.21.233.145  mask 255.255.255.255 %gateway%
route add      157.240.0.0  mask 255.255.0.0 %gateway%
route add  116.119.113.225  mask 255.255.255.255 %gateway%
route add   104.21.233.146  mask 255.255.255.255 %gateway%
route add   182.79.139.226  mask 255.255.255.255 %gateway%
EXIT