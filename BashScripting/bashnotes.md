##### These are bash scripting notes 

## Lecture-1 
### Basics 
```echo $SHELL``` : show the installed shell in OS
```cat /etc/shells``` : list the all shells in the OS
```which <shell name>``` : which bash : this will show the location of the shell mostly it comes from /usr/bin/bash
```env``` : this commnad show the envirnment vaiables 

 ##### Create a file and exticute the bash script without execution premision 
 
 ```vim test``` : create a test file usin vim editor
 in file write ``` docker -v uname ```
 bash test or sh test : these command execute the script
  
 ##### Create a file and exticute the bash script with execution premision 
  ```chmod +x <file name>```: chmod +x test this will allow the exution premission of file
  ./test : now this execute the script without bash or sh writing
  
  ### Note 
  In the bash file at start write #!/usr/bash  called shebang line. this tell the file that is using bash from that location.otherwise 
  it will use the default bash location  and run the execute the file.
  
  ## Lecture-2
  ```echo``` : this is used to display
```read``` : this is used to take input and soring variable 
 ##### echo command
  #### Varibale in bash scripting
    when ever we use the calling variable use $ symbol.
  ```
  abd=10 : this is a veriable
  echo $abd : this show the variable value
  ```
  we can also store the linux command in a variavle and then use echo
  ```
  linux ---> syntx ----> $(linux command)
  a=$(ls) : this will store ```ls ``` in a
  echo $a : show the ls result
  ```
  ##### read command
  ```
  read : this will asking for input
  $REPLAY : this will show the output which you input
  
  read <variable name> : read a : this will store the tyed input in to variable a
  echo $a: show the stored input
  
  read -p "Enter your name :" name  :this will print Enter your name : line and store th input in to variable name
  echo $name  show output
  
  read -n5 -p "press any key to exit": when you press any key it exit the command
  read -n1 -p "press any key to exit": Allow one key to strik
  ```

## Lecture-3

#### How to cahnge the shell
1- ```echo $SHELL``` : chcek current shell
2- ``` cat /etc/shells ``` check the all exiting shell and seect the location which you want to select
3- ``` cat /etc/passwd ``` :verify the current shell against login user
4- ``` chsh `` : this cmmand used to change shell, asked the login user passwrd
5- ``` /bin/bash ``` slect the your desir shell in my case i am moving sh to bash
6- ``` cat /etc/passwd ``` :verify the current shell against login user. some time does not show in ```echo $SHELL ```


#### Debugging 
 ```
 set -x : debugging on
 set +x : debugging off
  bash -x filenme : this will exetue the file with degubbing on
 ```
### TASK
``` current dir root/bash  change it into root/home using bash script and show result using pwd cmd ```
```source <file name>``` : write source while running the file
  source 3_lec.sh : this will change the dir
  
## Lecture-4
### Editors in linux
vi/vim/nano/gedit : create exising file, if no exist then create and open in editor
touch : create empty file
cat: read the file data
#### tr
```
tr ' ' '+'  it is used to replace the data with space. like here space is replace with + beween data sequence
tr ' ' '\n' : this list the data in new line
tr ' ' '*' | bc : this apply the tr opertion between data replace space with * ythen apply calculation using bc tool.
```

#### xargs
```
xargs -l1 : this is used to divide the dada into columns -l1 here 1 mean 1 coulmn
xargs -l2 : 2 coulumn
```

#### seq
``` seq ``` create a seq f range
```
seq 10 : creare a number from 1 to 10
seq 1 +1 10 : it create from 1 to 10 with 1 incrment, asending order
seq 10 -1 1 : decenting order 10 to 1
seq -w 01 10 : add width 0 with all number
seq -s - 10 : -s flag add the symbol between sequence
seq -s + 10 | bc : it add the + b/w sequence and then apply calculator (bc).
```

# Lecture-5
``` echo $? ``` is used to the commnad satatus. if it return 0 its mean commnad run succusful if return any other number than wrong commnad
0 mean True
1 mean False
[ "abc" == "abc" ]; echo $? : it will return 0
[ "abc" != "abc" ]; echo $? : it will return 1
[ 10 -gt 10 ]; echo $? here -gt mean greater than
[ 10 -ge 10 ]; echo $? here -ge mean greater and equal
[ 10 -lt 10 ]; echo $? here -lt mean less then
[ 10 -le 10 ]; echo $? here -le mean less and equal

#### if condition in bash scripr 
 
```
if [[ statement ]]
then
     (display output)
else
     (display output )
fi : this compulseroy for if statement     
##### semmilarly if else nested
if [[ staement ]]
then
    (dispaly output)
elif [[ statement ]]
then 
     (display)
else 
    (display)
fi
```
###### Example 
```
echo -n "Number a"
read a
echo -n "Number b"
read b
echo -n "Number b"
read b
if [[ $a -ge $b ]] && [[ $a -ge $c]]
then
      echo "a is big"
 elif [[ $b -ge $a ]] && [[ $b -ge $c]]
 then
      echo "b is big"
 else 
      echo "c is big"
      
 fi

```

# Lecture-6
bash if else examples with system commands palying.

### TASKS
```
1- Check the service installed using which command and echo $? : if show 0 then serice installed 
2- check the serice installed using ps -ef | grep <service name> | wc -l : if number gearter than 1 then serive installed 

```

# Lecture-7

# Lecture 11
while loop
```
while <comdition>
do
   <dispaly reslt>
done

```


# INTERVIEW: 
### How to read file from bash script.

```
file = "<file name we want to exess>"
while read <variable>
do 
    <dispay result>
done < $file
```
there is another syntx to do the same
```
file = "<file name we want to exess>"
cat $file | while read <variable>
do 
    <dispay result>
done
```
similary we can use other command
```
command | while read <variable>
do 
    statement
done

##### Example
ls -ltrh | while read each_line
do 
    echo "$each_line"
done
```
### HOw to seperate teh ips from a CV file using bash script.
 while loop wit IFS
 IFS: Internal field seperator
 ```
 while IFS="," read <variables>
 do
     statements
 done <$file

#### Example:
file="/root/zubair/bashscript/11_lect.csv"
while IFS="," read var1 var2 var3 : here "," indiicates that there are comma seperator in data
do
    echo"$var3"
done < $file
### NOTE: if there are wide spaces seperator are used then no need to use IFS
file="/root/zubair/bashscript/11_lect.csv"
while read var1 var2 var3 
do
    echo"$var3"
done < $file
```
