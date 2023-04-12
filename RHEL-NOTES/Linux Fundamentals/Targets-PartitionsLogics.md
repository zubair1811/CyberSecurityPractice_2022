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
  umount /mount drive : this wil remove the mount drive

 #### TASK : Create a disk with 6 partion. 

 
 File system- Its teh collectin of metadata
 File system includes
 1. Inode
 2. Inode Table
 3. Blocks
 4. Superblocks
 5. mount information
 
 ###### How many Drivers for 6 partition.
 ans: sdb ,sdb1, sdb2, sdb3,sdb4,sdb5,sdb6, 7 drivers
 
 ###### how many Fi;e systems can be created.
 Ans: becuase we have 6 oartitions than 6 FS.
 
 ##### How many pattition table.
 For one drive in is one.
 
 ###### What is diff. b/w mkfs (file sytems) version.
 
 ext2 -- centos v2
 ext3 -- centos v5
 ext4 -- centos v6
 xfs -- centos 7/8
 
 ###### How to create File system
 ``` mkfs.ext4 /dev/sdb2 ```
 
 There are other file systems in linux as well
 BTRFS
 ZFS
 GFS
 HDFS
 CIFS
 NFS
 
 
 ##### persistence the mount information of the drive.
 ```/etc/fstab``` : File system Table. It is said to be 9th critical file in lunux. add entry in this file. 
 This is a boot process, it run at time of system boot level. It contain mounting infomation.
 
 It conatin 6 feilds.
 minima singe space required to seperate feilds. 
 UUID: 
 1- feild --- device driver
 2- mount point
 3- file system type
 4- permisions
 5-FSK dump
 6-FSCK OFF/ON
 
 
 
 
