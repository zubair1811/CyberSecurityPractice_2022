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
```
1- ```echo $SHELL``` : chcek current shell
2- ``` cat /etc/shells ``` check the all exiting shell and seect the location which you want to select
3- ``` cat /etc/passwd ``` :verify the current shell against login user
4- ``` chsh `` : this cmmand used to change shell, asked the login user passwrd
5- ``` /bin/bash ``` slect the your desir shell in my case i am moving sh to bash
6- ``` cat /etc/passwd ``` :verify the current shell against login user. some time does not show in ```echo $SHELL ```
```

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
 \: backslash
 \a: Alert (BELL)
 \b: backspace
 \c:suppress trailing newline
 \f:from feed in short clear yur screen
 \n: new line
 \t: horizontal tab
 \v:vertical tab
 
 
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
 echo "we can learning bash" | tr [a-z] [A-Z] : change small to capital letters
 tr [a-z] [A-Z]<<<"we are learing bash" : if cat is not used then use three <<<<
 abd="we are earning bash"
 echo $abd
 tr[a-z][A-Z] <<< $abd
 doceket -v |tr [a-z][A-Z]
                                                                                 
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
 : "                <single qoute can also be used>
 hhsahdk
 shhhksad
 shdkhsdk
 "
 ```
 
 # lecture-15
 #### position parameters with shift commmad
 
 ####### single shift postion
 vim shift.sh
 ```
 #!/bin/bash
 echo "count $#"
 echo "$1 $2 $3"
 shift 
 echo "$1 $2 $3"
 echo "count $#"
 ```
 
 #### output
 ```
./shift.sh abd zub ism
count 3
abd zub ism
zub ism
count  2
 ```
 
 ####### muti shift position
 vim shift.sh
 ```
 #!/bin/bash
 echo "count $#"
 echo "$1 $2 $3"
 shift 1 :bydefault shift is a shift 1
 echo "$1 $2 $3"
 echo "count $#"
 shift 2 : it miss two parameters
 echo "$1 $2 $3"
 echo "count $#"
 ```
 
 #### output
 ```
./shift.sh abd zub ism
count 3
abd zub ism
zub ism
count  2
 ism
count  1
 ```
 
 ###### Difference b/w $# and #*
 $#: show the parmaters with double qotes
 $*: Display the entered parameters
 
 
 ```
 vim post.sh
echo "example of : \$@"
 for $each in "$@"  : this will show variable with double qoutes
 do 
    echo $each
 done
 
 echo "example of : \$*"
 for $each in $* : this will show all entered values
 do 
    echo $each
 done
 
 ```
 ###### output
 ./post.sh muhmd zub ism "1 2" "3 4 5"
 
 example of : $@
 muhmd 
 zub 
 ism 
 1 2 
 3 4 5
 
 Example of $*
 muhmd 
 zub 
 ism 
 1 
 2 
 3 
 4 
 5
 ```
 
 # Lecture-16
 #### Break and continue statements
 
 Break: It is use for exit the loop
 continue: It is use skip the current current then continue next.
 ``` echo "start the loop"
 fr i in $(seq 1 10)
 do
   if [[ i -eq 5]]
    then  
         break
    fi
   echo $i
 done
 echo "Ending the loop"
 ```
 
 output
 ```1
 2
 3
 4
 ```
 
 #### continue
 
 ```
 echo "start the loop"
 fr i in $(seq 1 10)
 do
   if [[ i -eq 5]]
    then  
         continue
    fi
   echo $i
 done
 echo "Ending the loop"
 ```
 output
 
 ```
 1
 2
 3
 4
 6
 7
 8
 9
 10
 just miss the 5 and continue.
 ```
 
 # Lecture-17  (Practice Phase)
 please check the ![Shellscripting_Practice_Task.pdf](Shellscripting_Practice_Task.pdf)
 
 
 
 # Lecture -18 (String operations) 
 
 ```
 name=muhammad zubair islam
 echo "${name}"
 ```
 
 ##### Total characters 
 
 ```echo "${#name}" : use # to count```
 
 #### concatination
 ```fname= zubair
 lname=islam
 fullname=$fname$lname
echo "${fullname^^}" ```
 
 ###### Lower and upper case
 ``` echo "${fullname^^}" : upper case
     echo "${fullname}" | tr [a-z] [A-Z] 
 
 echo "${fullname,,}" : lower case
 echo "${fullname}" | tr [A-Z] [a-z] 
 ```
 
