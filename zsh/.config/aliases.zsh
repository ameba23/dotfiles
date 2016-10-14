# 
# ------------------ameba's aliases (zsh, mostly bash compatible)
# 
# needs organising!  should be split into personal / more useful to other people 
# should also be in categories
#
# stuff at the top is mostly adapted from YADR (yet another dotfile repo)
#


# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

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

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h'
#alias du='du -h -d 2'
alias dus='du -sckx * | sort -nr' #directories sorted by size

if [[ $platform == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
alias ae='vim ~/dotfiles/zsh/.config/aliases.zsh' #alias edit
alias ar='source ~/.config/aliases.zsh'  #alias reload

# vim using

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='vim ~/.vimrc'

# zsh profile editing
alias ze='vim ~/.config/aliases.zsh'
alias zr='source ~/.config/aliases.zsh'

# Git Aliases

alias gs='git status'
# gs is normally ghostscript. 

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

alias gma='git commit -am'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
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

alias ka9='killall -9'
alias k9='kill -9'

# Gem install
alias sgi='sudo gem install --no-ri --no-rdoc'

# TODOS
# This uses NValt (NotationalVelocity alt fork) - http://brettterpstra.com/project/nvalt/
# to find the note called 'todo'

#alias todo='open nvalt://find/todo'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

alias rdm='rake db:migrate'
alias rdmr='rake db:migrate:redo'

# Zeus
#alias zs='zeus server'
#alias zc='zeus console'

# Rspec
#alias rs='rspec spec'
#alias sr='spring rspec'
#alias src='spring rails c'
#alias srgm='spring rails g migration'
#alias srdm='spring rake db:migrate'
#alias srdt='spring rake db:migrate'
#alias srdmt='spring rake db:migrate db:test:prepare'

# Sprintly - https://github.com/nextbigsoundinc/Sprintly-GitHub
#alias sp='sprintly'
# spb = sprintly branch - create a branch automatically based on the bug you're working on
#alias spb="git checkout -b \`sp | tail -2 | grep '#' | sed 's/^ //' | sed 's/[^A-Za-z0-9 ]//g' | sed 's/ /-/g' | cut -d"-" -f1,2,3,4,5\`"

alias hpr='hub pull-request'
alias grb='git recent-branches'


#alias dbtp='spring rake db:test:prepare'
#alias dbm='spring rake db:migrate'
#alias dbmr='spring rake db:migrate:redo'
#alias dbmd='spring rake db:migrate:down'
#alias dbmu='spring rake db:migrate:up'

# surfraw 
alias sr=surfraw

alias i3config='vim ~/.config/i3/config'

alias cd..='cd ..'


# display keybindings for i3
alias keys='cat ~/.config/i3/config|grep bindsym|highlight -S sh --out-format=ansi|less'

# fasd (an amazing bit of software)
alias v='f -e vim' # quick opening files with vim
alias m='f -e mplayer' # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open

alias fbreader=FBReader

# too cautious?
#alias rm='rm -I'

alias vess='/usr/share/vim/vim74/macros/less.sh'

alias oftenlinks='markdown ~/Documents/oftenlinks.md >! ~/Documents/oftenlinks.html'

alias uploadsite='rsync -avz -e ssh ~/Documents/static/site/ ameba@ehion.com:public_html/site'

alias dl='cd ~/Downloads'
alias muttrc='vim ~/.muttrc'

# start mutt in Download directory so that attachments are saved there (an unelegant workaround)
alias mutt='cd ~/Downloads;/usr/bin/mutt;cd -'

# zmv - another amazing bit of software
autoload zmv
alias zmv='noglob zmv'
alias zcp='noglob zmv -C'
alias zln='noglob zmv -L'
alias zsy='noglob zmv -Ls'

# my global todo list.  i stopped using this alias since i have an i3 workspace dedicated to this file
alias todo='vim ~/Documents/todo.md'

alias l.='ls -d .*'
alias ..='cd ..'


#alias torbrowser='~/software/tor-browser_en-US/start-tor-browser'

# this seems to work when the mouse cursor gets stuck
#alias fixmouse='sudo rmmod psmouse; sudo modprobe psmouse'

# abandoned in favour of sidebar and folder-hooks
#alias mtmutt='mutt -f ~/Mail/mtmedia/INBOX'

alias vi=vim


# ---xrandr:
# alias monitor='xrandr --auto --output VGA1 --mode 1280x1024 --left-of eDP1'
alias monitor='xrandr --auto --output VGA1 --mode 1440x900 --left-of eDP1'
alias nomonitor='xrandr --auto'

# newest file (or directory) -global alias (zsh)
alias -g newest='*(om[1])'

# on = open newest - open newest file with default application
alias on='xdg-open newest'

# vim remote (to keep only a single instance of vim) - been experimenting with this
alias vr='vim --servername VIM --remote-tab'

# run offlineimap one time.  i use this when i am connected through my phone and want to minimise data use
alias oi='offlineimap -o'

# unmount all devices (which are managed by udisks)
alias unplug='udiskie-umount -a'

# disable globbing of nmap command allowing you to do nmap -sn 192.168.0.*
alias nmap='noglob nmap'
