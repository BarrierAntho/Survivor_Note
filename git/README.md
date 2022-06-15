# Git


## Content
- [Historic :clock7:](#historic-clock7)
- [Sources :link:](#sources-link)


## Historic :clock7:
[Go to content](#content)
|Date _YYYY-MM-DD_|Description|
|:-|:-|
|2022-06-15|init|


## Commit management
### Configure specific text editor
`git config --global core.editor vim`  

### Configure personal commit message template
`git config --global commit.template <filepath>` 

Example:
`git config --global commit.template ~/.git_commit_tmp`  


## Basic commands
`git add <file1 file2 filex>` add file contents to the index
`git commit -m "my message"` records commit with sample message
`git commit` records commit by using commit message template
`git log` display all commit from the active commit to the first commit
`git show <SHA-1 id>` display commit information by using SHA-1 id
`git show <tag id>` display commit information by using tag id
`git checkout` change the HEAD cursor to a different commit or branch
`git stash <description>` save the actual modification into the stash area
`git pull --rebase` 
`git blame` 
`git cherry-pick <SHA-1>` copy an existing commit as a new commit into a branch
`git log <branch name>` 
`git rebase <target branch>` rebase the active branch to the target branch
`git rebase --continue` 
`git rebase --skip` 
`git rebase --abort` 


## Tag commands
## Description
Tag are used to tag a specific name to a dedicated commit and implicitly create a release

### Commands
`git tag` display all tag of the repository
`git tag <tag id>` create a tag to the active commit
`git checkout <tag id>` change the HEAD cursor to a different commit which has a specific tag id
`git tag -d <tag id>` delete a tag


## Branch commands
### Description
N/A

### Commands
`git branch <branch name>` create a branch into the local repo
`git checkout <branch name>` change the HEAD cursor to the branch
`git checkout -b <branch name>` create a branch into the local repo and change the HEAD cursor to the branch
Is equivalent to
```
git branch <branch name>
git checkout <branch name>
```

> :pushpin: Alternative commands to create and switch the branch
```
git branch <branch name>
git switch <branch name>
```
Is equivalent to
```
git switch -c <branch name>
```

---

`git push --set-upstream origin <branch name>` create the branch to the distant repo

`git branch -a` list every branch of the project (present and not present in the local repo)

`git branch -d <branch name>` delete a local branch (must be different than the active branch)

`git push origin --delete <branch name>` delete a distant branch (must be different than the active branch)


## Sources :link:
[Go to content](#content)

### Configuration
- https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration 

### Commit management
- https://gist.github.com/lisawolderiksen/a7b99d94c92c6671181611be1641c733 
- https://cbea.ms/git-commit/ 

### Udemy
- https://www.udemy.com/share/101zp23@XDbtFds5EWU4duGvTcv3eDHqJk6n4ijkAKIU-BF5y5B9V02PLbLokCv7UE_YuDv79g==/ 
