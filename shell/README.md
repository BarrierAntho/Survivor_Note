# SHELL

## Content
- [Historic :clock7:](#historic-clock7)
- [Basic](#basic)
- [Sources :link:](#sources-link)

## Historic :clock7:
[Go to content](#content)
|Date _YYYY-MM-DD_|Description|
|:-|:-|
|2022-09-10|Init|

## Basic
[Go to content](#content)

### SSH
Generate SSH key
```
ssh-keygen
```

### Repeat history command
Repeat the last command
```
!!
```
___Example:___
```
mv file1 file2
Error: Permission denied
sudo !!
sudo mv file1 file2
```

Repeat the latest command starting by a keyword
```
!<string>
```
___Example:___
```
mv file1 file2
clear
ls
!m
mv file1 file2
```

Repeat the second word from the last command
```
!^
```
___Example:___
```
mv file1 file2
touch !^
touch file1
```

Repeat the last word from the last command
```
!$
```
___Example:___
```
mv file1 file2
cat !$
```

Repeat the N word from the last command
```
!!:N
```
> N represent the index of the word and start at 0 for the first word

___Example:___
```
mv file1 file2 file3 dir1/
touch !!:2
```

Repeat the last command by replacing character
```
^string1^string2^
```
> It replace the string1 by the string2 but only for one occurence. To replace every occurence ":&" must be used

___Example:___
```
sido mv file1 file2 file3
Error: Command not found
^i^u^
sudo mv file1 file2 file3
^file
sudo mv 1 file2 file3
^file^^:&
```

Repeat the N word from the current command
```
!#:N
```
> N represent the index of the word and start at 0 for the first word

___Example:___
```
mv file1 file2 file3 dir1/; touch !#:2
```

### File and directories
Copy a file
```
cp file{,.txt}
```
___Example:___
```
ls
file
cp file{,.txt}
ls
file.txt
```

### Find function symbol in binary file
```
nm -Dgu
```

## Sources :link:
[Go to content](#content)

- :book: "Command line Kung Fu" by Jason Cannon
