#!/bin/bash

# Create directories
mkdir -p task/dir1 task/dir2 task/dir3/dir4

# Change current directory to task
cd task

# Create an empty file
touch dir2/empty

# Create hello.sh with specific content
echo -e '#!/bin/bash\necho "$1, привет!"' > dir2/hello.sh

# Set permissions for hello.sh
chmod 764 dir2/hello.sh

# Save list of files in dir2 to list.txt
ls dir2 > dir2/list.txt

# Copy contents of dir2 to dir3/dir4
cp -r dir2/* dir3/dir4

# Write list of *.txt files to summary.txt
find . -name "*.txt" > dir1/summary.txt

# Append contents of list.txt to summary.txt
cat dir2/list.txt >> dir1/summary.txt

# Define environment variable NAME
export NAME="Всем студентам"

# Run hello.sh with NAME as argument and append output to summary.txt
dir2/hello.sh $NAME >> dir1/summary.txt

# Move and rename summary.txt
mv dir1/summary.txt "Практическое задание"

# Print contents of "Практическое задание"
cat "Практическое задание"

# Find lines containing "dir" in "Практическое задание", sort them
grep "dir" "Практическое задание" | sort

# Change current directory to parent of task
cd ..

# Remove task directory and its contents
rm -r task