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


#### Run levels
There are total 7 (0 to 7) runlevel in linux.
runlevl : check current runlevel
example: 5 3 : here 5 is the previous run level and 3 is the current if there is n it indicate that  machine just started.

init 3 : init in used to change the run level.
