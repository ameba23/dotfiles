#!/usr/bin/python
#  toggle images in vimprobable (permanently)
#  this program modifies the config file vimprobablerc
#  requires notify-send
#  to be called from a keybinding in i3

def excuteCmd(cmd):
    import commands
    output = commands.getoutput(cmd)

def setTask():
    excuteCmd('cat /home/carrot/.config/vimprobable/vimprobablerc >  oldrc')
    input = open('oldrc','r')
    emptyFile = False
    lines = input.readlines()
    input.close()
    taskNum = len(lines)
    output = open('newrc', 'w')
    for i in range(taskNum):
        if (lines[i] == 'set images=true\n'):
            excuteCmd('notify-send "vimprobable images: off"')
            output.write('set images=false\n')
        elif (lines[i] == 'set images=false\n'):
            excuteCmd('notify-send "vimprobable images: on"')
            output.write('set images=true\n')
        else:
            output.write(lines[i])
    output.close()
    excuteCmd('mv -f newrc /home/carrot/.config/vimprobable/vimprobablerc')
    excuteCmd('rm -f oldrc')
    excuteCmd('rm -f newrc')

setTask()
