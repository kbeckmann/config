set disassembly-flavor intel

# Pretty Print things
#set print pretty on
#set print array on

#set fork-follow-mode child

#handle SIGPIPE nostop noprint pass

#set disable-randomization off

#display /i $pc

source ~/peda/peda.py
