@echo off
cd /d %~dp0
{{_cursor_}}

if not %errorlevel% == 0 (
pause
)

REM vim: set fenc=cp932 ff=dos nomodified:

