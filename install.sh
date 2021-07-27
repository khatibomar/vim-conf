cat << EOF
 __
/  \ _  _  _|_/|_  __ \  /||\/|
\__/|||(_|| | \| )     \/ ||  |

EOF

if [ ! -d $HOME/.config/nvim_backup ]; then
	mkdir  $HOME/.config/nvim_backup
fi

echo "[+] INSTALLATION START [+]"
echo "check for BACKUP : "
if [ -f "$HOME/.vimrc" ]; then
	echo "vimrc will be backup to .vimrc.bak"
	mv -f $HOME/.vimrc $HOME/.vimrc.bak
fi

if [ -f "$HOME/.config/nvim/init.vim" ]; then
	echo "nvim will be backup to nvim_backup"
	mv -f $HOME/.config/nvim/init.vim $HOME/.config/nvim_backup/init.vim
fi

if [ -f "$HOME/.config/nvim/coc-settings.json" ]; then
	echo "backuping coc-settings..."
	mv -f $HOME/.config/nvim/coc-settings.json $HOME/.config/nvim_backup
fi

cp vimrc $HOME/.vimrc
cp init.vim $HOME/.config/nvim/init.vim
cp init.vim $HOME/.config/nvim/coc-settings.json
echo "[+] INSTALLATION DONE [+]"
