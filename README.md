# Automation Scripts for Daily Tasks

This repository contains various batch scripts that I’ve written to automate repetitive day-to-day tasks, including file management and FTP uploads.

## Overview

The scripts in this repository are designed to:
- Automatically find and copy the latest file in a specified folder.
- Upload files to an FTP server.
- Streamline daily operations by reducing manual work.

## Scripts Included

1. **latest_file_to_ftp.bat**  
   This script finds the most recent file in a specified folder and uploads it to a specified FTP server.

2. **copy_file.bat**  
   This script copies a specific file from one folder to another.

### Script Details

#### latest_file_to_ftp.bat

This script automates the process of finding the newest file in a directory and uploading it to an FTP server. It’s particularly useful for automating file transfers for backups, reports, or any other regular uploads.

**How it Works:**

1. The script identifies the most recent file in the specified directory based on its creation or modification date.
2. It then connects to the FTP server using the provided credentials.
3. The file is uploaded directly to the root directory (or another specified folder) on the FTP server.

**Usage Instructions:**

1. **Set up the script** by editing the following lines with your specific paths and FTP details:
    ```batch
    set "source_folder=C:\Path\To\Your\Folder"
    set "ftp_server=your.ftp.server"
    set "ftp_username=yourusername"
    set "ftp_password=yourpassword"
    ```

2. **Run the script** by double-clicking `copy_to_ftp.bat` or using the command line:
    ```bash
    copy_to_ftp.bat
    ```

**Example Output:**

```plaintext
Newest file found: example_2024-08-21.xml
File uploaded successfully to your.ftp.server.
