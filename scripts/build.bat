@echo off

set BUILD_TEST=%SCRUTINY_BUILD_TEST%
set BUILD_TESTAPP=%SCRUTINY_BUILD_TESTAPP%
set BUILD_C_TESTAPP=%SCRUTINY_BUILD_C_TESTAPP%

set WAF_CMD=waf.bat

set CONFIGURE_CMD=%WAF_CMD% configure --out=build-dev

if "%BUILD_TEST%"=="ON" (
    set CONFIGURE_CMD=%CONFIGURE_CMD% --build-test
)

if "%BUILD_TESTAPP%"=="ON" (
    set CONFIGURE_CMD=%CONFIGURE_CMD% --build-testapp
)

if "%BUILD_C_TESTAPP%"=="ON" (
    set CONFIGURE_CMD=%CONFIGURE_CMD% --build-c-testapp
)

set BUILD_CMD=%WAF_CMD% build

%CONFIGURE_CMD%
if errorlevel 1 goto :ERROR

%BUILD_CMD%
if errorlevel 1 goto :ERROR

goto :END

:ERROR
echo Cannot build
exit /B 1

:END
exit /B 0