@echo off
setlocal EnableDelayedExpansion

set "printLine=false"
set flgs=0


for /f "tokens=*" %%a in ('ipconfig') do (
    set "gateway=%%a"
    set gateway=!gateway:*:=!
    if "!printLine!"=="true" (
        echo %%a | findstr /C:"192" > nul
        if not errorlevel 1 (
            echo This gateway is !gateway!
            choice /M "Do you want to continue?"
            set option=!errorlevel!
            if !option! equ 1 (
                set gateway2=!gateway!
                echo running
                set flgs=1
            ) else (
                echo Next
            )
        )
        
        set "printLine=false"
    )
    set gateway=!gateway:~1!
    echo %%a | findstr /C:"Default Gateway" > nul
    if defined gateway if !flgs! == 0 if not errorlevel 1   (
        echo This gateway is !gateway!
        choice /M "Do you want to continue?"
        set option=!errorlevel!
        if !option! equ 1 (
 		set gateway2=!gateway!
            echo running
            set flgs=1
        ) else (
            echo Next
		set "printLine=true"
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
route add %myServerIP% mask 255.255.255.255 %gateway2%
set myServer=9anime.to

for /f "tokens=1,2 delims=[]" %%a IN ('ping -n 1 !myServer!') DO (
 if "%%b" NEQ "" set myServerIP=%%b
)
route add %myServerIP% mask 255.255.255.255 %gateway2%

route add     23.11.235.27  mask 255.255.255.255 %gateway2%
route add    172.64.111.33  mask 255.255.255.255 %gateway2%
route add     104.31.16.10  mask 255.255.255.255 %gateway2%
route add    15.207.254.54  mask 255.255.255.255 %gateway2%
route add   157.240.199.60  mask 255.255.255.255 %gateway2%
route add    35.230.115.26  mask 255.255.255.255 %gateway2%
route add     23.49.74.181  mask 255.255.255.255 %gateway2%
route add    104.16.120.50  mask 255.255.255.255 %gateway2%
route add    104.18.29.101  mask 255.255.255.255 %gateway2%
route add    104.18.28.101  mask 255.255.255.255 %gateway2%
route add   157.240.239.60  mask 255.255.255.255 %gateway2%
route add    157.240.16.52  mask 255.255.255.255 %gateway2%
route add   116.119.86.161  mask 255.255.255.255 %gateway2%
route add     23.62.47.182  mask 255.255.255.255 %gateway2%
route add  118.215.153.144  mask 255.255.255.255 %gateway2%
route add    23.209.71.231  mask 255.255.255.255 %gateway2%
route add    157.240.15.60  mask 255.255.255.255 %gateway2%
route add   104.21.233.145  mask 255.255.255.255 %gateway2%
route add      157.240.0.0  mask 255.255.0.0 %gateway2%
route add  116.119.113.225  mask 255.255.255.255 %gateway2%
route add   104.21.233.146  mask 255.255.255.255 %gateway2%
route add   182.79.139.226  mask 255.255.255.255 %gateway2%
route add   182.79.139.226  mask 255.255.255.255 %gateway2%
route add   31.13.79.0  mask 255.255.255.0 %gateway2%
route add   3.33.252.61  mask 255.255.255.255 %gateway2%
route add   18.211.21.156  mask 255.255.255.255 %gateway2%
route add   104.16.56.40 mask 255.255.255.255 %gateway2%
route add   162.247.243.33  mask 255.255.255.255 %gateway2%
route add   104.18.157.37  mask 255.255.255.255 %gateway2%

route add 104.16.55.40 mask 255.255.255.255 %gateway2%
route add 104.18.156.37 mask 255.255.255.255 %gateway2%
route add 162.247.241.0 mask 255.255.255.0 %gateway2%
route add 23.223.244.0 mask 255.255.255.0 %gateway2%
route add 104.17.173.5 mask 255.255.255.255 %gateway2%
route add 23.15.34.0 mask 255.255.255.0 %gateway2%
route add 104.17.173.5 mask 255.255.255.255 %gateway2%
route add 44.242.43.154 mask 255.255.255.255 %gateway2%
route add 104.16.119.50 mask 255.255.255.255 %gateway2%
route add 23.15.34.65 mask 255.255.255.255 %gateway2%
route add 42.106.163.73 mask 255.255.255.255 %gateway2%
route add 104.18.24.250 mask 255.255.255.255 %gateway2%
route add 104.16.198.132 mask 255.255.255.255 %gateway2%
route add 44.240.128.137 mask 255.255.255.255 %gateway2%
route add 104.16.55.40 mask 255.255.255.255 %gateway2%
route add 8.241.164.252 mask 255.255.255.255 %gateway2%
route add 104.18.25.250 mask 255.255.255.255 %gateway2%
route add 104.16.206.131 mask 255.255.255.255 %gateway2%
route add 104.16.199.132 mask 255.255.255.255 %gateway2%
route add 52.40.38.195 mask 255.255.255.255 %gateway2%
route add 104.18.19.119 mask 255.255.255.255 %gateway2%
route add 104.18.18.119 mask 255.255.255.255 %gateway2%
route add 52.32.213.186 mask 255.255.255.255 %gateway2%
route add 34.209.119.0 mask 255.255.255.0 %gateway2%
route add 42.106.163.72 mask 255.255.255.255 %gateway2%
route add 223.196.43.40 mask 255.255.255.255 %gateway2%
route add 172.16.56.250 mask 255.255.255.255 %gateway2%
route add 44.227.83.28 mask 255.255.255.255 %gateway2%
route add 44.238.28.164 mask 255.255.255.255 %gateway2%
route add 184.25.240.143 mask 255.255.255.255 %gateway2%
route add 18.164.217.53 mask 255.255.255.255 %gateway2%
route add 18.164.217.50 mask 255.255.255.255 %gateway2%
route add 54.192.171.120 mask 255.255.255.255 %gateway2%
route add 18.164.217.111 mask 255.255.255.255 %gateway2%
route add 18.164.217.101 mask 255.255.255.255 %gateway2%
route add 42.106.163.83 mask 255.255.255.255 %gateway2%
route add 8.241.155.124 mask 255.255.255.255 %gateway2%
route add 54.190.255.22 mask 255.255.255.255 %gateway2%
route add 104.18.1.68 mask 255.255.255.255 %gateway2%
route add 104.16.207.131 mask 255.255.255.255 %gateway2%
route add 8.241.129.252 mask 255.255.255.0 %gateway2%
route add 8.255.132.124 mask 255.255.255.255 %gateway2%
route add 44.241.97.49 mask 255.255.255.255 %gateway2%
route add 104.18.0.68 mask 255.255.255.255 %gateway2%
route add 8.241.165.124 mask 255.255.255.255 %gateway2%
route add 52.24.145.100 mask 255.255.255.255 %gateway2%
route add 8.241.137.252 mask 255.255.255.255 %gateway2%
route add 100.22.12.229 mask 255.255.255.255 %gateway2%
route add 8.241.154.124 mask 255.255.255.255 %gateway2%
route add 34.217.218.62 mask 255.255.255.255 %gateway2%
route add 8.241.151.124 mask 255.255.255.255 %gateway2%
route add 34.217.218.62 mask 255.255.255.255 %gateway2%
route add 8.241.139.124 mask 255.255.255.255 %gateway2%
route add 8.241.151.124 mask 255.255.255.255 %gateway2%
route add 104.17.174.5 mask 255.255.255.255 %gateway2%
route add 54.213.40.150 mask 255.255.255.255 %gateway2%
route add 54.201.18.26 mask 255.255.255.255 %gateway2%
route add 8.241.159.124 mask 255.255.255.255 %gateway2%
route add 52.37.7.82 mask 255.255.255.255 %gateway2%
route add 104.18.10.21 mask 255.255.255.255 %gateway2%
route add 54.188.164.154 mask 255.255.255.255 %gateway2%
route add 104.18.11.21 mask 255.255.255.255 %gateway2%
route add 54.218.48.76 mask 255.255.255.255 %gateway2%
route add 52.89.118.18 mask 255.255.255.255 %gateway2%
route add 35.83.0.148 mask 255.255.255.255 %gateway2%
route add 35.164.109.29 mask 255.255.255.255 %gateway2%
route add 35.164.109.29 mask 255.255.255.255 %gateway2%
route add 52.10.244.177 mask 255.255.255.255 %gateway2%
route add 52.10.216.173 mask 255.255.255.255 %gateway2%

route add 104.18.4.159 mask 255.255.255.255 %gateway2%
route add 104.18.5.159  mask 255.255.255.255 %gateway2%
route add 23.57.13.92  mask 255.255.255.255 %gateway2%
route add 18.66.63.0  mask 255.255.255.0 %gateway2%
route add 52.207.120.16  mask 255.255.255.255 %gateway2%
route add 34.195.236.187 mask 255.255.255.255 %gateway2%
route add 54.226.83.163  mask 255.255.255.255 %gateway2%
route add 54.87.93.14  mask 255.255.255.255 %gateway2%
route add 3.208.138.192  mask 255.255.255.255 %gateway2%
EXIT