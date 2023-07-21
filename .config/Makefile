


show_commands:
	@echo "make install"
	

install:
	@echo "Updating dependencies"
	@sudo pacman -Syuui
	@echo "Done updating......"
	@echo "Installing all packages ......"
	@sudo pacman -S nvidia nvidia-utils xorg-xinit xorg bspwm sxhkd kitty picom feh firefox arandr rofi spotify-launcher playerctl ttf-hack-nerd ttf-jetbrains-mono ttf-font-awesome \
		ly polybar zsh openssh neofetch rustup
	@mkdir ~/Downloads
	
	@git -C ~/Downloads clone https://aur.archlinux.org/paru.git:~/Downloads
	@cd ~/Downloads/paru
	@makepkg -si
	@cd ~
	@paru -S zscroll-git nvim-git
	
	@echo "Configuring now your custom dotfiles!!! ....."
	@mkdir .config
	@cd .config
	@cd ~/dotfiles/.config
	@cp bspwm ../../.config/bspwm -r
	@cp kitty ../../.config/kitty -r
	@cp picom ../../.config/kitty -r
	@cp polybar ../../.config/polybar -r
	@cp rofi ../../.config/rofi -r
	@cp sxhkd ../../.config/sxhkd -r
	@cd ..
	@cp .xinitrc ../.xinitrc
	@chmod +x .xinitrc
	@sudo systemctl enable ly.service
	@echo "Should be done really, make sure to do the arandr and save the layout in .screenlayout/display.sh"
	@echo "and add the background with feh --bg-scale ....  and then do chmod +x to it so it can be launched"
	@chsh -s /bin/zsh
	@echo "Test done"

.DEFAULT_GOAL := show_commands
