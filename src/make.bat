@echo off
set LSHORT=lshort-zh-cn
set PDF=%LSHORT%.pdf
set TEMP=%LSHORT%.xdv %LSHORT%.aux %LSHORT%.log %LSHORT%.idx %LSHORT%.ind %LSHORT%.ilg %LSHORT%.out %LSHORT%.toc %LSHORT%.los %LSHORT%-example.aux %LSHORT%.synctex.gz

if "%1"=="clean" goto clean

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
exit

:clean
del %TEMP%
del %PDF%
exit

:distclean
del %TEMP%
del %PDF%
del ..\%PDF%
exit
