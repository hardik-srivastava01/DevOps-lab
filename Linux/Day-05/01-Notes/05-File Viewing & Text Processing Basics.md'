# Linux Day 5 - File Viewing & Text Processing

## Objective

Learn how to view file contents, search text inside files, count lines, words, and characters, display the beginning and end of files, and use pipes (`|`) to combine Linux commands. These skills are essential for log analysis, troubleshooting, and automation in DevOps, SRE, and Cloud Engineering.

---

# What is File Viewing?

File viewing means reading the contents of a file without modifying it.

Linux provides multiple commands depending on file size and use case.

---

# Why is it Important?

Every DevOps Engineer works with:

- Log files
- Configuration files
- Application outputs
- CI/CD logs
- Kubernetes manifests
- Docker logs

Efficiently reading and filtering files is a daily task.

---

# Real DevOps Use Cases

- Read application logs.
- Search error messages.
- Verify configuration files.
- Analyze deployment logs.
- Count log entries.
- Filter command output.

---

# Important Concepts

---

## Viewing File Contents

### cat

Displays the complete file at once.

```bash
cat file.txt
```

Use Case

- Small files
- Quick viewing
- Combining multiple files

---

### less

Displays one page at a time.

```bash
less file.txt
```

Useful Keys

```
Space → Next page
b → Previous page
q → Quit
```

Use Case

- Large log files
- Configuration files

---

### more

Displays one page at a time with limited navigation.

```bash
more file.txt
```

Use Case

- Reading medium-sized files

---

## Beginning and End of Files

### head

Displays the first 10 lines by default.

```bash
head file.txt
```

Specify lines

```bash
head -5 file.txt
```

Use Case

- Verify file headers
- Check configuration files

---

### tail

Displays the last 10 lines by default.

```bash
tail file.txt
```

Specify lines

```bash
tail -20 file.txt
```

Live monitoring

```bash
tail -f app.log
```

Use Case

- Monitor live application logs
- Debug production issues

---

## Searching Text Inside Files

### grep

Searches for matching text.

```bash
grep "ERROR" app.log
```

Ignore case

```bash
grep -i "error" app.log
```

Show line numbers

```bash
grep -n "ERROR" app.log
```

Use Case

- Find exceptions
- Search logs
- Locate configuration values

---

## Counting Lines, Words & Characters

### wc

Displays:

- Lines
- Words
- Characters

```bash
wc file.txt
```

Only lines

```bash
wc -l file.txt
```

Only words

```bash
wc -w file.txt
```

Only characters

```bash
wc -c file.txt
```

Use Case

- Count log entries
- Verify dataset size
- Analyze reports

---

## Pipes (`|`)

A Pipe sends the output of one command as the input to another command.

Syntax

```bash
command1 | command2
```

Examples

Search Linux

```bash
cat notes.txt | grep Linux
```

Count log entries

```bash
cat app.log | wc -l
```

Sort unique values

```bash
cat names.txt | sort | uniq
```

Use Case

- Build command pipelines
- Filter large outputs
- Process logs efficiently

---

## Commands Practiced

```bash
cat notes.txt

less notes.txt

more notes.txt

head notes.txt

tail notes.txt

tail -f app.log

grep "Docker" notes.txt

grep -i "error" app.log

grep -n "ERROR" app.log

wc notes.txt

wc -l notes.txt

wc -w notes.txt

wc -c notes.txt

cat notes.txt | grep Linux

cat app.log | wc -l

cat names.txt | sort | uniq
```

---

## Common Mistakes

- Using `cat` for very large files.
- Forgetting `tail -f` for live log monitoring.
- Ignoring case sensitivity in `grep`.
- Confusing `wc -l`, `wc -w`, and `wc -c`.
- Creating unnecessary command pipelines.

---

## Hands-on Practice

Today I learned how to view files using `cat`, `less`, and `more`, inspect the beginning and end of files with `head` and `tail`, search text using `grep`, count file statistics using `wc`, and combine commands with pipes (`|`) for efficient data processing.

---

## Real World Problems You Can Solve

### DevOps

- Analyze CI/CD logs.
- Verify deployment output.
- Search application errors.
- Monitor live logs.
- Validate configuration files.

### SRE

- Investigate production incidents.
- Search stack traces.
- Monitor application logs.
- Count error occurrences.
- Analyze service health.

### Cloud Engineer

- Read cloud VM logs.
- Debug startup scripts.
- Analyze system logs.
- Verify configuration files.
- Monitor cloud application logs.

---

## Best Practices

- Use `less` for large files.
- Use `tail -f` for real-time monitoring.
- Combine commands using pipes instead of creating temporary files.
- Use `grep` to filter only relevant data.
- Prefer `wc -l` when counting log entries.
- Learn command combinations for faster troubleshooting.

---

## Key Takeaway

Linux file viewing and text processing commands are the foundation of production troubleshooting. Mastering `cat`, `less`, `head`, `tail`, `grep`, `wc`, and pipes enables efficient log analysis, debugging, and automation in DevOps, SRE, and Cloud Engineering.

---

## Next Step

Tomorrow I will learn:

- Standard Input (stdin)
- Standard Output (stdout)
- Standard Error (stderr)
- Output Redirection (`>`)
- Append Redirection (`>>`)
- Input Redirection (`<`)
- Error Redirection (`2>`)
- Nano
- Vim
