<p align="center" ><img width="300" height="200" src="images/logo.png" /></div>

# OmarKh-vim
Hello , this is my personal vim setup , It will be updated frequently based on my needs.
I will make sure to document every Plugin I add with example of usage case.
***
# Installation
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
> HINT : make sure that pip refer to python3 else try pip3 instead

> TIP : if your not a root user you need to use sudo

> TIP : to migrate vim to neovim check neovim help page

> TIP : make sure you use last neovim for better experience

### Install OmarKh-vim
The Installation is aimed only for Linux users. <br>
The Installer will backup your old .vimrc file into .vimrc.back
```bash
git clone "https://github.com/OmarElKhatibCS/OmarKh-vim.git" OmarKh-vim
cd OmarKh-vim
sh install.sh
```
>TIP : to auto remove Installation files clone it into /tmp folder , 
> or you can run ``` cd .. && rm -rf OmarKh-vim ```

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
> TIP : It's normal if you used Method 2 to get errors first time we open vim because plugins are not Installed yet.

> TIP : If a Plugin failed during installation press SHIFT+R to retry

***

# Themes
this vim configuation came with a default theme <br>
But I have couple of other themes installed <br>
remove the following lines from .vimrc and replace them with what provided in docs of each theme
```vim
" Theme section
        syntax          enable
        colorscheme     murphy
```
> TIP it's better to keep the comments 

externally installed themes :

| Name | Docs link |
| --- | --- |
| Dracula | [github](https://github.com/dracula/dracula-theme) |
| Solarized | [github](https://github.com/altercation/vim-colors-solarized) |

***

# Docs

## Keys
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
| ALT+K | move line up | normal |
| ALT+J | move line down | normal |
| Ctrl-d | move screen down without moving cursor | normal |
| cw | change word | normal |
| ci`key` | change inside key example `ci"` `ci{` | normal |
| Ctrl-x Ctrl-o | trigger auto completion | insert |
| % | go to opposite pair of `(` in `(sd)` | normal |

more coming very very soon...

## Go
first we need go installed , go to [website](https://golang.org/doc/install) and follow instructions <br>
after successfully setup go , open vim and press ESC and type :GoInsallBinaries <br>
watch this [video](https://www.youtube.com/watch?v=7BqJ8dzygtU&t=2885s) for more informations to get most out of vim-go :) <br>
more about go plugin with maps soon...
***
# Credits
This project is heavly depended on [awesome vimrc](https://github.com/amix/vimrc/) by [amix](https://github.com/amix/)
# TODO
- [ ] docs 
- [X] better readme

