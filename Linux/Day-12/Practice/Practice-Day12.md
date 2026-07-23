# Day 12 - Practice.md

# Linux Environment Variables & Shell Configuration Practice

## Objective

Practice Environment Variables, PATH, export, .bashrc, .profile and .bash_profile.

---

# Task 1 - View Environment Variables

### Command

```bash
printenv
```

### Expected

Display all environment variables.

---

# Task 2 - View Current User

```bash
echo $USER
```

---

# Task 3 - View Home Directory

```bash
echo $HOME
```

---

# Task 4 - View Current Shell

```bash
echo $SHELL
```

---

# Task 5 - View Current Working Directory

```bash
echo $PWD
```

---

# Task 6 - View PATH Variable

```bash
echo $PATH
```

Observe how multiple directories are separated by `:`.

---

# Task 7 - Create a Local Variable

```bash
course="DevOps"
echo $course
```

---

# Task 8 - Create an Environment Variable

```bash
export COMPANY="OpenAI"
echo $COMPANY
```

Open a new terminal and verify whether it exists.

---

# Task 9 - Remove Variable

```bash
unset COMPANY
```

Verify

```bash
echo $COMPANY
```

---

# Task 10 - List All Environment Variables

```bash
env
```

---

# Task 11 - Open .bashrc

```bash
nano ~/.bashrc
```

Add

```bash
export MY_NAME="Hardik"
```

Save and exit.

---

# Task 12 - Reload .bashrc

```bash
source ~/.bashrc
```

Verify

```bash
echo $MY_NAME
```

---

# Task 13 - Create an Alias

Open `.bashrc`

```bash
nano ~/.bashrc
```

Add

```bash
alias gs="git status"
```

Reload

```bash
source ~/.bashrc
```

Test

```bash
gs
```

---

# Task 14 - Check .profile

```bash
cat ~/.profile
```

---

# Task 15 - Check .bash_profile

```bash
cat ~/.bash_profile
```

If it doesn't exist

```bash
ls -la ~
```

---

# Task 16 - Check PATH Locations

```bash
which ls
which git
which python3
```

Compare the output with `$PATH`.

---

# Task 17 - Print Multiple Variables

```bash
echo $USER
echo $HOME
echo $PWD
echo $SHELL
echo $HOSTNAME
```

---

# Task 18 - Create Multiple Variables

```bash
name="Hardik"
city="Kanpur"
role="DevOps"
```

Print

```bash
echo $name
echo $city
echo $role
```

---

# Task 19 - Remove Variables

```bash
unset name
unset city
unset role
```

Verify

```bash
echo $name
echo $city
echo $role
```

---

# Task 20 - Challenge Practice

✔ Create your own variable

✔ Export it

✔ Add it permanently in `.bashrc`

✔ Reload `.bashrc`

✔ Verify it

✔ Create one alias

✔ Test the alias

---

# Self-Checklist

- [ ] Viewed environment variables
- [ ] Checked PATH
- [ ] Created local variable
- [ ] Created environment variable
- [ ] Used export
- [ ] Used unset
- [ ] Edited .bashrc
- [ ] Reloaded .bashrc
- [ ] Created alias
- [ ] Verified alias
- [ ] Checked .profile
- [ ] Checked .bash_profile
- [ ] Compared PATH with which command

---

# Outcome

After completing this practice, you should be able to:

- Understand Local vs Environment Variables
- Use `export` effectively
- Read and modify `PATH`
- Configure `.bashrc`
- Reload shell configurations
- Create custom aliases
- Explain shell configuration files in interviews
