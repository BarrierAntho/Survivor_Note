# Git


## Content
- [Historic :clock7:](#historic-clock7)
- [Sources :link:](#sources-link)


## Historic :clock7:
[Go to content](#content)
|Date _YYYY-MM-DD_|Description|
|:-|:-|
|2022-07-18|init|


## Window Management
Split vertically: `CTRL + w` followed by the letter `v`  
Split horizontally: `CTRL + w` followed by the letter `s`  
Move from top to bottom: `CTRL + w` followed by the letter `j`  
Move from bottom to top: `CTRL + w` followed by the letter `k`  
Move from bottom to top: `CTRL + w` followed by the letter `k`  
Move from left to right: `CTRL + w` followed by the letter `h`  
Increase width of the active selection: `CTRL + w` followed by the letter `>` or `x>` where x represents a digit
Decrease width of the active selection: `CTRL + w` followed by the letter `<` or `x<` where x represents a digit
Close the active selection: `CTRL + w` followed by the letter `q`  

## vimrc
Interpreet .tpp file as .cpp file
```
au BufNewFile,BufRead *.tpp set filetype=cpp
```

## useful commands
Jump to tags
```
CTRL + ]
```
Go back
```
CTRL + O
```
Move to the end of
```
[#
[{
[[
[(
```

## tags
Chapter 29.1 from vimtutor
Generate tags file in a work directory
```
ctags -Ra .
```

## 

## Sources :link:
[Go to content](#content)

### Window management
- https://www.tecmint.com/split-vim-screen/

### NeoVim COnfiguration
- https://youtu.be/w7i4amO_zaE
