@echo off
set input=%1
Echo.Input was - %input%
set converted=%input:C:\xampp\htdocs\=http://localhost/%
set converted=%converted:\=/%
echo.Converted to - %converted%

start "webpage name" %converted%