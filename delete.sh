#!/bin/bash
# Get the file name from the user.
echo "Enter the file name:"
read file_name
# Get the number of lines to delete.
echo "Enter the number of lines to delete:"
read number_of_lines
# Set the starting line number.
starting_line_number=$(($number_of_lines + 1))
# Get the contents of the file.
file_contents=$(cat $file_name)
# Delete the last 3 lines of the file.
new_file_contents=$(echo "$file_contents" | head -n $starting_line_number)
# Write the new contents to the file.
echo "$new_file_contents" > $file_name
