# Google Drive to iCloud macOS File Mover

This is a helper script designed to move files from Google Drive to iCloud on a macOS system via a cron job.
Setup

1. Clone this repository to your local machine.
2. Open Terminal and navigate to the directory containing the script.
3. Run the script with the source directory (Google Drive) and destination directory (iCloud) as arguments. For example:
`./cron.sh "/path/to/GoogleDrive" "/path/to/iCloud"`
## Setting up a Cron Job

To automate the process, you can set up a cron job that runs this script at regular intervals.

1. Open Terminal.
2. Type crontab -e to open the cron table for editing.
3. Add a new line in the following format to schedule the script:
`* * * * * /path/to/cron.sh "/path/to/GoogleDrive" "/path/to/iCloud"`

This will run the script every minute. You can adjust the timing according to your needs.
Granting Full Disk Access to Cron

## Fixing macOS annoyances
macOS may prevent cron from accessing certain directories. To grant full disk access:

1. Open System Preferences.
2. Go to Security & Privacy > Privacy > Full Disk Access.
3. Click the lock to make changes, then enter your password.
4. Click the '+' button to add an application.
5. You won't see cron in the list, so you'll need to manually locate it. In Terminal, type which cron to find out where cron is located.
6. In the file dialog that opened in step 4, press Cmd+Shift+G and enter the path you got from which cron.
7. Select the cron executable and click Open.
License

This project is licensed under the MIT License. See the LICENSE file for details.
Disclaimer

This script moves files, not copies them. Always ensure you have a backup of your files before running the script. The author is not responsible for any lost data.# google-drive-to-icloud
