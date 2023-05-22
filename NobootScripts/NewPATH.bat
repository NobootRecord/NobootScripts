::
:: NewPATH script allows to modify local (for current user only)
:: PATH environment variable.
::
:: NewPATH script is a tiny and minimalistic alternative of Tiny PATH Editor
:: utility I am no longer working on.
::

@echo off

echo Current PATH value: %PATH%
set /p NewPATH=Enter new PATH value: 

reg add HKCU\Environment /v Path /t REG_SZ /d "%NewPATH%" /f
set PATH=%NewPATH%