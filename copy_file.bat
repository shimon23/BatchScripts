@echo off
set "source_folder=C:\folder01"
set "destination_folder=C:\folder02"
set "file_to_copy=file.txt"

echo Copying %file_to_copy% from %source_folder% to %destination_folder%...

xcopy "%source_folder%\%file_to_copy%" "%destination_folder%\" /y

echo File copied successfully.
