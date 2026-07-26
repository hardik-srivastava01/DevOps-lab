# Linux Day 5 Practice Log

## Objective

Practice Linux file viewing and text processing commands to understand how to read, search, analyze, filter, and process file contents efficiently. Learn how these commands are used in log analysis, troubleshooting, and automation.

---

## Commands Executed

```bash
mkdir Linux-Day5
cd Linux-Day5

# Create sample file
touch notes.txt

echo "Linux" > notes.txt
echo "Ubuntu" >> notes.txt
echo "Docker" >> notes.txt
echo "Kubernetes" >> notes.txt
echo "Docker" >> notes.txt

# View file contents
cat notes.txt

# View file page by page
less notes.txt

# View file page by page
more notes.txt

# Display beginning of file
head notes.txt

# Display end of file
tail notes.txt

# Search text
grep "Docker" notes.txt

# Count lines, words and characters
wc notes.txt

# Sort contents
sort notes.txt

# Remove duplicate lines
sort notes.txt | uniq

# Pipe example
cat notes.txt | grep "Linux"

cd ..
rm -r Linux-Day5
```

---

## Result

- Successfully created a practice directory.
- Created a text file and inserted sample data.
- Viewed the complete file using `cat`.
- Read the file page-by-page using `less` and `more`.
- Displayed the first and last lines using `head` and `tail`.
- Searched text using `grep`.
- Counted lines, words, and characters using `wc`.
- Sorted file contents alphabetically using `sort`.
- Removed duplicate entries using `uniq`.
- Combined multiple commands using the pipe (`|`) operator.

---

## Issues Faced

Initially, I was confused about the difference between `cat`, `less`, and `more`.

After practicing, I understood:

- `cat` displays the entire file at once.
- `less` is best for navigating large files.
- `more` provides basic page-by-page viewing.
- `uniq` removes only consecutive duplicate lines, so using `sort` before `uniq` gives accurate results.
- Pipes (`|`) make command combinations more efficient.

---

## Real World Problems You Can Solve

### DevOps

- Read CI/CD pipeline logs.
- Search deployment failures.
- Verify configuration files.
- Analyze application logs.
- Filter command output.

### SRE

- Investigate production incidents.
- Monitor live logs using `tail`.
- Count error occurrences.
- Find exceptions using `grep`.
- Analyze server logs quickly.

### Cloud Engineer

- Debug cloud VM logs.
- Verify startup scripts.
- Inspect system log files.
- Analyze cloud service logs.
- Search configuration values.

---

## Commands Used in Production

| Command | Production Use |
|----------|----------------|
| `cat` | View small configuration files |
| `less` | Read large log files |
| `more` | Read files page by page |
| `head` | Verify file headers |
| `tail` | Monitor recent logs |
| `grep` | Search logs and configuration |
| `wc` | Count log entries and file statistics |
| `sort` | Organize command output |
| `uniq` | Remove duplicate entries |
| `|` (Pipe) | Combine commands for efficient processing |

---

## Best Practices

- Use `less` instead of `cat` for large files.
- Use `tail -f` for real-time log monitoring.
- Combine `sort` with `uniq` for accurate duplicate removal.
- Use `grep` to filter only relevant information.
- Prefer command pipelines over creating temporary files.
- Learn common command combinations for faster troubleshooting.

---

## Time Taken

50 Minutes

---

## Status

✅ Completed
