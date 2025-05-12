@echo off
setlocal EnableDelayedExpansion

rem === Configuration ===
set CC=gcc
set CFLAGS=-Wall -Wextra -O2 -Isrc
set SRC_DIR=src
set BUILD_DIR=build
set TARGET=array_example.exe

rem === Create build directory if not exists ===
if not exist %BUILD_DIR% mkdir %BUILD_DIR%

rem === Collect .c files ===
set SOURCES=
for /R %SRC_DIR% %%F in (*.c) do (
    set SOURCES=!SOURCES! "%%F"
)

rem === Compile source files ===
echo Compiling...
for %%F in (%SOURCES%) do (
    rem Strip path prefix and convert to .o path
    set FILE=%%~F
    set OBJ=!FILE:%SRC_DIR%=!
    set OBJ=%BUILD_DIR%!OBJ:.c=.o!

    rem Ensure the directory exists
    for %%I in ("!OBJ!") do (
        if not exist "%%~dpI" mkdir "%%~dpI"
    )

    echo [CC] %%F -> !OBJ!
    %CC% %CFLAGS% -c "%%F" -o "!OBJ!"
    if errorlevel 1 exit /b 1
)

rem === Link object files ===
echo Linking...
set OBJECTS=
for /R %BUILD_DIR% %%O in (*.o) do (
    set OBJECTS=!OBJECTS! "%%O"
)

%CC% %OBJECTS% -o %TARGET%
if errorlevel 1 exit /b 1

echo Done: %TARGET%
