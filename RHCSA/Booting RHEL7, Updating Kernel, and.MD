- Understanding boot menu  

booting - grub2   
e - edit  mode    
c - go into 

edit mode opens  /boot/grub2/grub.cfg  after changes ctrl+x start boot using changes  

/etc/default/grub  values in this files generate /boot/grub2/grub.cfg
after changes run  grub2-mkconfig to make efect  
to regenerate /boot/grub2/grub.cfg file :  
grub2-mkconfig –o /boot/grub2/grub.cfg  
manual changes in /boot/grub2/grub.cfg will be lost.  


- Booting into specific boot mode  
 booting into emergency mode append systemd.unit=emergency.target  or append also systemd.unit=rescue.target


  
- booting into root  
append : init=/sysroot/bin/sh
chroot /sysroot  
remount root : mount –o remount,rw /  
invoke command passwd  
perform relabeling on next reboot :  touch /.autorelabel  
exit ; reboot  


- Modifying the Default Kernel to Boot




