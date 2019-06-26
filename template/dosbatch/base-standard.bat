@echo off
REM {{_name_}}
REM ===


REM Settings
REM ===


REM Script
REM ===
cd /d %~dp0
{{_cursor_}}

if not %errorlevel% == 0 (
pause
)


REM Goto Function
REM ===
:log_error
  if %errorlevel% == 0 (
    echo "ok"
  ) else (
    echo %~n1 >> error_files.txt
  )
  exit /b 0

:add_datetime
  call :get_datetime
  set out_filename=%~n1_%datetime%.txt
  exit /b 0

:get_datetime
  set yyyy=%date:~0,4%
  set mm=%date:~5,2%
  set dd=%date:~8,2%
  set time2=%time: =0%
  set hh=%time2:~0,2%
  set mn=%time2:~3,2%
  set ss=%time2:~6,2%
  set datetime=%yyyy%_%mm%_%dd%__%hh%_%mn%_%ss%
  exit /b 0


REM vim: set fenc=cp932 ff=dos nomodified:

