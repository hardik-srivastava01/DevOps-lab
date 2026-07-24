# Linux Day 5 - File Viewing & Text Processing Basics

## Objective

Learn how to view file contents, search text, count data, and process text files using Linux commands.

---

## What is it?

File Viewing & Text Processing refers to the Linux tools used to read, search, filter, count, and organize text inside files. These commands help users work efficiently with configuration files and log files directly from the terminal.

---

## Why is it important?

In DevOps, servers generate huge log files every day. Instead of opening them in a text editor, engineers use Linux commands to quickly find errors, monitor logs, and troubleshoot production issues.

**Real DevOps Use Cases**

- View application logs.
- Search for error messages.
- Count log entries.
- Monitor server logs.
- Remove duplicate records.
- Filter useful information using pipes.

---

## Commands Learned

### `cat`
Displays the complete contents of a file.

```bash
cat filename
```

Example

```bash
cat notes.txt
```

---

### `less`
Displays large files one page at a time.

```bash
less filename
```

Example

```bash
less server.log
```

---

### `more`
Shows file contents page by page.

```bash
more filename
```

Example

```bash
more notes.txt
```

---

### `head`
Displays the first 10 lines of a file.

```bash
head filename
```

Example

```bash
head server.log
```

---

### `tail`
Displays the last 10 lines of a file.

```bash
tail filename
```

Example

```bash
tail server.log
```

---

### `grep`
Searches for specific text inside a file.

```bash
grep "text" filename
```

Example

```bash
grep "ERROR" server.log
```

---

### `wc`
Counts lines, words, and characters.

```bash
wc filename
```

Example

```bash
wc notes.txt
```

---

### `sort`
Sorts the contents of a file.

```bash
sort filename
```

Example

```bash
sort names.txt
```

---

### `uniq`
Removes consecutive duplicate lines.

```bash
uniq filename
```

Example

```bash
uniq names.txt
```

---

### `| (Pipe)`
Passes the output of one command as input to another.

```bash
command1 | command2
```

Example

```bash
cat server.log | grep ERROR
```

---

## Commands Practiced

- cat
- less
- more
- head
- tail
- grep
- wc
- sort
- uniq
- |

---

## Common Mistakes

- Using `cat` for very large files instead of `less`.
- Forgetting that `uniq` removes only consecutive duplicate lines.
- Searching with `grep` without matching the correct case.
- Confusing `head` and `tail`.
- Not using pipes (`|`) to combine commands effectively.

---

## Hands-on Practice

Today I practiced viewing file contents using `cat`, `less`, `more`, `head`, and `tail`. I searched text using `grep`, counted lines using `wc`, sorted data using `sort`, removed duplicate lines using `uniq`, and combined commands using pipes (`|`). These exercises helped me understand how Linux is used for log analysis and troubleshooting.

---

## Key Takeaway

Linux text-processing commands are essential for DevOps because they make it easy to inspect files, analyze logs, and troubleshoot servers directly from the terminal.

---

## Next Step

Tomorrow I will learn:

 Linux File Editing & Redirection
- Standard Input (stdin)
- Standard Output (stdout)
- Standard Error (stderr)
- Output Redirection (>)
- Append Redirection (>>)
- Input Redirection (<)
- Error Redirection (2>)
 Linux Text Editors
- nano
- vim (Introduction)
