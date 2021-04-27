<p align="center" ><img width="300" height="200" src="images/logo.png" /></div>

# OmarKh-vim
Hello , this is my personal vim setup , It will be updated frequently based on my needs.
I will make sure to document every Plugin I add with example of usage case.
***
# Installation 📥
### neovim , vim , gvim
For sure we need vim or neovim installed <br>
in order to enable clipboard copy-pasting we need vim-gtk or vim-gtk3 <br> <br>
*Ubuntu*
```bash
apt-get install vim vim-gtk3 neovim 
```
*Arch Linux*
```bash
pacman -S vim vim-gtk3 neovim 
```
Also if you don't have python install it then install python support inside vim because some plugins need it <br>
```bash
pip install neovim vim
```
💡 : make sure that pip refer to python3 else try pip3 instead

💡 : if your not a root user you need to use sudo

💡 : to migrate vim to neovim check neovim help page

💡 : make sure you use last neovim for better experience

### Install OmarKh-vim
The Installation is aimed only for Linux users. <br>
The Installer will backup your old .vimrc file into .vimrc.back
```bash
git clone "https://github.com/OmarElKhatibCS/OmarKh-vim.git" OmarKh-vim
cd OmarKh-vim
sh install.sh
```
💡 : to auto remove Installation files clone it into /tmp folder , 
 or you can run ``` cd .. && rm -rf OmarKh-vim ```

to have icons enabled you need a font such as NerdFont or FiraCode check this [link](https://github.com/ryanoasis/vim-devicons#installation)  <br>
### Install Plugin Manager
Next we need to install the plug-vim
for Vim 8.xx :
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
for neovim :
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
-- [Source](https://github.com/junegunn/vim-plug)

### Install Plugins
After the installation of the Plugin Manager we need to install Plugins
```bash
vim +PlugInstall
```
or Method 2 : you can launch vim then press ESC on your keyboard then type :PlugInstall and press enter <br>
💡 : It's normal if you used Method 2 to get errors first time we open vim because plugins are not Installed yet.

💡 : If a Plugin failed during installation press SHIFT+R to retry

***

[GoTests-vim](https://github.com/buoto/gotests-vim) Plugin need [GoTests](https://github.com/cweill/gotests) binary , Install it using
```bash
go get github.com/cweill/gotests/...
```

# Themes
this vim configuation came with a default theme <br>
But I have couple of other themes installed <br>
remove the following lines from .vimrc and replace them with what provided in docs of each theme
```vim
" Theme section
        syntax          enable
        colorscheme     pixelmuerto
```
💡 it's better to keep the comments 

externally installed themes :

| Name | Docs link |
| --- | --- |
| Dracula | [github](https://github.com/dracula/dracula-theme) |
| Solarized | [github](https://github.com/altercation/vim-colors-solarized) |
| pixelmuerto | [github](https://github.com/pixelmuerto/vim-pixelmuerto) |

***

# Docs
## usefull commands
|TIP|usage|
|---| --- |
| :tabn | move to next tab |
| :tabp | move to previous tab |

## Keys ⌨️
common used vim keys :
| key | job | mode |
| --- | --- | --- |
| k | move cursor up | normal |
| j | move cursor down | normal |
| h | move cursor left | normal |
| l | move cursor right | normal |
| w | move cursor by word forward | normal |
| b | move cursor by word backward | normal |
| u | undo changes | normal |
| > or < | (un)tab a block of code | visual block |
| Ctrl-r | redo changes | normal |
| x | delete letter on cursor | normal |
| ^ or 0 | move cursor to beggining of line | normal |
| $ | move cursor to end of line | normal |
| gg | move cursor to first line | normal |
| G | move cursor to last line | normal |
| H | move cursor to top of the screen | normal |
| M | move cursor to middle of screen | normal |
| L | move cursor to end of the screen | normal |
| zt | put current line on top of screen | normal |
| zz | put current line on center of screen | normal |
| zb | put current line on center of screen | normal |
| ,d | duplicate current line | normal |
| Ctrl-y | move screen up without moving cursor | normal |
| Ctrl-e | move screen down without moving cursor | normal |
| ALT-K | move line up | normal |
| ALT-J | move line down | normal |
| Ctrl-d | delete current line | normal and insert |
| cw | change word | normal |
| ci`key` | change inside key example `ci"` `ci{` | normal |
| Ctrl-x Ctrl-o | trigger auto completion | insert |
| % | go to opposite pair of `(` in `(sd)` | normal |
| ,nt | toggle nerdtree | normal |
| CTRL-(h/j/k/l)| move between splits | normal |
| CTRL-p | open ctrlp plugin for fuzzy finding | normal |
| CTRL-p v | open in vsplit of the file the cursor on | normal |
| m`key` | ie: mg will save current cursor place to g| normal |
| \``key` | ie: \`g will reutnr to saved cursor place in g| normal |
| t | open file that cursor is on in new tab | nerdtree |
| ,r | will rename all the variables into the new name (good for refactoring) | normal |

**HTML Keys** ⌨️
| key | job | mode |
| --- | --- | --- |
| cit | change what is between the tags | normal |
| yit | copy what is between the tags | normal |
| dit | delete what is between the tags | normal |
| vit | visual select what is between the tags | normal |

more coming very very soon...
## Coc
to read more about coc please go [here](https://github.com/neoclide/coc.nvim) <br>
basically the configuration came with coc release branch , you can use the master branch insted and build <br>
some coc plugins need newer coc versions so to update coc press `ESC` then type `:PlugUpdate` <br>
this will update all your plugins including coc <br>
then to install coc autocompletion you need to install it's plugin , I mainly install js,ts,css support <br>
so to do so press `ESC` then type `:CocInstall coc-tsserver coc-html coc-html` this will Install support for all what we mention above.
## Go
first we need go installed , go to [website](https://golang.org/doc/install) and follow instructions <br>
after successfully setup go , open vim and press ESC and type :GoInsallBinaries <br>
watch this [video](https://www.youtube.com/watch?v=7BqJ8dzygtU&t=2885s) for more informations to get most out of vim-go :) <br>
more about go plugin with maps soon...
**Go Keys** ⌨️
| key | job | mode |
| --- | --- | --- |
| gd | go to definition that cursor on | normal |
| gy | go to type definition that cursor on | normal |
| gi | go to implementation that cursor on | normal |
| gy | go to type definition that cursor on | normal |
| ctrl+o | go back from any go to to code | normal |
| ,t | Run all the tests in the current file | normal |
| ,tt | Run the test in the current function | normal |
| ,c | toggle coverage profile in current file | normal |
| ,ci | show what function head of function that cursor on | normal |
| ,cii | show type interface , methods and fields of type that cursor on | normal |
| ,cc | show where function that cursor on is called | normal |
| ,cr | show all the reference type/function that cursor on in codebase | normal |
| ,gt | generate test boilorplate for function that cursor on in codebase | normal |
| ,gat | generate test boilorplate for all functions in current buffer| normal |


💡 Some of them are not go specific but COC specific , so they may run on other languages also

***
# Credits 💳
This project is heavly depended on [awesome vimrc](https://github.com/amix/vimrc/) by [amix](https://github.com/amix/)
# TODO 📝
- [ ] docs 
- [X] better readme

