@echo off
set LSHORT=lshort-zh-cn
set PDF=%LSHORT%.pdf
set TEMP=%LSHORT%.aux %LSHORT%.log %LSHORT%.idx %LSHORT%.ind %LSHORT%.ilg %LSHORT%.out %LSHORT%.toc %LSHORT%.los %LSHORT%-example.aux

if "%1"=="clean" goto clean

set TEX=xelatex
set MODE=-interaction=nonstopmode
set MAKEINDEX=makeindex

%TEX% %MODE% %LSHORT%
%MAKEINDEX% -s %LSHORT%.ist %LSHORT%
%TEX% %MODE% %LSHORT%

if exist %PDF% (
move %PDF% ..
start "" "..\%PDF%"
)
exit

:clean
del %TEMP%
exit
