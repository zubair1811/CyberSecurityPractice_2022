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
  unzip -d <location> : this -d is used to unzip the file at diff location.
 ##### What is diff b/w gzip/bzip2 and zip.
  zip combine file in a single and compresss t like rar in window.
  
  defalte - to compress
  inflate - to decompress
  
  ``` file  <file name>``` this command used to check the file formate
  
