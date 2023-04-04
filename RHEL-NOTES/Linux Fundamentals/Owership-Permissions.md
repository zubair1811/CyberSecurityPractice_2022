#### Permissions
A file or dir conatins 9 fields of properties
1- Type of files, syslink has l file type.
2-permissions
3-selinux
4- link cound, each file has count 1, dir has diff and hardlinks also have more than 1
5-owner
6-group
7-size in byte
8-Acess time
9-file name or location

Example: -rw-r--r--. 1 root root 0 MAY 10 08:03 tomcat.txt

chown : chanag owner
```chown zubair1 <filenane.txt> ```

useradd <username> : create a new user
id <username> : show the id and nam eif the user

 ```chgrp <group name> <filename>```: change the group
 groupadd <groupname>: create group
  
  #### permission feild
  permusion feild conatins 9 field
  rw-r---- : first 3 feild user, next 3 feild group, and last three other
  Example: rw- (user) r--(group) ---(other)
  chmod : used to chamge the permissions
  chmod u+rwx <filename>: change the user permisisoons
  chmod g+rwx <filename>: change the permission of group
  chmod o+rwx <filename>: change the permission of other
  chmod ugo+rwx <filename>: chnage the permission of all
  chmod ugo-rwx <filenname>: remove the permmision of all
  
  ##### 1- feild or file type
  IN inux there are 7 type of file type
  1. d : dir
  2. - : dash indicate simple file
  3. l : symlink
  4. b : block file
  5. c : charachter file
  6. s : socket file
  7. pipe device file
  
  ### link count
  its depends upon dir and sub dir, hardlinks. It is 1 for file.
  ### size feild
  it show the size in bytes.
  
  #######
  r permission : allow copyig file,minimal permission to open and copy file is read. write but cannot save.
  w premission: allow to delete, write in file, modify.
  x permission: run as process
  
  similarly dir have permisssion where  rwx meaning are following
  r: read data wthin dir
  w: cread new dir and files within dir
  x: we can move insie dir and read data.
  
  #### Editor VI
  esc + : set nu : set line number
  esc + : nonu : remove like numbr
  esc :25 : show the crser to 25 ine
  esc :/<waht to search> : serach the file.
  esc :vsplit : split the window in two coulmns. how amany time times we write it spit it into culmns
  esc :split : hoozontal split
  esc :split /etc/passwd: this will open the file and split in horizontal
  ctrl + ww : switch the contr b/e split.
  
  esc + shift + X : passord protect
  esc + : X : Black enter two times
  
  ##### nano editor
  alt + shift + a : select
  alt + shift + 6: copy
  ctrl + u: past 
  ctrl + k : delete
  
  
  
  
