@echo off
cd %~dp0
set LSHORT=lshort-zh-cn
set PDF=%LSHORT%.pdf
set TEMP=%LSHORT%.xdv %LSHORT%.aux %LSHORT%.log %LSHORT%.idx %LSHORT%.ind %LSHORT%.ilg %LSHORT%.out %LSHORT%.toc %LSHORT%.los %LSHORT%-example.aux %LSHORT%.synctex.gz

if "%1"=="clean" goto clean
if "%1"=="distclean" goto distclean

set TEX=xelatex
set NOPDFMODE=-interaction=nonstopmode -synctex=1 --no-pdf
set MODE=-interaction=nonstopmode -synctex=1
set MAKEINDEX=makeindex

%TEX% %NOPDFMODE% %LSHORT%
%MAKEINDEX% -s %LSHORT%.ist %LSHORT%
%TEX% %NOPDFMODE% %LSHORT%
%TEX% %MODE% %LSHORT%

if exist %PDF% (
copy %PDF% ..
)
exit /B

:clean
del %TEMP%
del %PDF%
exit /B

:distclean
del %TEMP%
del %PDF%
del ..\%PDF%
exit /B
