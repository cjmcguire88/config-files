ls /boot/efi/EFI/Linux/ | awk -F "-" '{print $2}.{print $3}'
#1629690284
ls /boot/efi/EFI/Linux/ | awk -F "-" '{print $2-}{print $3}'
#1629690289
ls /boot/efi/EFI/Linux/ | awk -F "-" '{print $2}{print $3}'
#1629690303
ls /boot/efi/EFI/Linux/ | awk -F "-" '{print $2$3}'
#1629690356
ls /boot/efi/EFI/Linux/ | awk -F "-" '{print $2-4}'
#1629690368
ls /boot/efi/EFI/Linux/ | awk -F "-" '{print $2,4}'
#1629690381
ls /boot/efi/EFI/Linux/ | awk -F "-" '{print $2,$4}'
#1629690393
ls /boot/efi/EFI/Linux/ | awk -F "-" '{print $2,$3,$4}'
#1629690742
ls /boot/efi/EFI/Linux/ | awk -F "-" '{print $2,$3,$4}' | tr ' ' '-'
#1629730412
ls vmlinuz /boot
#1629730439
ls /boot/vmlinuz*
#1629730939
sed -i 's/^[^|]*|//' $(ls /boot)
#1629734484
kernel
#1629685574
zsh
#1630121964
printf '%s\n' "${$(ls /boot/efi/EFI/linux)//vmlinuz}"
#1630121987
printf '%s\n' "${$(ls /boot/efi/EFI/linux)//'vmlinuz-'}"
#1630122000
printf '%s\n' "${ $(ls /boot/efi/EFI/linux)//'vmlinuz-'}"
#1630122017
printf '%s\n' "${$(ls /boot/efi/EFI/linux) //'vmlinuz-'}"
#1630122080
printf '%s\n' "${$(ls /boot/efi/EFI/linux)//"vmlinuz-"}"
#1630122241
printf '%s\n' "${$(/boot/efi/EFI/linux)//vmlinuz-}"
#1630122370
printf '%s\n' "${(ls /boot/efi/EFI/linux)//vmlinuz-}"
#1630122380
printf '%s\n' "${ls /boot/efi/EFI/linux//vmlinuz-}"
#1630122486
printf '%s\n' "$($(ls /boot/efi/EFI/linux)//vmlinuz)"
#1630122526
printf '%s\n' "$(ls /boot/efi/EFI/linux)//vmlinuz-"
#1630122557
printf '%s\n' ${(ls /boot/efi/EFI/linux)//vmlinuz-}
#1630122575
printf '%s\n' ${(ls /boot/efi/EFI/linux) // vmlinuz-}
#1630122591
printf '%s\n' ${$(ls /boot/efi/EFI/linux) // vmlinuz-}
#1630122599
printf '%s\n' ${$(ls /boot/efi/EFI/linux)//vmlinuz-}
#1630122618
printf '%s\n' "${$(ls /boot/efi/EFI/linux)//vmlinuz-}"
#1630123581
for
#1630123712
for file in /boot/efi/EFI/Linux/; do printf '%s\n' "${file//vmlinuz}"
#1630123743
vim function
#1630122121
zsh
#1630123632
for file in /boot/efi/EFI/Linux/; do
printf '%s\n' "${file//vmlinuz}"
#1630123785
zsh
#1630290090
printf '%s\n' "${$(ls /boot | grep vmlinuz)//vmlinuz-}" | grep linux
#1630290090
printf '%s\n' "${$(ls /boot | grep vmlinuz)//vmlinuz-}" | grep linux
#1630290136
ls boot
#1630290141
ls /boot
#1630290177
ls /boot | grep linux
#1630290187
ls /boot | grep vmlinuz
#1630290210
ls /boot | grep vmlinuz-linux
#1630296705
help [[
#1630296766
[[ -f /boot/*5.13.13* ]]
#1630296779
[[ -f /boot/*5.13.13* ]] && echo "yay"
#1630296792
[[ -f /boot/vmlinuz ]] && echo "yay"
#1630296813
[[ -f /boot/'*5.13.13*' ]] && echo "yay"
#1630296945
[[ -f /boot/*"5.13.13"* ]] && echo "yay"
#1630297390
[[ -a /boot/*"5.13.13"* ]] && echo "yay"
#1630297418
[[ -a /boot/vmlinuz ]] && echo "yay"
#1630297487
[[ -n /boot/*"5.13.13"* ]] && echo "yay"
#1630297508
[[ -n /boot/*"5.13.9"* ]] && echo "yay"
#1630297526
[[ -n /boot/*"5.13.vv"* ]] && echo "yay"
#1630339743
sudo ./kernel-testing -c 5.13.13
#1630592582
cd
#1630592587
zsh
#1630593097
nf
#1630593104
zsh
#1630633228
unitmatrix
#1630633233
unimatrix
#1630633301
zsh
#1630642823
cat /etc/passwd | awk -F ":" '{print $1}'
#1630642858
cat /etc/passwd
#1630642916
ls -a /home
#1630642926
ls -a /home/jason.homedir/
#1630642947
ls -a /home/jason
#1630642956
ls .snapshots/
#1630644388
ls -CF
#1630644405
ls -alF
#1630644418
ls -A
#1630644459
ls -alF --icons
#1630644475
ls --help
#1630642973
zsh
#1630708808
unimatrix
#1630717282
cd 
#1630717287
cd /
#1630717288
l
#1630717294
ll
#1630717299
la
#1630736068
dmesg | grep x2apic
#1630736091
dmesg | grep apic
#1630736332
dmesg | nms
#1630736164
zsh
#1630737039
dmesg | grep apic
#1630740037
dmesg | grep APIC
#1630740055
zsh
#1630766742
neofetch
#1630766806
zsh
#1630911240
dmesg
#1630911570
l
#1630911788
unitmatrix
#1630911794
unimatrix
#1630911272
zsh
#1630911574
zsh
#1630912415
cd "themes"
#1630912576
l
#1630912588
red.json
#1630912681
cd "themes"
#1630912865
zsh
#1631315145
zsh
#1631320820
ls .build/sources/packages/
#1631320847
ls .build/sources/{packages,community}
#1631320859
ls .build/sources/{packages,community} >> pkg.txt
#1631320866
vim pkg.txt 
#1631320910
nvim pkg.txt 
#1631331124
shopt expand_aliases
#1631406341
ls -l
#1631406495
cat /proc/sys/kernel/watchdog
#1631406520
zsh
#1631663734
ls /etc/mkinitcpio.d/linux-5.14.3-MiniBeast.preset | awk -F "/" '{print $3}'
#1631663740
ls /etc/mkinitcpio.d/linux-5.14.3-MiniBeast.preset | awk -F "/" '{print $4}'
#1631663986
ls /etc/mkinitcpio.d/linux-5.14.3-MiniBeast.preset
#1631670948
$EDITOR /run/user/1000 coc-nvim-19348.log
#1631844008
ls -a
#1631844040
cat .config/zsh/zsh_history | grep nmcli
#1631844324
sudo nmap -sn 192.168.1.0/24
#1631844519
sudo nmap -sn 10.88.90.1/24
#1631844555
sudo nmap -A 10.88.90.1/24
#1631845211
zsh
#1632274081
dmesg
#1632274129
cd /etc/
#1632274130
l
#1632274148
cd audit/
#1632274170
sudoedit auditd.conf 
#1632274245
ls plugins.d/
#1632274255
cd plugins.d/
#1632411303
sudo systemctl start sddm.service 
#1632412699
systemd-analyze
#1632413224
vim .bashrc 
#1632412846
zsh
#1632413479
uninstall_oh_my_bash
#1632413501
vim .bashrc
#1632413518
ls -a
#1632413542
zsh
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
vim .bashrc 
zsh
cd /
cd
cd .config/
cd sxhkd/
cd
zsh
#1632412731
startx
#1632413402
zsh
#1632412872
zsh
cd /
cd
cd .config/
cd
nvim .xinitrc 
startx
startx
#1632419248
tmux2
#1632419264
cd .local/bin/
#1632419289
ls -p
#1632419385
tmux2
#1632421637
cd
#1632421642
showconsolefont 
#1632421710
setfont ter-p24n
#1632421723
setfont ter-p14n
#1632421734
setfont ter-p18n
#1632421740
setfont ter-p16n
#1632421750
showconsolefont 
#1632422421
pwd
#1632423055
dmesg
#1632423362
bashtop
#1632423402
nvtop
#1632423457
sudo kernel
#1632423475
sudo kernel -h
#1632423481
sudo kernel
#1632423506
compile xinit
#1632423516
yay
#1632423759
compile btrfs-progs
#1632424723
ls /usr/share/kbd/consolefonts/
#1632424745
setfont ter-116n
#1632424757
setfont ter-216n
#1632424765
setfont ter-218n
#1632424773
setfont ter-v18n
#1632424809
setfont lat0-16
#1632424827
setfont lat1-16
#1632424836
setfont lat2-16
#1632424846
setfont lat3-16
#1632424865
setfont lat4-16
#1632424887
setfont lat9-16
#1632424925
setfont iso01.16
#1632424934
setfont iso02.16
#1632424958
setfont drdos8x16
#1632424989
ls /usr/share/kbd/consolefonts/
#1632425016
setfont default8x16
#1632425033
bashtop
#1632425050
ll
#1632425056
dmesg
#1632425067
ls /usr/share/kbd/consolefonts/
#1632425098
setfont alt-8x16
#1632425103
nf
#1632425107
neofetch
#1632425133
setfont Ayafari-16
#1632425150
setfont default8x16
#1632425174
ls /usr/share/kbd/consolefonts/
#1632425595
tty
#1632422202
zsh
#1632419453
startx
#1632422222
bash
#1632419294
zsh
#1632422233
bash
#1632422391
bash
#1632422396
bash
#1632422403
bash
#1632422414
bash
#1632429825
cd /etc/
#1632429842
vim vconsole.conf 
#1632429874
sudoedit vconsole.conf 
#1632429932
dmesg
#1632429943
nf
#1632429975
sudo kernel
#1632430009
ls /usr/share/kbd/consolefonts/
#1632430040
setfont lat2-16
#1632430054
cd /etc/
#1632430075
ps a
#1632430095
bashtop
#1632430112
l
#1632430819
cd
#1632430841
reboot
#1632430128
startx
#1632429945
zsh
#1632430824
bash
#1632430896
su
#1632430945
cd .config/
#1632430958
cd
#1632430966
neofetch
#1632431924
sudo kernel
#1632432210
bashtop
#1632432233
search lynx
#1632430971
zsh
#1632432236
zsh
#1632432496
startx
#1632432484
bash
#1632432763
zsh
#1632435134
pass
#1632435149
pass Services/ATT
#1632435471
pwd
#1632435474
cd
#1632439124
cat index.html| grep -A mainline
#1632439129
cat index.html | grep -A mainline
#1632439140
cat index.html | grep -A 'mainline'
#1632439166
cat index.html | grep -A 2 mainline
#1632439191
cat index.html | grep -A 3 mainline
#1632439299
cat index.html | grep -A 3 mainline | awk -F "[<>]" '{print $1}

cat index.html | grep -A 3 mainline | awk -F "["]" '{print $1}
#1632439346
cat index.html | grep -A 3 mainline | awk -F "[<>]" '{print $1}

cat index.html | grep -A 3 mainline | awk -F '["]' '{print $1}
cat index.html | grep -A 3 mainline | uniq
cat index.html | grep -A 3 mainline
l
ls
#1632439396
cat index.html | grep -A 3 mainline | awk -F "[<>]" '{print $1}

cat index.html | grep -A 3 mainline | awk -F "["]" '{print $1}
#1632439421
cat index.html | grep -A 3 mainline | awk -F "[<>]" '{print $1}

cat index.html | grep -A 3 mainline | awk -F '["]' '{print $1}
#1632435526
startx
#1632439985
cd .config/
#1632440050
cd /etc/
#1632439945
bash
#1632439949
bash
#1632439952
bash
#1632439956
bash
#1632439962
bash
#1632440024
bash
#1632440201
bash
#1632440054
bash
#1632440001
bash
#1632439976
bash
#1632440244
bash
#1632440264
bash
#1632439996
bash
#1632440306
startx
#1632440028
bash
#1632440236
bash
#1632439968
bash
#1632440185
bash
#1632440173
bash
#1632440110
bash
#1632440133
bash
#1632440262
bash
#1632440126
bash
#1632440171
bash
#1632440240
bash
#1632440123
bash
#1632440231
bash
#1632440198
bash
#1632440180
bash
#1632440190
bash
#1632440105
bash
#1632440267
bash
#1632440269
bash
#1632440065
bash
#1632440187
bash
#1632439974
bash
#1632440182
bash
#1632439989
bash
#1632440100
bash
#1632440247
bash
#1632440177
bash
#1632440074
bash
#1632439959
bash
#1632440094
bash
#1632440108
bash
#1632440003
bash
#1632440256
bash
#1632440069
bash
#1632440084
bash
#1632440010
bash
#1632439966
bash
#1632443913
startx
#1632459375
dmesg
#1632459443
sudo auditctl -l
#1632459449
startx
#1632502730
zsh
#1632504674
sudo auditctl -l
#1632536992
sudo echo $HOME
#1632607860
dmesg
#1632696070
cd
#1632696141
sudo update-boot 5.14.8-MiniBeast
#1632504680
startx
#1632696226
LS
#1632696252
rm -rf k_update.sh 
#1632696254
l
#1632696256
ll
#1632696260
zsh
#1632789675
man nmcli
#1632789741
nmcli networking on
#1632874213
reboot
#1632789748
zsh
#1632874137
zsh
#1632874149
zsh
#1632874372
startx
#1632876126
zsh
#1632876288
zsh
#1632875714
zsh
#1632875771
zsh
#1632876514
zsh
#1632876517
zsh
#1632879162
echo -e '\033[1;31m
   .o oOOOOOOOo                                            OOOo
    Ob.OOOOOOOo  OOOo.      oOOo.                      .adOOOOOOO
    OboO"""""""""""".OOo. .oOOOOOo.    OOOo.oOOOOOo.."""""""""'OO
#1632879360
echo -e '\033[1;31m
    .o oOOOOOOOo                                            OOOo
    Ob.OOOOOOOo  OOOo.      oOOo.                      .adOOOOOOO
    OboO"""""""""""".OOo. .oOOOOOo.    OOOo.oOOOOOo.."""""""""`OO
    OOP.oOOOOOOOOOOO "POOOOOOOOOOOo.   `"OOOOOOOOOP,OOOOOOOOOOOB`
    `O`OOOO`     `OOOOo"OOOOOOOOOOO` .adOOOOOOOOO"oOOO`    `OOOOo
    .OOOO`            `OOOOOOOOOOOOOOOOOOOOOOOOOO`            `OO
    OOOOO                 `"OOOOOOOOOOOOOOOO"`                oOO
   oOOOOOba.                .adOOOOOOOOOOba               .adOOOOo.
  oOOOOOOOOOOOOOba.    .adOOOOOOOOOO@^OOOOOOOba.     .adOOOOOOOOOOOO
 OOOOOOOOOOOOOOOOO.OOOOOOOOOOOOOO"`  `"OOOOOOOOOOOOO.OOOOOOOOOOOOOO
 "OOOO"       "YOoOOOOMOIONODOO"`  .   `"OOROAOPOEOOOoOY"     "OOO"
    Y           `OOOOOOOOOOOOOO: .oOOo. :OOOOOOOOOOO?`         :`
    :            .oO%OOOOOOOOOOo.OOOOOO.oOOOOOOOOOOOO?         .
    .            oOOP"%OOOOOOOOoOOOOOOO?oOOOOO?OOOO"OOo
                 `%o  OOOO"%OOOO%"%OOOOO"OOOOOO"OOO`:
                      `$"  `OOOO` `O"Y ` `OOOO`  o             .
    .                  .     OP"          : o     .
                              :
                              .\033[0m' > issue
#1632877621
startx
#1632881539
reboot
#1632881517
zsh
#1632881887
lynx
#1632881929
startx
#1632882456
nmcli radio wifi on
#1632882475
nmcli -c
#1632882480
nmcli -C
#1632882519
nmcli -a d wifi connect PureBroadband_892838
#1632882654
nmcli con delete PureBroadband_892838
#1632882658
nmcli -a d wifi connect PureBroadband_892838
#1632882689
lynx google.com
#1632882731
lynx kernel.org
#1632882762
sudo kernel -u
#1632882778
cd .local/bin/
#1632882785
./kernel -u
#1632882797
cd
#1632882719
bash
#1632882976
startx
#1632882802
zsh
#1632883217
bash
#1632883242
zsh
#1632883177
zsh
#1632917543
startx
#1632944457
cd
#1632945129
pukeskull
#1632945727
startx
#1632945615
zsh
#1632945662
bash
#1632947255
startx
#1632948059
cd .cache/
#1632948109
rm -rf plasma_theme_Materia-Manjaro-Dark-Blur-Mono.kcache 
#1632948111
cd
#1632948113
startx
#1632948191
rm -rf .cache/plasma*
#1632948200
startx
#1632948627
cd .cache/
#1632948639
rm -rf plasma_theme_Materia-Manjaro-Dark-Blur-Mono.kcache 
#1632948647
cd
#1632948650
startx
#1632953446
xmodmap ~/.Xmodmap 
#1632953468
vim .Xmodmap 
#1632953488
nvim .Xmodmap 
#1632953547
nvim .xinitrc 
#1632953579
startx
#1632977208
cd /etc/
#1632977220
cd X11/xorg.conf.d/
#1632977221
l
#1632977271
sudo rm -rf 20-intel.conf 
#1632977274
cd
#1632977280
startx
#1633132464
nvim .xinitrc 
#1633132477
startx
#1633162515
nvim .xinitrc 
#1633162520
startx
#1633195405
zsh
#1633198659
startx
#1633296790
zsh
#1633296707
zsh
#1633296938
zsh
#1633297053
startx
#1633743540
zsh
#1633800612
startx
#1633810435
start_plasma_wayland
#1633810778
cd
#1633810783
zsh
#1633810451
.local/bin/start_plasma_wayland 
#1633811036
startx
#1634051940
zsh
#1634059752
printenv
#1634059782
vim .bash_profile 
#1634059841
startx
#1634060236
printenv
cd .config/bash
l
la
ls -a
vim .bashrc 
cd
vim .profile 
zsh
#1634061197
zsh
#1634083807
printenv | grep PATH
#1634083828
printenv
#1634084002
source .profile
#1634084007
printenv
#1634060335
startx
#1634088166
printenv
#1634088208
source .profile
#1634088211
printenv
#1634088223
startx
#1634088278
vim .xinitrc 
#1634088317
startx
#1634084014
zsh
#1634063679
alias
#1634063684
l
#1634063687
ll
#1634063733
yt "welcome to the internet"
#1634067680
zsh
#1634084199
zsh
#1634172352
ll
#1634172435
vim .bashrc
startx
#1634173026
dmesg
bash
bash
#1634302920
startx
startx
BASH
bash
startx
bash
startx
startx
startx
startx
startx
startx
startx
startx
startx
startx
startx
bash
#1634334924
zsh
bash
startx
startx
#1634353456
vim .xbindkeysrc 
#1634353486
vim .Xmodmap 
#1634353540
startx
