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

Nested if else
if -- has then and fi
else --- has no then and no fi
elif -- has then but no fi

Learn Exaples of nested if else

# Lecture-8
Postional parameters 
$0 ---> programm or script
$1 .. 9 parameters passed
$# --> Count the total parameters
$* --> Display the prameters passed
$@ --> similar to $* but used to fetech the arguments when double qoutes are used
$$ ---> Provide the current PID of the shell
$? --> Status of the last command 0 mean sucess 

#### TSAK: Check the service status using positionla parameters 
1- using Simple read command variables
2 - Using positional parameters concept and limit to positional paramters using if

# Lecture-9
Loop: In programming langauge any repreated task task more than one.
A loop is sequence of instruction that is continoully repreated until certain condition reached.
Types of Loop
1-For loop
2-While loop
3- Until loop
4- selected case loop

```
For variable <condition or fange>
do
    statement
done
```


# Lecrure-10
Details and practie on For loop
#### INtervivew: How to crete a 10 files with one command
touch file{1..10}
```
for i an {1..10..2}  2 is the deley incrment 
do
   echo "$i"
done
C lanagueg syntx can also be used

for (i=1; i<=10; i++)
do
   echo" $i"
done
```

-x : is used to check the executabe premisiion 
```
if [[-x simple.sh]] 
then
    echo" it has premision"
else
    echo "not"
if

for each in $(ls)
do 
      if [[-x $each]] 
      then
           echo" it has premision"
       else
            echo "not"
        if
done
```
#### -f is used to check the file or not
```
for each in $(ls)
do 
      if [[-f $each]] 
      then
           echo" it is a txt file"
       else
            echo "It is a dir"
        if
done
```
    


# Lecture 11
Infinity loop; there are no limit in yuor condition its called infinity
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
### NOTE: if there are wide spaces seperator are used then no need to use IFS: Bydefault it use space.
file="/root/zubair/bashscript/11_lect.csv"
while read var1 var2 var3 
do
    echo"$var3"
done < $file
```

# Lecture-12
 ### Difference b.w while and until loop
 while loop are desing to run a condition is staisfied and terminated once that condition returns false.
 until loop are designed to run while the condition return false and olny terminated when condtion return True.
 unitl --> falise to true
 while --> True to False
 ```
 unitl <condition>
 do
    statement
done
 ```
 #### Example:
 start=1
 until [[ $start -ge 5 ]]
 do 
     echo "Number is: $start"
     ((start++))  : This can be written as ```start=`expr $start + 1` ```
 done
 
 ###### Note
 -e flag is use to check the existance of file. -e is adance level of echo
 until [[ -e /temp/sample.txt]]
 do 
       echo -e " File is nor exit"
done
echo "File in not exit"

# Lecture -13 (Select Loop)
Seect Loop: used for manu driven program
case <variabe> in
         pattern) 
                 staement
         ;;
         pattern) : This is your logic yu want to serach
                 staement
         ;;      : For move next
         *)     :This is fo false statement
                 staement
         ;;
 esac
 
 ##### Example
 ```
 echo " plesae enter the number b/w 1 to 3"
 read num
 
 case $num in
           1)
                 echo "Yiu have enter the one number"
            ;;
            2)
                 echo "Yiu have enter the one number"
            ;;
            3)
                 echo "Yiu have enter the one number"
            ;;
            *)
                 echo "Yiu have enter the one number"
            ;;
esac
 ```
 
  ```
 echo " plesae enter yu file extension"
 read ext
 
 case $ext in
           ".txt")
                 ls -ltrh *.txt
            ;;
            ".sh")
                 ls -ltrh *.sh
            ;;
            *)
                 echo " sorryy, yiu have ener the invalid extension"
            ;;
esac
 ```
 
echo -e "\n1. Operating syste information" ; here -e is used fr new line. 
 
### TASK: 
1- MAke a code fo file search via extention using select loop.
2- Make a manu script with below details using select case.   
 1. OS details
 2. Hostname
 3. Memory
 4. Disk DEtai
 5. Network IP details
 6. Last Logged User
 7. Process Usage

 # Lecture-14
-e option used to interpretation of blacslash.
 and \ with special character can aso be used
 
 age=28
 echo -e " My age is \$age $age" :--- age 28
 
 \a: 
 \b: 
 \c:
 
 
 #### Redirections
 
 vim HS.sh
 ``` 
 ##### NOTE: This is used to display multi libes without echo
 #!/bin/bash
 cat<< ABD
 MY current user is $USER
 MY current directory is $PWD
 ABD
 ````
 
 ./HS.sh >> file1.txt : redierct the data to file 1
 ##### This can also be done within command
 ```
  #!/bin/bash
 cat<< ABD >file2.txt
 MY current user is $USER
 MY current directory is $PWD
 ABD
 
 ##### tr flags
 echo "we can learning bash" | tr[a-z][A-Z] : change small to capital letters
 tr[a-z][A-Z]<<<"we are learing bash" : if cat is not used then use three <<<<
 abd="we are earning bash"
                                                                                 
                                                                                 
                                                                 
                        
                                                                                 
 
 #### Comments
 ##### single lien
 # is used
 
 ##### Multi line
```
 << ABD
 hdkshkdh
 dsjdsj
 ABD
 ```
 
 ```
 : "                <>sngle qoute can also be used
 hhsahdk
 shhhksad
 shdkhsdk
 "
 
