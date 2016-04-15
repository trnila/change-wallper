install:
	cp -v change-wallper.sh ~/.local/bin/
	cp -v change-wallper.* ~/.config/systemd/user
	
	systemctl --user enable --now change-wallper.timer
	systemctl --user start change-wallper.service
