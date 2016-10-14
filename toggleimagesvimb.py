#!/usr/bin/python
#  toggle images in vimb (permanently)
#  - this is useful because if you set a variable such as images on/off in vimb it will be overridden by the setting in 
#    your config file every time you open a new instance of vimb (equivalent to opening a new tab).  if this is not the
#    desired behaviour you can use this script (bound to a key in your window manager) to 'permanently' toggle the setting
#  - probably a very ugly way to do it but it works

#  requires notify-send
#  to be called from a keybinding in i3

def excuteCmd(cmd):
    import commands
    output = commands.getoutput(cmd)

def setTask():
    excuteCmd('cat ~/dotfiles/vimb/.config/vimb/config >  oldrc')
    input = open('oldrc','r')
    emptyFile = False
    lines = input.readlines()
    input.close()
    taskNum = len(lines)
    output = open('newrc', 'w')
    for i in range(taskNum):
        if (lines[i] == 'set images=true\n'):
            excuteCmd('notify-send "vimb images: off"')
            output.write('set images=false\n')
        elif (lines[i] == 'set images=false\n'):
            excuteCmd('notify-send "vimb images: on"')
            output.write('set images=true\n')
        else:
            output.write(lines[i])
    output.close()
    excuteCmd('mv -f newrc ~/dotfiles/vimb/.config/vimb/config')
    excuteCmd('rm -f oldrc')
    excuteCmd('rm -f newrc')

setTask()
