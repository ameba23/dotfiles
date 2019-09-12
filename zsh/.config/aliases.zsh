# 
# ------------------ameba's aliases (zsh, mostly bash compatible)
# 
# needs organising!  should be split into personal / more useful to other people 
# should also be in categories
# there are also some functions in here, maybe put them elsewhere
#
# stuff at the top is mostly from YADR (yet another dotfile repo)
# with some minor changes


# Get operating system
platform='linux'

# YADR support
#alias yav='yadr vim-add-plugin'
#alias ydv='yadr vim-delete-plugin'
#alias ylv='yadr vim-list-plugin'
#alias yup='yadr update-plugins'
#alias yip='yadr init-plugins'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'
alias cdc='cd;clear'
alias cd..='cd ..'
# cant remember why i commented this out
#alias ... = 'cd ../..'

alias dl='cd ~/Downloads'
alias doc='cd ~/Documents'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h'
#alias du='du -h -d 2'
alias dus='du -sckx * | sort -nr' #directories sorted by size
# show biggest files
#
alias ducks='du -cks * | sort -rn | head -11'

alias ll='ls -alh --color=auto'
alias ls='ls --color=auto'
alias l.='ls -d .*'
alias ..='cd ..'

#alias lrt='ls++ -art'
alias lrt='ls -lhart'

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
alias ae='vim ~/dotfiles/zsh/.config/aliases.zsh' #alias edit
alias ar='source ~/.config/aliases.zsh'  #alias reload

# vim using

alias vi=vim
# vim remote (to keep only a single instance of vim) - been experimenting with this
alias vr='vim --servername VIM --remote-tab'

# mimic vim 
alias :q='exit'

# vimrc editing
alias ve='vim ~/.vimrc'


# ----------------------------------Git Aliases

alias gpom='git push -u origin master'

alias gs='git status'
# watch out! gs is normally ghostscript. 


# alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'

alias gpo='git push -u origin `git rev-parse --abbrev-ref HEAD`'

alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'

alias grb='git recent-branches'


#alias gac='git add . && git commit -am'
alias gac='git commit -am'
alias gc='git commit -m'

# jump to top level of a git repo (go home)
# todo: if we are not in a git repo cd ~
alias gh='cd ./$(git rev-parse --show-cdup) || cd ~'

alias lastcommit='git diff HEAD^..HEAD'
#alias lastcommit='git log --name-status HEAD^..HEAD'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head -n 25' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
#alias c='rails c' # Rails 3
#alias co='script/console --irb=pry' # Rails 2
#alias ts='thin start'
#alias ms='mongrel_rails start'
#alias tfdl='tail -f log/development.log'
#alias tftl='tail -f log/test.log'
#alias rdm='rake db:migrate'
#alias rdmr='rake db:migrate:redo'
# Gem install
#alias sgi='sudo gem install --no-ri --no-rdoc'

alias ka9='killall -9'
alias k9='kill -9'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

# for samsung
alias mountphone='mkdir ~/phone && simple-mtpfs --device 1 ~/phone'
#alias mountphone='mkdir ~/phone && go-mtpfs ~/phone'
#alias mountphone='mkdir ~/phone && jmtpfs ~/phone'
alias unmountphone='fusermount -u ~/phone && rmdir ~/phone'

# surfraw 
alias sr=surfraw
alias srg="surfraw google"

# change ownership of everything in current dir (recursively) to current user
# and use that username as group.
alias allmine='sudo chown -R $(whoami):$(whoami) *'

# tmux conf
alias tmuxconf='vim ~/.tmux.conf'

# i3 window manager
alias i3config='vim ~/.config/i3/config'
# display keybindings for i3
alias keys='cat ~/.config/i3/config|grep bindsym|highlight -S sh --out-format=ansi|less'

# ---fasd (an amazing bit of software)
alias v='f -e vim' # quick opening files with vim
#alias m='f -e mplayer' # quick opening files with mplayer
alias m='f -e mpv' # quick opening files with mpv
#alias o='a -e xdg-open' # quick opening files with xdg-open
alias o='a -e rifle' # quick opening files with rifle

alias fbreader=FBReader

# too cautious?  (rm already aliased by prezto -i think)
#alias rm='rm -I'

alias whatsmyip='curl http://httpbin.org/ip'

# vim+less (use vim as pager)
alias vess='/usr/share/vim/vim80/macros/less.sh'

alias muttrc='vim ~/.muttrc'

# start mutt in Download directory so that attachments are saved there (an unelegant workaround)
#alias mutt='cd ~/Downloads;/usr/bin/mutt;cd -'

