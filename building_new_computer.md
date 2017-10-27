## notes for myself on setting up new system


* adduser, mkdir /home/user, chmod, /etc/sudoers
* clone dotfiles repo and stow relevant ones
* zsh syntax highlighting is in a far off place.  is this part of prezto?  try first installing prezto.
* install prezto from git repo
* add my prompt -steeef
* vim plugins?  will vundle just clone them with :VundleInstall?
* chsh -s /usr/bin/zsh


### packages to install
sudo, vim, stow, curl, locate, zsh, git, ranger

fasd
### ssh without pw:
* create public key with ssh-keygen
* on remote host, mkdir ~/.ssh
* cat ~/.ssh/id_rsa.pub | ssh user@host 'cat >> .ssh/authorized_keys'
