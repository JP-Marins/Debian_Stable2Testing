
# Debian_Stable2Testing

BASH script to switch the Debian 13 Trixie branch from **Stable** to **Testing**.

---

## Important Warnings ⚠️

- **Use at your own risk:** I am not responsible for any issues that may arise from using this script.
- **Stability vs. New Features:** The **Stable** branch is recommended for critical servers or workstations. Use **Testing** only if you need newer packages and have some experience with GNU/Linux.
- **Backup:** Make sure to back up your important data before running the script.

---

## How to Use 🛠️

1. **Download the files from the repository.**

2. **Open the terminal** in the folder where the files were extracted.

3. **Switch to root user:**
   ```
   su
   ```

4. **Grant execution permission to the script (recommended):**
   ```
   chmod +x Stable2Testing.sh
   ```

5. **Run the script:**
   ```
   ./Stable2Testing.sh
   ```

---

## The Process 🔄

- The branch switch will take a few minutes.
- During the process, manual interaction will be required. Use:
  - **TAB**, **space bar**, **arrow keys** and **Enter** to navigate through options in the terminal.
  - If you notice anything wrong, you can interrupt the script with:
    ```
    Ctrl + C
    ```

- **Reboot:** At the end, you will be asked if you want to restart the computer. This step is essential to complete the process.

---

## Possible Issues and Solutions 🚨

- **No graphical interface after reboot:**  
  Use the following command to install a new graphical interface:
  ```
  tasksel
  ```
  Make sure you're logged in as root or in the `sudo` group to execute this command.

---

## License 📜

Feel free to use, modify, and share this script. Contributions are welcome!

---
