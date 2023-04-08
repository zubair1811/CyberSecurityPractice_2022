###### Advance Permission
If there is no permission of file can ower or root delete the file. Yes.
NOTE: to restric the files to be deleted by root used **chattr** command.
``` chattr +i <file name> : here i mean imutable
example: lsattr <filename> it shows the permission of the chattr file. the permission shows the **i**.
NOTE: Do not use chattr with system file because of log updateds. IT is like a security.

Inherit permission:
if parents dir have write permission, then the child files can be edited by other by forcefully.


##### Octal Permissions
chmod 777 <file Name>: full permission
chmod 000 <file Name>: NO permission

##### Recursive permission assgnemt to all file in dir
chmod -Rv 777 <dir name> : it file apply permission all sub files in the dir.

##### If we have multiple user and assign diif permission of a file to each individual.
ACL: access control list.
setfacl -m u:zubair1:rwx <file name>: here u is the user want to assign sepecific permission.
ls -l <file name > : This will show the + which indicate the acl set to this user.
getfacl <filename> : this will show the all details of the acl file.
setfacl -x u:zubair1 <file name>: this will remove the permisison assigned to user zubair1.

NOTE: chmod-calculator: interet

#### TASK:
Create a graphical tool in ubuntu with shortcut to calculate the ocatal permision.


#### Run levels in RHEL 6 nd in 7/8 it is called targets
There are total 7 (0 to 6) runlevel in linux.
runlevl : check current runlevel
example: 5 3 : here 5 is the previous run level and 3 is the current if there is n it indicate that  machine just started.

init 3 : init in used to change the run level.

Rrunlevel =0 - Halt
Rrunlevel =6 - reboot
Rrunlevel =1 - Single user or safe mood, "S" indicate the simgle user mode

NOTE: cat/etc/inittab : settings of the runlevel

#### TASK:
If forget root password how to reset password?
Ans: Runlevel -1 , single mode --> n password

##### Ceentos 6 Method
1. start boot (splash screen)
2. press a
3. rhgb quit write 1, press enter : rhgb (redhat graphical boot), here 1 move to runlevel 1
4. Now we are at runlevel 1
5. passwd root --> change password
6. Now we can login using new password

##### CEntos 7/8 Method
1- press e
2- write rd.break next to UTF and press ctr + X
3- mount -o remount rw /sysroot/
4- chroot /sysroot/
5- passwd root and change new password
6- touch /.autorelabel
7- exit
8- exit

runlevel 5 : gnome terminal (graphical bydefault), contains around 400 terminals
runlevel 3: contains virtual consoles (VCs), it conatins total 6 VCs.
VCs type be seen using ```ps``` process state command, which show tty1,....tty6. tty abbrivation teletype.
ctr + function 1 to 6 : used to shift the VCs.
deriver of tty --> /dev/tty1, /dev/tty2,...,/dev/tty6

```startx``` : it will load the graphics temperaroly. init 5 move us to graphic runlevel but it load some extra service as well. if we do not want to load extra service than load temperarory graphic using this command. To come back to runlevel CLI use
```pkill x```

Note: it runevel 5 we have pts: psedudo terminal and it contains /dev/pts. So, pts can be around 400 becuase we have 400 terminal in runleve 6.


#### How to secure single user mod?
/etc/sysconfig/init
sushell : mean do not ask password in single usermod
change ```sushell``` to ```sulogin```












