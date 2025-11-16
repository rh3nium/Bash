## -- Create and Sheck if File Exists on Desktop -- ##

# This script creates a sample file on the user's Desktop directory
# and then checks for its existence.

# Define the filename
FILENAME="test_document.txt"

# Determine the path to the Desktop (common approach, adjust if necessary)
# Note: On some minimal systems, this directory might not exist.
DESKTOP_PATH="$HOME/Desktop"
FILE_PATH="$DESKTOP_PATH/$FILENAME"

# 1. Create the file with some content
echo "Creating file at: $FILE_PATH"
mkdir -p "$DESKTOP_PATH" # Ensure Desktop directory exists
echo "This is a simple test file created by the script." > "$FILE_PATH"

# Check the exit status of the previous command
if [ $? -eq 0 ]; then
    echo "Successfully created file: $FILENAME"
else
    echo "Error: Could not create file."
    exit 1
fi

echo "-------------------------------------"

# 2. Check if the file exists
echo "Checking if file exists..."
if [ -f "$FILE_PATH" ]; then
    echo "SUCCESS: The file '$FILENAME' exists in the Desktop directory."
    ls -l "$FILE_PATH"
else
    echo "FAILURE: The file '$FILENAME' was not found."
fi

# Optional: clean up the created file
# rm "$FILE_PATH"
# echo "Cleaned up test file."
