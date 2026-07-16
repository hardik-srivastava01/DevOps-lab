# Linux Day 6 Practice Log

## Objective

Practice Linux file editing, standard input/output, redirection operators, and basic text editors.

---

## Commands Executed

```bash
mkdir Linux-Day6
cd Linux-Day6

touch notes.txt

echo "Linux" > notes.txt
echo "Docker" >> notes.txt
echo "Kubernetes" >> notes.txt

cat notes.txt

sort < notes.txt

ls invalid-folder 2> errors.txt

cat errors.txt

echo "Learning Linux Redirection" | tee output.txt

nano notes.txt

vim notes.txt

cd ..

rm -r Linux-Day6
```

---

## Result

- Successfully created a practice directory.
- Created a text file.
- Wrote data using output redirection (`>`).
- Appended new data using append redirection (`>>`).
- Used input redirection (`<`) with the `sort` command.
- Redirected error messages to a separate file using (`2>`).
- Created a file using the `tee` command while displaying output on the terminal.
- Opened and edited files using `nano`.
- Opened a file in `vim` and learned basic navigation.
- Deleted the practice directory after completing the exercises.

---

## Issues Faced

Initially, I was confused about the difference between `>` and `>>`. After practicing, I understood that `>` overwrites existing file content, while `>>` appends new content without deleting previous data. I also learned how to exit `nano` and `vim`, and understood that `2>` stores only error messages in a separate file.

---

## Time Taken

55 minutes

---

## Status

✅ Completed
