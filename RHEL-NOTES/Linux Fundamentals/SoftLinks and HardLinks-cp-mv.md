#### Softlinks or shortlink or sysmlink
ln -s : softink
arrow in ls -l agaist file indicate the softfile
example:
roza25 -> Ramzan25: here roza25 (child file) is the softlink and ramzan25 is the parent file.
NOTE: if we delete the parent file than child file orphan file.
``` ln -s <parent file> <child file>```


#### Difference b/w Symlinks and Harlinks
1. Softlinks can cross partition and hardlink can not
2. softlink is easy toa acces
3. If parents are deleted child became orphan- no use
4. Hardlink is a type of storage
5. Hardlink can not cross partition
6. if parents delete, no impact on child

ln: hardlink
``` ln <parent file> <child file>```

1. Harlink does not have arrow to show link. it has link count more than 1. link count increases as we create more links.
2. hardlinks have same inode number and softlinks have differet
3. ```ls -i <file>```
4. Inode number is unique in a partition.
NOTE: Inode are stored in inode taable.
Inode number father is inode table. inode table father is supperblock. supperblock father is  file system.

df -i : it show the how many inode in the partions.


###### Hiden file
touch .filetxt : use . at teh start of the file.
ls -ia : here i is inode and a is used to show hidden files.

find /usr/ -inum <inode numder>: this command show the file have same inode number.
 

  ##### WHY hardline does not crosss partition.
  Becuse it assogn the same inode numb er to both parent and child file. 
  
  #### cp: copy used for backup.
  cp -r /usr/ /mnt : copy the all file frm /usr to mnt
  mv /use/ /mnt/ : this mov the /usr dir to mnt. This is ct and past.
  mv is also used to rename the fileor dir name.
  mv usr USR : it will rename the usr.
  
  
  
  
