


show_commands:
	@echo "make install"
	

install:
	@echo "Updating dependencies"
	@sudo pacman -Syuu
	@echo "Done updating......"
	@echo "Installing all packages ......"
	@sudo pacman -S nvidia nvidia-utils xorg-xinit xorg bspwm sxhkd kitty picom feh firefox arandr rofi spotify-launcher playerctl ttf-hack-nerd ttf-jetbrains-mono ttf-font-awesome \
		ly polybar zsh openssh neofetch rustup ripgrep
	@rustup default stable
	@mkdir ~/Downloads
	@git -C ~/Downloads clone https://aur.archlinux.org/paru.git
	@cd ~/Downloads/paru; makepkg -si
	@paru -S zscroll-git neovim-git nvim-packer-git nvm
	@echo "Configuring now your custom dotfiles!!! ....."
	@mkdir ~/.config
	@cp bspwm ../../.config/bspwm -r
	@cp kitty ../../.config/kitty -r
	@cp picom ../../.config/kitty -r
	@cp polybar ../../.config/polybar -r
	@cp rofi ../../.config/rofi -r
	@cp sxhkd ../../.config/sxhkd -r
	@cp nvim ../../.config/nvim -r
	@cd ..
	@cp ../.xinitrc ~/.xinitrc
	@chmod +x ~/.xinitrc
	@sudo systemctl enable ly.service
	@echo "Should be done really, make sure to do the arandr and save the layout in .screenlayout/display.sh"
	@echo "and add the background with feh --bg-scale ....  and then do chmod +x to it so it can be launched"
	@chsh -s /bin/zsh
	@echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc	
	@source ~/.zshrc

#@cp ../.zshrc ~/.zshrc
#@sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#@git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
#@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#@git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions	
	@nvm install stable
	@nvm use stable
	@echo "Test done"

.DEFAULT_GOAL := show_commands
