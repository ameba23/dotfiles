# notes for myself on setting up new system


* adduser, mkdir /home/user, chmod, /etc/sudoers
* clone dotfiles repo and stow relevant ones
* zsh syntax highlighting is in a far off place.  is this part of prezto?  try first installing prezto.
* install prezto from git repo
* add my prompt -steeef
* vim plugins?  will vundle just clone them with :VundleInstall?
* chsh -s /usr/bin/zsh


### packages to install (gradually put them into order of importance)
- sudo, vim, stow, curl, locate, zsh, git, ranger
- fasd
- jq
- keybase
- mpv
- mps-youtube
- youtube-dl
- xclip or xorg-xclipboard
- offlineimap, mutt (sidebar) or neomutt
- markdown
- soulseekqt
- transmission-gtk
- mpd, ncmpcpp
- atool
- go-ipfs-git
- alsa-util
- ngrok
- vundlevim

## todo:
- passwdless ssh to laptop, vps, ehion?
- sshfs to vps
- fix mouse
- sata cable
- ipfs for sharing
- email --offlineimap in different locations or single networked location
- todo
- where should mpd be running
- unplug fan?
- how to best suspend/hibernate?

### ssh without pw:
* create public key with ssh-keygen
* on remote host, mkdir ~/.ssh
* cat ~/.ssh/id_rsa.pub | ssh user@host 'cat >> .ssh/authorized_keys'
