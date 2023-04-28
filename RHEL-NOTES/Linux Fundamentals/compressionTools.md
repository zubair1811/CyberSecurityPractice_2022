#### Compresssion Tools
gzip <file name> : compress
bzip2 <filename> : compress

###### Ddecompress
gunzip <file name>
bunzip2 <file name>
  
  #### Note:
  Compress tool selection depends upon size of file.
  1- gzip good for small file -- low compression bit fast
  2- bzip or bzip2 good for large files with good compression, slow, high compression.
 ##### Read Compress Files
  zcat is used read the compress file data with out decompress.
  
  ##### Archive files
zip: archive and compress
``` zip <destinantion.zip> <source files> ```
zip <name of created file >  <file want to zip>
 zip fun.zip * : * mean all in current dir
  zip fun2.zip file1 file2 : this will arcive file1 nd file2.
  unzip <archive.zip file>
  unzip -l <filename>: This is used to just list the file in arcive not unzip
  unzip -d <location> : this -d is used to unzip the file at diff location.
 ##### What is diff b/w gzip/bzip2 and zip.
  zip combine file in a single and compresss t like rar in window.
  
  defalte - to compress
  inflate - to decompress
  
  ``` file  <file name>``` this command used to check the file formate
  
  How to add file in already archive  zip file.
  How to unzip specific file.
  How to change copression ration.
  
  
  ##### TAR: TAPe ARCHIVE---- LInux Native TOOL 
  Tar just ony archive no compression.
  
  tar -cvf <filenames.tar> : c - create, v-verbose, f-file, THis is used to create file
  tar -tvf <filename.tar> : t- list file
  
  
  ##### TAR with compression
  1. Use gzip : tar -zcvf <filename>
     - example ``` tar -zcvf cpp.tar.gz *```
     - Extract: tar -xvf cpp.tar.gz
  2. Use bzip2: tar -jcvf <filename>
     - example ```tar -jcvf cpp.tar.bz * ```
     - Extract: tar -zvf cpp.tar.bz 
  
  
  ### INTERVIEW:
  HOw to tae backup of /var
  1- using tar: tar -cvf /var /home
  2- zip: zip /var /home
  
  
  ###### BACKUP tools in linux
  1- cp: Just copy files not dirs
    - cp -rv <location>: -rv tecursive used to include dir also
  2- rsync: It is a very powerful tool. Used for local and remote, it is also used for
  
  ###### Backup Types
  1- Full Backup
  2- Incremental backup (rsync)
  3- Differential Backup
  4- Cumulative Backup
  
  rsync with compression
  rsync | tar
  rsync | zip
  
  
  LTO: linear Tape operator
  SAN:
  NAS:
  
  rsync -avz <Source>  <Destination location>
  
  stat <file name> : this command show the all astatistic of the files,
  ACCETIME : atime
  MODIFY : mtime
  CHNAGE TIME: ctime (onwership or permissions change)
  
  ##### HOW rsync works.
  IT comapre source and destination file modiy time and if any changes in source then it will copy only incremental data.
  
  Remote backup
  rsync -avz --delete /opt/tusday/*  <Remoteserver IP:path where past>
  

  
  Sumamary:
  BACKUP TOOLs:
  1- tar
  2-zip
  3-cp
  4-scp
  5-rsync
  
  COMMERCIAL BACKUP TOOL
  1-veritas Netbackup
  2-Windows Netbackup
  3-TS
  4-VEEAM
  
  
  OPENSOURSE BACKUP APPLICATION
  1-AMANDA
  2-ZAMANDA
  3-BACULA
  4-BACKUPC
  
  
  
  
  
