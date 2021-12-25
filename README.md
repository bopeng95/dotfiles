# dotfiles

## references
### [LSCOLORS](https://apple.stackexchange.com/questions/282185/how-do-i-get-different-colors-for-directories-etc-in-iterm2)
Order of type
```
1.   directory
2.   symbolic link
3.   socket
4.   pipe
5.   executable
6.   block special
7.   character special
8.   executable with setuid bit set
9.   executable with setgid bit set
10.  directory writable to others, with sticky bit
11.  directory writable to others, without sticky
```
Color variations
```
a    black
b    red
c    green
d    brown
e    blue
f    magenta
g    cyan
h    light grey
A    bold black, usually shows up as dark grey
B    bold red
C    bold green
D    bold brown, usually shows up as yellow
E    bold blue
F    bold magenta
G    bold cyan
H    bold light grey; looks like bright white
x    default foreground or background
```
Example
```bash
# first foreground second background
export LSCOLOR=ExcxgxdxHxxxxxHxHxFxFx
```