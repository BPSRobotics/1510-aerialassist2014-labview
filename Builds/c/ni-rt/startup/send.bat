@echo off
echo user anonymous>> ftpcmd.dat
echo testdis>> ftpcmd.dat
echo bin>> ftpcmd.dat
echo put %1>> ftpcmd.dat
echo cd /ni-rt/startup/
echo quit>> ftpcmd.dat
ftp -n -s:ftpcmd.dat 10.15.10.2
del ftpcmd.dat
pause