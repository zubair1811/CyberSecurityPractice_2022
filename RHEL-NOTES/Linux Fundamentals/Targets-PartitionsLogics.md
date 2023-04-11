#### Partition Logic


Why OS shows less capacity as mentioned in the label HDD?

1 cylender = 8 MB approximate nad if HDD in MB then 1 cylender=1MB
cylender x 8 MB = MBs/ 1024 = GBs.

space for partition is calculated based on cylender. Free space can be calculated by total cylender - used in partition.


 
fdisk : can only create, delte and manage hdd. can not formate

we can nly create 4 primery partitions.
If we want to make more than need to make 4th as extended and then make  more.
The extended is just a boundry can not be used the partion within extented bountry is used. I extended is delete than the all
with in extened wi be deleted

after ceating partion press "w" : update the partitions in parition table
partx -a /dev/sd<drive anme> : update the kernel table.(It is in RAM). partprob is RHEL 7/8. IT take the entry from partition table andupdate the kernel table in linux and safe our time to ebbot the system.
 mkfs.ext4 /dev/sd <drive name> : formate the disk
 mount /dev/sd<drive name> /mount dir

 #### TASK : Create a disk with 6 partion. 
