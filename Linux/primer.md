## This isth linux primer

#### Lecture-1
##### introduction to shell and bash shell.
Ctr + Alt + T: Open terminal
Ctr +shft + T: new tap


#### Lecture-2

clear or ctr + l: clear the screen
rm <filename>: remove file
rmdir <dir name>: remove directory
history: show the history of the used commands
ls: list the file and dirs

  
#### Lecture-3
grep : grep or find the command
ls | grep lo : find the files have lo
ls > test.txt : here > is the redirect commnad used to transfer the previous commad to next one.
##### NOTE: 
If we use this command directly with already data file then the previous data will be lost.
ls >> test.txt : Here >> is used to append the data at the end of the existing data.
  
#### Lecture-4 (linux file system)
 -how to organize the files
  in  linus we have complete control on file systems
  
  ```
  Main root directories in linux. "/" is the TOP level root directory
  /bin
  /boot
  /dev
  /etc
  /home
  /usr/
  /root
  ```
  #### Lecture-5 (Intruction to file systems)
  
  
  #### Lecture-6 (Working with files and Directories)  
  ls -lhr : ls is list, l deatil, h human readable, r reverse order.
  whoami: this cmd show what user are we using
  cp: copy the data
  
  ```
  example:
  cp file.txt /Download
  
  ```
  
  mv: move file or remain the file
  mv <old file name> <new file name> : here the file nam ewill be changed
  mv
  
  relative nad absolute file.
  
  ###### archieving the data
  tar -cf filename.tar ~/Documents
  tar -cf filename.tar.gz ~/Documents
  tar -czvf filename.tar.gz ~/Documents
  
  tar -xvf filename.tar
  tar -xzvf filename.tar.gz
  
  
  zip -r filename.zip
  unzip filename.zip
  
  ###### while cards
  rm filename?.txt
  rm *filename.txt
  
  tar -
  
  
  
  
  
  
