@Echo Off
Title ��GitHub�ƶ˸��� Agent ��������appid
cd /d %~dp0
set BackDir=..\..
wget --ca-certificate=ca-bundle.crt -c https://raw.githubusercontent.com/w365/crpid_323_v2/master/proxy.ini
del "..\Agent\proxy.ini_backup"
ren "..\Agent\proxy.ini"  proxy.ini_backup
copy /y "%~dp0proxy.ini" ..\Agent\proxy.ini
del "%~dp0proxy.ini"
ECHO.&ECHO.�Ѹ���,�밴������˳�,������Chrome+.exe����. &PAUSE >NUL 2>NUL