##### Replace
 ```echo "${fullname/muhammad/MUHAMMAD}```
 
 ###### Remove
```echo "${fullname/muhammad}```
 
 
 #### slicing 
 ```
 echo "${fullname:0:2} : display from index 0 to 2
 echo "${fullname::} : display all
 echo "${fullname::-1} : display from last
 
 ```
 
 # Lecture-19 Array
 An arry is a collection of elements
 Empty array can also be made.
 
 #### Array initilizationn 
 ```
 abd=(1 2 3 zubair)
 echo "${abd[*]}"
 ```
 
 #### alll didpaly
 
 ```
 echo "${abd[*]}" : here * or @ is used to display all elemnts
  echo "${abd[@]}"
 ```
 
 ###### slicing
  echo "${abd[0]}" : show 0 index element
 echo "${abd[*]:1:3}" : show 1 index to 3 index elements
 
 ###### Indexing
 ```
 echo "${!abd[*]}" : show the all index
 echo "${#abd[*]}" : count the otal elemnts in a array 
 
  ##### store command in the array
 cmd =($(docker -v))
 echo "${cmd[*]}"
 ```
 
 #### arry from user define "read"
 use -a flag
 
 ```
 read -a test
 muhammad zubair islam
  echo "${test[0]}" : muhammad
  echo "${test[1]}"  : zubair
  echo "${test[2]}" : islam
 ```
 
 
 ##### key and value
 
 ```
 syntax
<variable>=([key]=value [key]=value [key]=value)

 Example:
 test=([2]=4 [6]=10 [30]=8)
 echo "$[!test[*]]" : 2 6 8 show the key value
 echo "$[test[2]]" : 4, show the key 2 value which is 4.
  echo "$[#test[*]]"  : show the total count 3
 
 ```
 
 #### string in a Array as key value 
 ```
 declear -A <name of the array>
 It is used to consider string while simple with out declear struing is niot used as akey value
 declear -A test
 test=([fnmae]=zubair [lname]=islam [age]=28)
 echo "$[!test[*]]" : fname lname age show the key value
 echo "$[test[fname]]" : zubair
 ```
 
 # Lecture-20 (Functions)
 ##### function: function is a bock on code which reduce the unwanted line inyour script. and help in organizing long script intpmanagable module
 There are two types of function define
 1- method
 
 function <function name> ()
 {
     sattement
 }
 
 2- method
 <function name> ()
  {
      satement
  }
 ```
 ```
 #### Vaibale in a function
  1-Global
  2-local
 if we write local with avariable its scope within function only and global can be access anywhere.
 
 
 ### return
 return will not show output but exit status command ``` echo $? ``` will show the return value. It will not work with string value.
 
 
 #### argument passing using position variable concept.
 
 
 # lECTURE-21 (GREP COMMANDS AND ITS FLAGs)
 
  -i: ignore_case, select in any case line upper and lower
  ```
  cat abd.txt | grep -i zubair: it can aslo find Zubair
  ```
  -w= match case only
  -v: invert the matching
  ```
  cat abd.txt | grep -v "#" :this will selct the all code which is not comment
  ```
  -o:only watching in new line
  -c: count the matching from whole dataqq  
  -A : after matching show line
  
  ```
  abd.txt | grep -A -1 "zubair" :show the after line matchin zubair
   abd.txt | grep -B -1 "zubair" :show the before line matchin zubair
   abd.txt | grep -C -1 "zubair" :show the before and after line matchin zubair
  ```
  
  ```
  -r: show where the following thing are used
  grep -r "Devops" : find where and which file used Devops
  grep -l "Devops" * : find exect matching and list file
  -h: hide the file only show content
  -e: how multiple matching (all are same)
  abd.txt | grep -e "zubair" -e "learning -e "trainer"
  abd.txt | grep -E   "zubair|learning | trainer"
 abd.txt | grep -egrep   "zubair |learning | trainer" 
 ```
  
  abd.txt | grep -Ew  "zubair" | "learning | "trainer" : new line
  
  we can also serach using define pattern innfile
  
  add.txt : this contain 
  root
  zubai
  admin
  lab
  
  ```
  cat /etc/passwd | grep -f add.txt    : -f mean file
  cat /etc/passwd | grep -wf add.txt : whith new line 
  ```
  ^<something>: this is used to find the content at start
  
  ```
  cat /etc/passwd | grep | -v "^#" : here meaning that  shwo the content which is not start with #.
  ```
