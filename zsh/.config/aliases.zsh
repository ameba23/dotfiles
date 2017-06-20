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

alias gac='git add . && git commit -am'

alias gstsh='git stash'
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
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
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
alias gma='git commit -am'

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


# surfraw 
alias sr=surfraw
alias srg="surfraw google"

# i3
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

# vim+less
alias vess='/usr/share/vim/vim80/macros/less.sh'

alias muttrc='vim ~/.muttrc'

# start mutt in Download directory so that attachments are saved there (an unelegant workaround)
alias mutt='cd ~/Downloads;/usr/bin/mutt;cd -'

# zmv - another amazing bit of software
autoload zmv
alias zmv='noglob zmv'
alias zcp='noglob zmv -C'
alias zln='noglob zmv -L'
alias zsy='noglob zmv -Ls'


#alias torbrowser='~/software/tor-browser_en-US/start-tor-browser'

# this seems to work when the mouse cursor gets stuck
#alias fixmouse='sudo rmmod psmouse; sudo modprobe psmouse'



# -----------------------fzy fuzzy finder 
# (replace fzy with your own favourite filter program)

# global:
#alias -g FZY='"`find -type f | fzy`"'
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

# This binds Ctrl-O to ranger-cd:
#bind '"\C-o":"ranger-cd\C-m"'

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

# grep browser history
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

# copy last terminal command to clipboard 
alias commandcopy='fc -l -n -1 | xclip -selection clipboard -i'
alias outcopy='$(fc -l -n -1) | xclip -selection clipboard -i; echo clipboard contains; clip -o'

alias orphans='[[ -n $(pacman -Qdt) ]] && sudo pacman -Rs $(pacman -Qdtq) || echo "no orphans to remove"'

# please! (after permission denied)
alias pls='sudo `fc -n -l -1`'

# what? (after too much output)
alias what='`fc -n -l -1`|less'

# less with syntax highlighting.  Does not work in a pipe, as highlight uses filename to 
# detect which syntax to use.  Anyone know a better way to do this?
# (Note: less is alread aliased to less -r which allows ansi colour sequences)
function hess { highlight --force -O ansi $1 | less } 

alias schlaf='systemctl suspend'

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

# open readme file in pager 
alias readme='hess (#i)readme(|.md|.txt|.rst) || echo no readme'

# internet working?
alias pg='ping google.com'
alias p8='ping 8.8.8.8'

# listen to bbc world service
alias worldservice='mplayer -playlist http://www.bbc.co.uk/worldservice/meta/live/mp3/eneuk.pls'

# ********************************************
# *** personal -probably only useful to me ***
# ********************************************

# build/edit my browser start page:
alias oftenlinks='markdown ~/Documents/oftenlinks.md >! ~/Documents/oftenlinks.html'
alias oftenedit='vim ~/Documents/oftenlinks.md'

# website stuff
alias uploadsite='rsync -avz -e ssh ~/Documents/static/site/ ameba@ehion.com:public_html/site'
alias ehion='ssh ameba@ehion.com'
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
alias dot='cd ~/dotfiles'
alias film='cd ~/film'
# *******************************************
