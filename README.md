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
> TIP : if your not a root user you need to use sudo

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
vim
```
then press ESC on your keyboard then type :PlugInstall and press enter <br>
> TIP : It's normal to get errors first time we open vim because plugins are not Installed yet.
> TIP : If a Plugin failed during installation press SHIFT+R to retry

***
# TODO
- [ ] docs 
- [X] better readme

