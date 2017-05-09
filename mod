#!/bin/python3
f= open("settings","w+")
f.write('[/]')


while True:
    print('1. Inteli hide \n2. Always Show\n3. Always Hide\n4. Default')
    pannel = input('Pannel Mode: ')
    
    if pannel == '1':
        f.write('\npanels-autohide=[\'1:intel\']')
        break

    elif pannel == '2':
        f.write('\npanels-autohide=[\'1:false\']')
        break

    elif pannel == '3':
        f.write('\npanels-autohide=[\'1:true\']')
        break
    elif pannel == '4':
        break

        

while True:
    f.write('[sounds]')
    
'''
logout-enabled=true
map-enabled=true
maximize-enabled=true
login-enabled=true
switch-enabled=true
notification-enabled=true
tile-enabled=true
minimize-enabled=true
unplug-enabled=true
close-enabled=true
plug-enabled=true
unmaximize-enabled=true
   
'''

f.close()
run_dconf():
    cmd = 'dconf load /org/cinnamon/ < settings'
    import os
    os.system(cmd)

run_dconf()