# zmv - another amazing bit of software
autoload zmv
alias zmv='noglob zmv'
alias zcp='noglob zmv -C'
alias zln='noglob zmv -L'
alias zsy='noglob zmv -Ls'

# run torbrowser:
alias torbrowser='cd ~/software/tor-browser_en-US;./start-tor-browser.desktop;cd -'

# this seems to work when the mouse cursor gets stuck
alias fixmouse='sudo rmmod psmouse && sudo modprobe psmouse'


alias cputemp='sensors | grep "CPU Temperature"'

# -----------------------fzy fuzzy finder 
# (replace fzy with your own favourite filter program)

# global:
alias -g FZY='$(find -type f | fzy)'
#vim with fzy 
alias vzy='vim $(find -type f | fzy)'
# cd with fzy
alias czy='cd $(find -type d | fzy)'

# newest file (or directory) -global alias (zsh)
alias -g newest='*(om[1])'

# on = open newest - open newest file with default application
#    i use ranger's 'rifle' file opener, but you can also use 'xdg-open'
#alias on='xdg-open newest'
alias on='rifle newest'
alias dlon='cd ~/Downloads && rifle newest'

#
# Automatically change the directory in bash after closing ranger
# Compatible with ranger 1.4.2 through 1.7.*
# This is a bash function for .bashrc to automatically change the directory to
# the last visited one after ranger quits.
# To undo the effect of this function, you can type "cd -" to return to the
# original directory.
function ranger-cd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    /usr/bin/ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}

alias rg='ranger-cd'

# This binds Ctrl-O to ranger-cd:
#bind '"\C-o":"ranger-cd\C-m"'

# jump to downloads and open the most recently modified file
alias opendl='cd ~/Downloads; on'


# run offlineimap just one time.  i use this when i am connected through my phone and want to minimise data use
alias oi='offlineimap -o'

# unmount all devices (which are managed by udisks)
alias unplug='udiskie-umount -a'

# disable globbing of nmap command allowing you to do nmap -sn 192.168.0.*
alias nmap='noglob nmap'

# list wifi networks
alias wscan='nmcli device wifi list'


# grep shell history (maybe pipe to less) -because Ctrl-R will only find one result.
#alias histgrep='cat ~/.zhistory |grep -i '
alias histgrep='fc -li 1 |grep -i '

# grep browser history (vimb)
alias wwwgrep='cat ~/.config/vimb/history |grep -i'

# correct typos 
alias rnager='ranger'
alias cd,,='cd..'

# put screensaver on
alias save='xscreensaver-command -activate'

# weather report
#alias weather='curl wttr.in'
alias weather='curl wttr.in/chemnitz'
alias moon='curl wttr.in/moon'

# i use this because by default xclip uses selection rather than clipboard which i often dont want.
alias clip='xclip -selection clipboard'
alias -g CLIP='$(xclip -selection clipboard -o)'

# dump the clipboard contents to a qrcode (to send to a phone)
alias qclip='xclip -selection clipboard -o | qrencode -t UTF8'

# copy last terminal command to clipboard 
alias commandcopy='fc -l -n -1 | xclip -selection clipboard -i && echo Copied $(xclip -selection clipboard -o)'

# repeat last terminal command and pipe output to clipboard
alias outcopy='$(fc -l -n -1) | xclip -selection clipboard -i; echo clipboard contains; clip -o'

# wordcount clipboard
alias clipcount='xclip -selection clipboard -o | wc'

# removed orphaned pacman packages
alias orphans='[[ -n $(pacman -Qdt) ]] && sudo pacman -Rs $(pacman -Qdtq) || echo "no orphans to remove"'

# please! (after permission denied)
alias pls='sudo `fc -n -l -1`'

# what? (after too much output) - pipe last command through less
alias what='`fc -n -l -1`|less'

# less with syntax highlighting.  Does not work in a pipe, as highlight uses filename to 
# detect which syntax to use.  Anyone know a better way to do this?
# (Note: less is alread aliased to less -r which allows ansi colour sequences)
function hess { highlight --force -O ansi $1 | less } 

# go to sleep:
alias schlaf='systemctl suspend'
alias snore='systemctl hibernate'


#function sedPath { 
# Escape path for use with sed
#  thepath=$((echo $1 | sed -r 's/([\$\.\*\/\[\\^])/\\\1/g' | sed 's/[]]/\[]]/g') >&1 ) 
#  echo $thepath
#} 

alias thesaurus='dict -d moby-thesaurus'

# run youtube-dl with a url from the clipboard
alias ydl='youtube-dl "$(xclip -o)"'

