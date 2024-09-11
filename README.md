# Project Scripts Overview

This repository contains several scripts for managing APK files and pushing changes to the cloud. Below is a detailed description of the key files and their functionalities.

## Files and Their Purpose

### 1. **choose_which_apps_to_paste.txt**
   - This text file contains a list of APK files that you want to manage, specifically for the paste operation.
   - It is used by `paste_apps.bat` to determine which APKs from the list should be copied to a target location or another device.
   - Each line in this file corresponds to the name of an APK file.

### 2. **paste_apps.bat**
   - This batch script reads the APKs listed in `choose_which_apps_to_paste.txt` and copies or pastes them to a specified location (e.g., another folder, a connected device, etc.).
   - The script is designed to streamline the process of moving APKs based on the selection in the `.txt` file.
   - Useful when you have multiple APK files but only want to paste specific ones for deployment or testing.

### 3. **push_to_cloud.bat**
   - This script automates the process of pushing changes to a Git repository.
   - Typically, it will:
     1. Stage all changes (`git add .`).
     2. Commit the changes with a default or user-specified commit message.
     3. Push the changes to the remote Git repository (such as GitHub or GitLab).
   - It's useful for automating version control workflows and ensuring all local changes are reflected in the remote repository.

### 4. **install_apks.bat**
   - This batch file automates the installation of all APK files present in the current directory using `adb` (Android Debug Bridge).
   - For each APK:
     1. It prints "Currently installing: [APK_NAME]".
     2. If the installation succeeds, it prints "Success: [APK_NAME] installed successfully."
     3. If the installation fails, it prints "Failed: Could not install [APK_NAME]."
   - This script is handy for quickly installing multiple APKs on an Android device connected via `adb`.

---

### How to Use

1. **choose_which_apps_to_paste.txt**: 
   - Edit this file to include the names of the APKs you want to paste.
   - Ensure that each APK is listed on a new line.

2. **paste_apps.bat**: 
   - Run this batch script to paste the APKs listed in `choose_which_apps_to_paste.txt` to your target directory.

3. **push_to_cloud.bat**: 
   - Run this script to push any local changes to your Git repository. 
   - Make sure you have a Git repository initialized and set up before using this script.

4. **install_apks.bat**:
   - Place all APK files you want to install in the same directory as the `.bat` file.
   - Connect your Android device via `adb`, then run the script to install the APKs.

---

### Prerequisites
- **ADB (Android Debug Bridge)**: Required for `install_apks.bat`. Make sure `adb` is installed and configured in your system’s `PATH`.
- **Git**: Required for `push_to_cloud.bat`. Ensure Git is installed and a repository is properly initialized.
  
---

This `README.md` should give you a good understanding of how the scripts work and how to use them effectively!