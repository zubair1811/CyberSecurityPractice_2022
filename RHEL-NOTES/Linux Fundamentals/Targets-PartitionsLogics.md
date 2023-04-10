#### Runlevels in RHEL 7/8

 Targets --- many targets
 In RHEL 7/8 there 2 major targets
 
 1- multiuser.targets in RHEL 6 --- runlevel 3
 2- graphical.target in RHEL 6 --- runleve 5
 
 Change the runleves
 In RHEL 6:
 init 3, int 5
 
 In RHEL 7/8 switch b/w targets
 
 systemctl isolate multiuser.target
 systemctl isolate graphical.target
 
 In 6 we set the default runlevel in etc/inittap
 In 7/8 we set the default target level using follwing comands
 ```
 systemctl get-default : check the current target
 systemctl set-default muti-user.target : set the runlevel 3
 ```
 
 RHEL 7/8 does not have single user or runlevel 1
 
 In RHEL 7/8 to move sigle user mode we Break initramfs -- get shell from inside.
 
