# notes for myself on setting up new system


* adduser, mkdir /home/user, chmod, /etc/sudoers
* clone dotfiles repo and stow relevant ones
* zsh syntax highlighting is in a far off place.  is this part of prezto?  try first installing prezto.
* install prezto from git repo
* add my prompt -steeef
* vim plugins?  will vundle just clone them with :VundleInstall?
* chsh -s /usr/bin/zsh


### packages to install (gradually put them into order of importance)
- sudo, vim, stow, curl, locate, zsh, git, ranger, htop
- xclip or xorg-xclipboard
- atool
- fasd
- pass
- jq
- feh
- npm
- ncdu
- udiskie, ln -s /run/mount/$(whoami)/ ~/media
- w3m, vimb, firefox, torbrowser
- mupdf, FBreader?
- keybase
- mpv
- mps-youtube
- youtube-dl
- offlineimap, mutt (sidebar) or neomutt, urlscan, notmuch
- markdown
- soulseekqt
- transmission-gtk
- mpd, ncmpcpp
- go-ipfs-git
- alsa-utils (and unmute master)
- ngrok
- vundlevim
- [ls++](https://github.com/trapd00r/ls--)
- python-pip
- imagemagick
- fzy, fzf, highlight 
- ding, dictd
- poppler (for pdftotext)

### wm related
- i3 scrot

### heavy gui
libreoffice
gimp, inkscape

## todo:
- passwdless ssh to laptop, vps, ehion?
- sshfs to vps
- sata cable
- ipfs for sharing
- email --offlineimap in different locations or single networked location
- todo
- where should mpd be running

### ssh without pw:
* create public key with ssh-keygen
* on remote host, mkdir ~/.ssh
* cat ~/.ssh/id_rsa.pub | ssh user@host 'cat >> .ssh/authorized_keys'
*
## new 
networkmanager
sudo systemctl start NetworkManager.service
xorg
xorg-init
graphics driver:
lspci | grep -e VGA -e 3D
pacman -Ss xf86-video

eg xf86-video-amdgpu
i3
xrdb .Xresources


### hibernating

in /etc/mkinitcpio.conf -add ''resume' to hooks.
sudo mkinitcpio -P 
also check /etc/logind.conf
add uuid of swap partition to /etc/default/grub (you can find it in /etc/fstab)
grub-mkconfig -o /boot/grub/grub.cfg

## grub background
/etc/default/grub
GRUB_BACKGROUND="/boot/grub/ameba.png"

## to merge
xdg-settings set default-web-browser vimb.desktop

## ssh keys:

on client: 
ssh-keygen -t rsa
leave password blank, then do:
cat .ssh/id_rsa.pub | ssh user@host 'cat >> .ssh/authorized_keys'
if on the host there is no directory .ssh you will need to create it