##### INTRVIEW:
  1-Find directory in current directory
  2- Find files in current directory
 
 
 $: match the content
 cat abd.txt | greb -E "cource.$" :find line with cours.
 
^$: empty lines
  
  . : show all special characters
  \b : to display only match string
  
  i :check optional cndition
  
  {N} will display N times
  
  ##### TASK: INTERVIEW
  cat urls.txt :create thus
  we have some url example so please find deow for grep command.
  please cjcek and let me know if yu are solving.
  
  http://google.com
  https://google.com
  ftp://mywebserver.net
  ftp.//myweb.edu
  
  # Lecture-22
  ```
  cat urls.txt | grep -E "^(http|https|ftp):[\/]{2}([a-zA-Z0-9\-\.]\.[a-zA-Z]{2,4})"
  ```
  
  ###### cut command
  file | cut <options>
  cut <option> file name
  
  ```
  data.txt | cut -c 2 : show first two character from each line
  
  docker -c | cut -c 16-23 : this will cut from 16 to 23
  
  data.txt | cut -f 1 : it select the column which has tap space
  ```
  
  delimeter : if there is no tap sapce then use delimeter with defined character
  -d " ": space sepectrator
  -d "," : colon sepecrator
 
  ```
   cat /etc/passwd | cut -d ":" -f 1-10 | grep lab1
  ```
  
  outputdelimeter : replace the exisiting delimeter feild with your define
  
  ```
  cat /etc/passwd | cut -d ":" -f 1-10 --output-delimiter="-->" | grep lab1
  ```
  
