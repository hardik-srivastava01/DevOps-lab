# Linux Day 4 Practice Log

## Objective

Practice Linux file permissions, ownership, user information, and file metadata using essential Linux commands.

---

## Commands Executed

```bash
ls -l
chmod 644 file1.txt
chmod 755 file1.txt
chmod u+x file1.txt
chown --help
groups
id
whoami
stat file1.txt
```

---

## Result

- Displayed detailed file permissions using `ls -l`.
- Changed file permissions using `chmod` with numeric and symbolic methods.
- Learned the syntax and purpose of `chown`.
- Displayed the groups of the current user using `groups`.
- Viewed User ID (UID), Group ID (GID), and group memberships using `id`.
- Identified the currently logged-in user using `whoami`.
- Displayed detailed file metadata using `stat`.

---

## Skills Practiced

- Viewing file permissions (`ls -l`)
- Changing permissions (`chmod`)
- Understanding file ownership (`chown`)
- Checking user groups (`groups`)
- Viewing user and group information (`id`)
- Identifying current user (`whoami`)
- Inspecting file metadata (`stat`)

---

## Issues Faced

Initially, I was confused about the difference between `chmod` and `chown`.

- `chmod` is used to change file permissions.
- `chown` is used to change the owner and group of a file.

After practicing the commands, I understood the difference between permissions and ownership.

---

## Learning Outcome

Today I learned how Linux manages file permissions and ownership. I practiced changing permissions using `chmod`, understood the purpose of `chown`, checked user and group information, and explored detailed file metadata using `stat`. These concepts are essential for Linux system administration and DevOps.

---

## Time Taken

42 minutes

---

## Status

✅ Completed Successfully
