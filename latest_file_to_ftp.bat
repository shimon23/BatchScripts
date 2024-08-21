@echo off
setlocal

:: Set the source directory path
set "source_folder=C:\Your\Source\Folder"

:: Set FTP server details
set "ftp_server=x.x.x.x"
set "ftp_username=username"
set "ftp_password=password"
set "ftp_target_folder=/path/on/ftp/server"

:: Find the newest file in the source folder
for /f "delims=" %%i in ('dir "%source_folder%\*" /b /a-d /o-d') do (
    set "newest_file=%%i"
    goto :found
)

:found
if not defined newest_file (
    echo No files found in %source_folder%.
    exit /b 1
)

echo Newest file found: %newest_file%

:: Create the FTP script
(
echo open %ftp_server%
echo user %ftp_username%
echo %ftp_password%
echo cd %ftp_target_folder%
echo binary
echo put "%source_folder%\%newest_file%"
echo bye
) > ftpcmd.txt

:: Execute the FTP script
ftp -n -s:ftpcmd.txt

:: Clean up
del ftpcmd.txt

echo File uploaded successfully to %ftp_server%.

endlocal
