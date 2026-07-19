# Linux Day 5 Practice Log

## Objective

Practice Linux file viewing and text processing commands to understand how to read, search, analyze, and filter file contents from the terminal.

---

## Commands Executed

```bash
mkdir Linux-Day5
cd Linux-Day5

touch notes.txt

echo "Linux" > notes.txt
echo "Ubuntu" >> notes.txt
echo "Docker" >> notes.txt
echo "Kubernetes" >> notes.txt
echo "Docker" >> notes.txt

cat notes.txt

less notes.txt

more notes.txt

head notes.txt

tail notes.txt

grep "Docker" notes.txt

wc notes.txt

sort notes.txt

sort notes.txt | uniq

cat notes.txt | grep "Linux"

cd ..

rm -r Linux-Day5
```

---

## Result

- Successfully created a practice directory.
- Created a text file and added multiple lines.
- Viewed complete file contents using `cat`.
- Read the file page by page using `less` and `more`.
- Displayed the beginning and end of the file using `head` and `tail`.
- Searched specific text using `grep`.
- Counted lines, words, and characters using `wc`.
- Sorted file contents alphabetically using `sort`.
- Removed duplicate entries using `uniq`.
- Combined commands using a pipe (`|`) to filter output.

---

## Issues Faced

Initially, I was confused about the difference between `cat`, `less`, and `more`. After practicing, I understood that `cat` displays the entire file at once, while `less` and `more` are more suitable for reading large files. I also learned that `uniq` removes only consecutive duplicate lines, so using `sort` before `uniq` gives better results.

---

## Time Taken

50 minutes

---

## Status

✅ Completed
