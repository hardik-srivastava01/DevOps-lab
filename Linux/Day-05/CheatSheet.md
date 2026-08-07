# Linux Day 5 CheatSheet

## One-Line Interview Answers

### What is `cat`?
→ `cat` displays the entire file content.

### What is `less`?
→ `less` views large files page by page with forward and backward navigation.

### What is `more`?
→ `more` displays a file one page at a time with limited navigation.

### Difference between `cat`, `less`, and `more`?
→ `cat` shows the whole file, `less` supports full navigation, `more` supports basic page-by-page viewing.

### What is `head`?
→ `head` displays the first 10 lines of a file by default.

### What is `tail`?
→ `tail` displays the last 10 lines of a file by default.

### What is `tail -f`?
→ `tail -f` continuously monitors newly appended data in a file.

### What is `grep`?
→ `grep` searches for matching text or patterns inside files.

### What is `wc`?
→ `wc` counts lines, words, and characters in a file.

### What is `sort`?
→ `sort` arranges lines alphabetically or numerically.

### What is `uniq`?
→ `uniq` removes consecutive duplicate lines.

### Why use `sort` before `uniq`?
→ `uniq` removes only adjacent duplicates, so sorting groups duplicates together first.

### What is a Pipe (`|`)?
→ A pipe passes the output of one command as the input to another.

### Why are pipes useful?
→ Pipes combine multiple commands into efficient processing pipelines.

### Difference between `head` and `tail`?
→ `head` shows the beginning of a file; `tail` shows the end.

### Difference between `grep` and `find`?
→ `grep` searches inside file content, while `find` searches for files/directories.

### Difference between `wc -l`, `wc -w`, and `wc -c`?
→ `-l` counts lines, `-w` counts words, and `-c` counts characters.

---

# Interview Keywords

- cat
- less
- more
- head
- tail
- tail -f
- grep
- wc
- sort
- uniq
- Pipe (`|`)
- Log Analysis
- Text Processing

---

# Common Follow-up Questions

- Why is `less` preferred over `cat` for large files?
- When would you use `tail -f`?
- Why use `grep` in production?
- Difference between `grep` and `find`?
- Difference between `sort` and `uniq`?
- Why use `sort` before `uniq`?
- What does `wc` output?
- How do pipes improve command execution?
- How do you count only lines in a file?
- How do you search case-insensitive text using `grep`?

---

# Production Relevance

## DevOps

- Analyze CI/CD logs.
- Verify deployment output.
- Search configuration values.
- Filter command output.

## SRE

- Monitor production logs.
- Investigate incidents.
- Count error occurrences.
- Analyze application logs.

## Cloud Engineer

- Read cloud VM logs.
- Debug startup scripts.
- Verify cloud configurations.
- Monitor system logs.

---

# 30–50 LPA Interview Tips

✅ Say **"`tail -f` is used for real-time log monitoring."**

✅ Mention **"`grep` is the primary tool for searching logs during production incidents."**

✅ Mention **"`less` is preferred for large files because it loads data efficiently."**

✅ Mention **"`sort | uniq` is commonly used to identify unique log entries."**

✅ Mention **"Pipes enable powerful command chaining without creating temporary files."**

---

# Rapid Revision

- `cat` → Display entire file
- `less` → View large files
- `more` → Basic page-by-page view
- `head` → First 10 lines
- `tail` → Last 10 lines
- `tail -f` → Live log monitoring
- `grep` → Search text
- `wc` → Count lines/words/chars
- `sort` → Sort data
- `uniq` → Remove duplicate lines
- `|` → Pass output to another command