# adjust volume when connected to amplifier:  (better would be to detect when headphone jack connected)
alias amp='amixer sset Headphone playback 90% unmute; amixer sset Speaker playback 30% unmute'
alias noamp='amixer sset Speaker playback 100% unmute'

# jump to trash directory, list contents and disk space used:
alias trash='cd ~/.trash; ls; echo ----------------------; du ~/.trash'

# open readme file in pager.  todo: if no readme open .nfo 
alias readme='hess (#i)readme(|.md|.txt|.rst) || echo no readme'

# internet working?
alias pg='ping google.com'
alias p8='ping 8.8.8.8'

# listen to bbc world service
alias worldservice='mplayer -playlist http://www.bbc.co.uk/worldservice/meta/live/mp3/eneuk.pls'

# Convert currentce using google financt API
#   usage example:  currency_convert 1 usd eur  (also works with btc)
currency_convert() {
  curl -s "http://finance.google.com/finance/converter?a=$1&from=$2&to=$3" | sed '/res/!d;s/<[^>]*>//g';
  # apparently this can be done transfering less data with something like:
  # echo "GET download.finance.yahoo.com/d/quotes.csv?e=.csv&f=c4l1&s=USDINR=X" | nc download.finance.yahoo.com 80
}

# query coindesk api for bitcoin price in euro
alias btceur='curl -s http://api.coindesk.com/v1/bpi/currentprice.json | jq .bpi.EUR.rate'

magnet-info() {
  hash=$(echo "$1" | grep -oP "(?<=btih:).*?(?=&)")
  echo "Magnet hash: $hash"
  aria2c --bt-metadata-only=true --bt-save-metadata=true -q "$1"
  aria2c "$hash.torrent" -S
}


# todo make these into a function that pass args to find or fzf
#alias fzfind="rifle $(find -L . \( -path '*/\.*' -o -fstype 'dev' -o -fstype 'proc' \) -prune -o -print 2> /dev/null | sed 1d | cut -b3- | fzf +m)"
alias fzfind='rifle "$(fzf)"'
alias cdf='ls -d */ | fzf'

# dont store tomb commands in zsh history
alias tomb=' tomb'

# ********************************************
# *** personal -probably only useful to me ***
# ********************************************
# TODO: stick this somewhere else and source it

# start feh with custom theme, to copy images with a keybinding
alias fehdrop='feh -Tcpimg' 

# build/edit my browser start page:
alias oftenedit='vim ~/Documents/oftenlinks/oftenlinks.md && oftenlinks'

# website stuff
alias buildsite='cd ~/Documents/static && mkdocs build && cd -'
alias uploadsite='rsync -avz -e ssh ~/Documents/static/site/ ameba@ehion.com:public_html/site'
alias site='cd ~/Documents/static/docs'

# my global todo list.  i stopped using this alias since i have an i3 workspace dedicated to this file
alias todo='vim ~/Documents/todo.md'

# wrapper for a script to add an item todo list by remotely controlling a vim session:
function t {
 argss="$*"
 todoadd.sh $argss
}
# turn off globbing to allow special characters in todo items
alias t='noglob t'

# ---xrandr:
# alias monitor='xrandr --auto --output VGA1 --mode 1280x1024 --left-of eDP1'
#alias monitor='xrandr --auto --output VGA1 --mode 1440x900 --left-of eDP1'
#alias nomonitor='xrandr --auto'

# --try monitor and if errors, load auto settings.  This command can be used when i plug or unplug the monitor
# it is also bound to a key in my window manager
alias monitor='xrandr --auto --output VGA1 --mode 1440x900 --left-of eDP1 || xrandr --auto'


# open browser and change to designated workspace
alias vb='i3-msg "workspace 2:www" ; vimb &'

# frequently used directories
alias books='cd ~/books_and_zines'
# alias dot='cd ~/dotfiles'
alias film='cd ~/film'
alias soft='cd ~/software'

# client side.  put/get x clipboard over ssh.  a messy workaround
alias clipsend='xclip -selection clipboard -o | ssh pot "cat > .flipclip" && echo Sent: $(xclip -selection clipboard -o)'
alias clipget='ssh pot cat .flipclip | xclip -selection clipboard && echo Clipboard now: $(xclip -selection clipboard -o)'

# sshfs
alias mountpot='mkdir ~/potatoe && sshfs potatoe@potatoe: ~/potatoe/'
alias umountpot='fusermount3 -u ~/potatoe && rmdir ~/potatoe'

# backup magnetico db
alias backupmagnet='rsync -avz -e ssh vps:.local/share/magneticod/ ~/archive/magnetico_database'
# *******************************************
