@echo off

:wifiscan
netsh wlan show networks
timeout 30
GOTO :wifiscan