
# **config-files**

## *personal config files for my Arch Linux*

![desktop](screenshots/desktop-bspwm.png)

![tmux](screenshots/tmux.png)

*The files herein exist first and foremost as my backups. I've only made them public incase someone may find them useful.*  
___

- **plasma-bspwm.desktop && plasma-kwin_x11.service** *-.desktop to provide a session in which plasma uses bspwm instead of kwin and systemd service file for plasma systemd startup to still use bspwm.*  
`/usr/share/xsessions/plasma-bspwm.desktop`  
`/usr/lib/systemd/user/plasma-kwin_x11.service`  

![desktop2](screenshots/desktop2.png)

![desktop-plasma](screenshots/desktop.png)
___

### **Do not attempt to use these unless you know what you're doing!**<sup>2</sup>

- `/etc/makepkg.conf`  
*Compiles packages with -march=native, -o3 and flto=auto [Link time optimization](https://www.phoronix.com/scan.php?page=news_item&px=OpenSUSE-Tumbleweed-LTO) flags*

- `/etc/mkinitcpio.conf` && `/etc/dracut.conf.d/MiniBeast-dracut.conf`  
*For generating a minimal initramfs for a system with a specific, known and static hardware configuration. My hooks/modules will not be the same as yours.*  
See [Minimal initramfs - ArchWiki](https://wiki.archlinux.org/index.php/Minimal_initramfs)

- `/etc/hosts`  
*My hosts file blocks traffic from over 59,000 different sites known to contain or distribute adware/malware.*  

![desktop3](screenshots/desktop3.png)
