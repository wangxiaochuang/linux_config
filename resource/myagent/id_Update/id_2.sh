@Echo Off
Title 从OSC云端更新 Agent 最新流量appid
cd /d %~dp0
set BackDir=..\..
wget --ca-certificate=ca-bundle.crt -c http://git.oschina.net/cfuup/crpid_323_v2/raw/master/proxy.ini
del "..\Agent\proxy.ini_backup"
ren "..\Agent\proxy.ini"  proxy.ini_backup
copy /y "%~dp0proxy.ini" ..\Agent\proxy.ini
del "%~dp0proxy.ini"
ECHO.&ECHO.已更新,请按任意键退出,并重启Chrome+.exe程序. &PAUSE >NUL 2>NUL