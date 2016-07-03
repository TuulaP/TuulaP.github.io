@echo off
if [%1]==[] goto help
if NOT exist %1 goto help

goto core

:help
@echo Help: %0 ^<Blog post filename^>
exit /B 1

:core
echo http://urn.fi/ > tmp\newurn.tmp
wget http://urnsource-kk.lib.helsinki.fi/cgi-bin/urn_generator.cgi?type=nbn -O tmp\newurn.tmp -q
echo http://urn.fi/ >> %1
cat tmp\newurn.tmp >> %1
echo URN added to %1