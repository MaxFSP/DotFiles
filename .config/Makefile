


show_commands:
	@echo "make install"
	

install:
	@echo "Updating dependencies"
	@sudo pacman -Syuui
	@echo "Done updating......"
	@echo "Installing all packages ......"
	@sudo pacman -S nvidia nvidia-utils xorg-xinit xorg bspwm sxhkd kitty picom feh firefox arandr dmenu spotify-launcher playerctl ttf-hack-nerd ttf-jetbrains-mono ttf-font-awesome \
		ly polybar zsh openssh neofetch rustup git
	@mkdir ~/Downloads
	
	@git -C ~/Downloads clone https://aur.archlinux.org/paru.git:~/Downloads
	@cd ~/Downloads/paru
	@makepkg -si
	@cd ~
	@paru -S zscroll-git nvim-git
	
	@echo "Configuring now your custom dotfiles!!! ....."
	@mkdir .config
	@cd .config
	@git clone https:://github.com/MaxFSP/dotfiles.git
	@cd dotfiles
	@cp 
	
.DEFAULT_GOAL := show_commands