--compliment: it will not show the mentioned feild
    
  ```
  cat /etc/passwd | cut --complement -d ":" -f 1 | grep lab1  will not show first feild
  ```
  
  #TASK: find ips
  
  ```cat ips.txt
  apache,192.168.1.12
  sftp,192.168.1.3
  nginx,192.168.1.5
  
  ###### all ips
  cat ips.txt | cud -d "," -f 2
  ####### just apacje ip
  cat ips.txt | grep -i "apache"| cud -d "," -f -2 
  ```
  
  
 # Lecture-23
 AWK is used for data manipulation, searching, task run, action, data generating report.
 
 AWK syntax:-
 filename OR command | awk option 'pattern {}'
 OR
  awk option 'pattern {action}'
  
  AWK options:-
  -F : Field Saparator
  -f : Filename you need to specified
  
  AWK variables:-
  1. $0, $1, $2, $3, $4 so on
  2- NR --> number of records
  3- NF --> number of field
  4-FILE

  
  ```
  cat userdata.txt | awk '{print $0}' : it show the all data
  cat userdata.txt | awk '{print $1}' : it show the firt column data
  cat userdata.txt | awk '{print $2}' : it show the second column data
  cat userdata.txt | awk '{print $1,$2,$3}' : it show the frt three column data
  cat userdata.txt | awk '{print NR}' : it show the row number on each data
  cat userdata.txt | awk '{print NR "-->" $0}' :show the row number on all data and specerate with -->
  cat userdata.txt | awk '{print NF}' :Total feild in each row
  cat userdata.txt | awk '{print NR -->" $0 "-->" NF}' :Total feild in each row
   cat userdata.txt | awk 'NR==1' :show the feild in the row
   cat userdata.txt | awk 'NR==1 {print $2}' :show the feild in the row
   cat /etc/passwd | awk -F ":" '{print $1}'
  
   cat userdata.txt | awk -F " " '/a/ {print $2}' :show the all column data which "a"
  
  #### Find the satatus of docker using awk, also find version number
  systemctl status docker | awk 'NR==3 {print $2}'
  ```
  
  # Lecture-24
  
  Awk will use two type of your requirment
  1. AWK command
  2. AWK scripting languages
  
  AWK script syntax:-
  filename | awk 'BEGIN {start_action} condition {action} END {stop_Action}'
  filename | awk -f <filename.awk>
  
  ###### OFS: output feild seperator
  ```
  date | awk 'OFS="_" {print $2,$3,$4}' : OFS is used to define your own seperator
  ```
  
 ##### AWK scripting
  ```
  awk 'BEGIN {print "Hey, I am and zubair islam"}' : simple method
  
  vim simple.awk
  BEGIN {
           print "Hy, I am zubair"  
  }
  
  awk -f simple.awk
  ./simple.awk : directly will not work
  insert sbash line
  #!/usr/bin/awk -f
  ```
  
  ```
  who | awk 'BEGIN {print "Active Session"} {print $1,$4}'
  ```
  
  ##### Find tota uers and enlist then 
  ```
  cat /etc/passwd | awk -F ":" '$3>=1000 {print $1, $3,$6}' : userid greater then 1000
  cat /etc/passwd | awk -F ":" '$3>=1000 {print $1, $3,$6}' | wc -l
  cat /etc/passwd | awk -F ":" '$3>=1000 {print $1, $3,$6}' > user.txt
  ```
  
  
  ###### -v: Variables and -f files
  
  ```
  awk 'BEGIN {ali=100; print ali}' : in awk with quote variable can be used without $ to get value
  ali=100
  awk -v n=$ali'BEGIN {print n}' :  other case where varibale outside
  ```
  
  ##### serach specific data
  ```
  cat/etc/passwd | awk 'BEGIN {print "Begin block"} /alnafi/ {print $0} END {print "End block"}'
  ```
  
  ####### feild as a seperoator
  ```
  echo "muhammad zubair islam" | ak -F "zubair" '{print $1}' : show muhammad
   echo "muhammad zubair islam" | ak -F "zubair" '{print $2}' : show islam, here zubair is bworking as a seperator
  ```
  
  ####### if condition
  vim cat.txt
  20
  30
  10
  1
  2
  4
  6
  8
  38
  15
  24
  18
  cat num.txt | awk '{if ($1>=30) print $1}'
  cat num.txt | awk '{if ($1>=10 && $1<=30) print $1}'
   
  ###### For loop
   
  ```
   cat num.txt | awk 'BEGIN {for (i=1; i<=10; i++) print "The number", i}'
  ```
  
  ### while loop
  
  ```
   cat num.txt | awk 'BEGIN {i=1; while(i<=10) {print "The number", i++}}'
  ```
  
  ##### Exmple: store the name and size of the dire Alnafi in a file
   ```

    ls - ltrh | awk -v OFS="\t" 'BEGIN {printf "%s\t%s\n" , "NAME", "Size"}{print $9, $5}' : here printf used to define header
   ```
  
  # Lecture-25
  
    
    i : insert beforethe line
    a : inser after the line
  
