## -- Print File Content with Line Numbers -- ##

# This script takes a filename as an argument and prints its contents
# with each line numbered, using the 'nl' (number lines) utility.

# Check if a filename was provided as an argument
if [ -z "$1" ]; then
    echo "Error: Please provide a filename as the first argument."
    echo "Usage: ./print_with_line_count.sh <filename>"
    exit 1
fi

FILE_TO_PRINT="$1"

# Check if the provided file actually exists
if [ ! -f "$FILE_TO_PRINT" ]; then
    echo "Error: File '$FILE_TO_PRINT' not found or is not a regular file."
    exit 1
fi

echo "--- Content of '$FILE_TO_PRINT' with Line Numbers ---"

# Use 'nl' (number lines) to print the file with a line count
nl "$FILE_TO_PRINT"

echo "------------------------------------------------------"
# Also count the total number of lines using 'wc -l'
LINE_COUNT=$(wc -l < "$FILE_TO_PRINT")
echo "Total lines in file: $LINE_COUNT"
