#!/bin/bash

echo "==============================="
echo "Linux Notes Organizer Started"
echo "==============================="

# Convert all Practice .txt files to .md
find . -type f -path "*/Practice/*.txt" | while read file
do
    newfile="${file%.txt}.md"
    mv "$file" "$newfile"
    echo "Renamed: $file -> $newfile"
done

echo ""
echo "Done!"
echo ""

tree -L 3
