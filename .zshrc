#####################
## MINIBEAST ZSHRC ##
#####################

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jason/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=3

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo zsh-vi-mode colorize command-not-found zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Autorun

# User configuration
export OPENCV_LOG_LEVEL=ERROR
export KEYTIMEOUT=1
export BROWSER='vivaldi-stable'
export ZSH_COLORIZE_STYLE="colorful"

# XDG directories
export XDG_CONFIG_HOME='/home/jason/.config/'
export XDG_CACHE_HOME='/home/jason/.cache'
export XDG_DATA_HOME='/home/jason/.local/share'
export XDG_RUNTIME_DIR='/run/user/1000'

# Preferred editor for local and remote sessions
export EDITOR='nvim'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Compilation flags
export CFLAGS="-march=native -O2 -pipe -fno-plt -flto=auto -ftree-vectorize -fuse-ld=gold"
export CPPFLAGS="-D_FORTIFY_SOURCE=2"
export CXXFLAGS="-march=native -O2 -pipe -fno-plt -flto=auto -ftree-vectorize -fuse-ld=gold"
export LDFLAGS="-Wl,-O1,--sort-common,--as-needed,-z,relro,-z,now"
export MAKEFLAGS="-j$(nproc)"

# Aliases

# cmd replacement
alias cat="bat"
alias ls="ls --color --group-directories-first"
alias vim="nvim"

# administration
# system
alias scstatus="sudo systemctl status"
alias scstart="sudo systemctl start"
alias screstart="sudo systemctl restart"
alias scenable="sudo systemctl enable"
alias scstop="sudo systemctl stop"
alias scdisable="sudo systemctl disable"
alias scmask="sudo systemctl mask"
# user
alias scustatus="systemctl --user status"
alias scustart="systemctl --user start"
alias scurestart="systemctl --user restart"
alias scuenable="systemctl --user enable"
alias scustop="systemctl --user stop"
alias scudisable="systemctl --user disable"
alias scumask="systemctl --user mask"

# boot commands
alias uefi="systemctl reboot --firmware-setup"
alias windows="sudo efibootmgr -n 0 && reboot"
alias grub="sudo efibootmgr -n 1 && reboot"

# package compilation
alias packages="cd /opt/sources/packages"
alias community="cd /opt/sources/community"

# package management
alias install="yay -S"
alias download="yay -Sw"
alias ifd="yay -U"
alias search="yay -Ss"
alias info="yay -Si "
alias info_all="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias update="yay -Syu"
alias remove="yay -Rsu"
alias query="yay -Q"
alias files="yay -Ql"      # either belonging to a specific package or the whole system
alias cache="yay -Sc"
alias pkglist="sudo pacman -Qqe > /home/jason/.build/git/config-files/pkglist.txt"

# kernel
alias kernel_patch="patch -p1 < patches/*"
alias kernel_config="sudo make oldconfig"
alias kernel="/usr/src/linux-5.11.11-MiniBeast"
alias kernel_menu="sudo make menuconfig"
alias kernel_make="sudo make clean && sudo make -j8"
alias kernel_install="sudo cp -v /usr/src/linux-5.11.11-MiniBeast/arch/x86_64/boot/bzImage /boot/vmlinuz-linux-5.11.11-MiniBeast && sudo cp -v /boot/vmlinuz-linux-5.11.11-MiniBeast /boot/efi/EFI/linux/vmlinuz-linux-5.11.11-MiniBeast && sudo make modules_install && sudo mkinitcpio -p linux-5.11.11-MiniBeast && sudo cp -v /boot/initramfs-linux-5.11.11-MiniBeast.img /boot/efi/EFI/initramfs-linux-5.11.11-MiniBeast.img && sudo dkms remove --no-depmod -m nvidia -v 460.67 -k 5.11.11-MiniBeast ; sudo dkms install --no-depmod -m nvidia -v 460.67 -k 5.11.11-MiniBeast && sudo depmod 5.11.11-MiniBeast"
alias modules_install="sudo make modules_install"
alias init_gen="sudo mkinitcpio -p linux-5.11.11-MiniBeast && sudo cp -v /boot/initramfs-linux-5.11.11-MiniBeast.img /boot/efi/EFI/initramfs-linux-5.11.11-MiniBeast.img"
alias microcode="sudo cp -v /boot/intel-ucode.img /boot/efi/EFI/"

# etc
alias scan="sudo lynis audit system ; sudo rkhunter --propupd && sudo rkhunter --check -sk ; sudo rkhunter --config-check ; sudo arch-audit"
alias matrix="unimatrix"
alias nf="neofetch"
alias cpu="sudo i7z"
alias zshrc="nvim ~/.zshrc"
alias sa="systemd-analyze"
alias gitdir="/home/jason/.build/git"
alias mntsec="ecryptfs-mount-private"
alias umntsec="ecryptfs-umount-private"

# information gathering
alias phone="cd /home/jason/Programs/ && ./phoneinfoga serve -p 8080"
alias username="python ~/Programs/sherlock/sherlock/sherlock.py"
alias website="nikto -host"

# virtual machines
alias macos='cd ~/qemu/MacOS_Catalina/ && ./basic.sh ; cd ~/'
alias android="genymotion"
alias virtenv="sudo systemctl start libvirtd && sudo systemctl start ebtables"
alias kvirtenv="sudo systemctl stop ebtables && sudo systemctl stop libvirtd"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
