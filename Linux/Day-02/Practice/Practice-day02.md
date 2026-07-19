# Linux Day 2 Practice Log

## Objective

Practice Linux file and directory management by creating folders, creating files, copying files, moving files, renaming files, viewing file content, and deleting directories.

---

## Commands Executed

```bash
mkdir Linux-Day2
cd Linux-Day2

mkdir Notes Projects

touch Notes/linux.txt
echo "Linux Day 2 Practice" > Notes/linux.txt

cp Notes/linux.txt Projects/

mv Projects/linux.txt Projects/linux-notes.txt

ls
ls Notes
ls Projects

cat Projects/linux-notes.txt

pwd

cd ..

tree Linux-Day2

rm -r Linux-Day2
```

---

## Result

- Created a new project directory named `Linux-Day2`.
- Created two subdirectories: `Notes` and `Projects`.
- Created a text file inside the `Notes` directory.
- Added content to the file using the `echo` command.
- Copied the file from `Notes` to `Projects`.
- Renamed the copied file to `linux-notes.txt`.
- Verified the directory structure using `ls` and `tree`.
- Displayed the file content using `cat`.
- Checked the current working directory using `pwd`.
- Removed the practice directory after completing all tasks.

---

## Skills Practiced

- Creating directories (`mkdir`)
- Navigating directories (`cd`)
- Creating files (`touch`)
- Writing data to files (`echo`)
- Copying files (`cp`)
- Moving and renaming files (`mv`)
- Listing files and directories (`ls`)
- Reading file content (`cat`)
- Checking current location (`pwd`)
- Viewing directory structure (`tree`)
- Removing directories (`rm -r`)

---

## Issues Faced

Initially, I was confused about the difference between the `cp` and `mv` commands.

- `cp` creates a copy of a file while keeping the original file unchanged.
- `mv` moves a file to a new location or renames it.

After practicing both commands multiple times, I understood when to use each one.No major issues during the practice. All commands executed successfully.

---

## Learning Outcome

Today I learned how to organize files and directories in Linux. I also understood the difference between creating, copying, and renaming files, and how these operations are commonly used while managing projects from the terminal.

---

## Time Taken

30 minutes

---

## Status

✅ Completed
