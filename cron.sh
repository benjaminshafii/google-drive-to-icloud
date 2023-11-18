#!/bin/zsh

# Define the source and destination directories
SOURCE_DIR="$1"
DESTINATION_DIR="$2"

# Get the directory of the current script
SCRIPT_DIR=$(dirname $0)

# Log file
LOG_FILE="$SCRIPT_DIR/app.log"

echo "Using $SCRIPT_DIR as script directory" >> "$LOG_FILE"
echo "Using $LOG_FILE as log file" >> "$LOG_FILE"
echo "Using $SOURCE_DIR as source directory" >> "$LOG_FILE"
echo "Moving all files from $SOURCE_DIR to $DESTINATION_DIR" >> "$LOG_FILE"


# Find all files in the source directory, excluding dot files
files=$(find "$SOURCE_DIR" -type f ! -name ".*")

echo "Found files: $files" >> "$LOG_FILE" 

# Process each file
for file in $files
do
    # Move the file to the destination directory
    mv "$file" "$DESTINATION_DIR"
    
    # Check if the file exists in the destination directory
    if [ -f "$DESTINATION_DIR/$(basename $file)" ]; then
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Successfully moved file: $file to $DESTINATION_DIR" >> "$LOG_FILE"
    else
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Failed to move file: $file to $DESTINATION_DIR" >> "$LOG_FILE"
    fi
done