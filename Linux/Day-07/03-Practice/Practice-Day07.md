# Linux Day 7 Practice Log

## Objective

Practice Linux archive, compression, backup utilities, and disk usage commands.

---

## Commands Executed

```bash
mkdir Linux-Day7
cd Linux-Day7

touch notes.txt
mkdir Project
touch Project/file1.txt
touch Project/file2.txt

tar -cvf backup.tar Project

tar -tvf backup.tar

mkdir Restore

tar -xvf backup.tar -C Restore

gzip notes.txt

gunzip notes.txt.gz

tar -czvf backup.tar.gz Project

tar -xzvf backup.tar.gz

zip -r backup.zip Project

unzip backup.zip

du -sh Project

df -h

cd ..

rm -r Linux-Day7
```

---

## Result

- Successfully created a practice directory.
- Created sample files and folders.
- Created a TAR archive using `tar`.
- Listed archive contents before extraction.
- Extracted archived files into a separate directory.
- Compressed and decompressed files using `gzip` and `gunzip`.
- Created and extracted a compressed `.tar.gz` archive.
- Created and extracted a ZIP archive.
- Checked directory size using `du`.
- Checked available disk space using `df`.
- Deleted the practice directory after completing the exercises.

---

## Issues Faced

Initially, I was confused about the difference between archiving and compression. After practicing, I understood that `tar` combines multiple files into a single archive, while `gzip` compresses files to reduce their size. I also learned that `tar -czvf` creates a compressed archive in a single command, and `du` and `df` provide different types of storage information.

---

## Time Taken

60 minutes

---

## Status

✅ Completed
