# NFS: Network file sharing/ Network file service.

Server: On which services run.
Client: Which use that services.
IN COMPNY LIVE SCANRIO:
 MUltilpe services of Protocol: (used in a company)
 1- NFS
 2-FTP
 3-Samba
 4-DHCP
 5-DNS
 
 If we run the all services in signe server (we can becuse each service have unique port) it can can problem of failure. If server down no service will be avaible.
 In company make clusters of server called Heigh avaibility. 
 So, In company we sagrigate the service with different server.
 
 NFS detail:
 1- It run on port 2049.
 2- Works on UDP protocol.
 3- Provide Linux to linux service (Standard) but therea are workaround for linux to window al well.
 4- Does not ask for username and password: Drwaback
 
 SAMBA: file server
 1- It run on 137/139/335 port
 2- Wrks on TCP protocol.
 3- Linux to linux , linux to window
 4- Require username and password.
 
 In general Samaba is good than NFS. BUT nfs is faster than Samaba. In AWS EFS is similar to NFS. 
 
 
 ### SETEPS FOR NFS CREATING
 NOTE: Here we are using Centos-7 as Server and Centos-6 as Client. WE need IP for server and Client.
 
 ```
 ip r l : to check ip
 ifconfig : To check ip
 route -n : To check GATEWAY IP
 ```
 ##### STEPS to create SERVER and CLIENT MODEL

 ```
 1- SET hotname of machine.
 RHEL-7
 hostnamectl set-hostname <name like server1.example.com> --static : tempraray set
 /etc/hostname : add name here for perminant.
 hostnamectl: check hostname
 
 RHEL-6
 hostname <name like server1.example.com>  temprary
 /etc/sysconfig/network : add name here for perminant. after change if not show hostname refresh system **su -** cmd.
 hostname: check add hostname
 
 2- Link the host with IPs.
 standard ways using DNS:  name to ip mapping.
 However, we use FLAT DNS: Other type of DNS. _/etc/hosts_ this is the FLAT DNS. WE add the ip and link it with hostname. 
 
 NOTE: Every appliction first chcek this file if not find then visit the actual DNS.
 So, we add the IP and server/client name. First check the IPs of the yuour machine using IPs cmd and map it with hostname
 Example:
 192.1.1.1 server1.example.com
 
 We can also cretae short name
  192.1.1.1 server1.example.com <serve1>: here server1 is the shortname
check 
ping server1

Similary as above we can cretae Client hots and server host and add mapp then it ips. TO make communction b/w then add both ips into etc/hosts file.

 ```

 ##### NFS_SERVER
```
1- Create Server as above Steps. (Chcek communicate with Client)
2- Install NFS:
 rpm -qa | grep -i nfs-utils : check this pkg/ if not then istall it
 yum install nfs-utils -y
3- Start Service:
 systemctl restart rpcbind: its is a dependency of nfs
 systemctl restart nfs
4- To make auto start theese seevices  while boot.
 systemctl enable rpcbind
 systemctl enable nfs5
5- Chcek NFS port is open or not
netstat -tulnp | grep -i 2049
ss -tulnp | grep -i 2049

6- Add teh entery in export file to shareing dir.
 vi /etc/exports : add the share dir path.
 <pathnof share dir> *(sync)
 Example: /opt/nfs-server *(sync)
7- Reload the changes in RAM
 exportfs -rv : after this cmd it is in RAM and NFS file system take this.
 export -v #optional to check the setting.
 
 ##### (STOP FIREWALL)
  firewall-cmd --state
  systemctl stop firewalld : this stop the running 
 
 
 ```
 
 ##### NFS_CLIENT
 
 ```
 1- Create Client  as above Steps. (Chcek communicate with Server).
 2- Chcek it show Server share directores or not.
  showmount -e server1 : server1 is the nbame of server. This cmd show error like 113 not route to host. Becaues firewall is open in Server.
  Go to server and run follwing CMD
  firewall-cmd --state
  systemctl stop firewalld : this stop the running 
 3- Again check 
  showmount -e server1: this will show bteh share dir name.
 4- Mount the server share dir with client dir.
 mkdir /myshare : Make any directory
 mout server:/opt/fileserver /myshare ; now we mount the server share 
** /op/fileserver** with **myshare** at client side
 5- check mount using df -h
 TO make the mount permnant
 add in /etc/fstab
 server1:/opt/fileserver /myshare nfs default 0 0 : save and exit and will have permanant mount fir share dir.
 ```
 
 
 ###### FTP: Lecture : NFS-2 and FTP
 How to run Yum in RHEL-6:
 In RHEL-6 Repo is end of life. Yum repois discontinued.
 1- Mount the RHEL-6 CD --> go to package and install the pkg. Manul way.
 2- There is a workaround to run YUm from repo.
  Use Centos-VAULT. By using Valut repo can run YUM.
  Got to ```https://www.getpagespeed.com/server-setup/how-to-fix-yum-after-centos-6-went-eol``` 
  
  
  
  #### HOw t change the permison of NFS File system.
  exportfs -v: This show the permisions.
  vi /op/fileserver *(sync, rw): here we change read write permision. Previous it wa ro by default.
  When we sent the data from client to server. NFS servcer first check the NFS persion then share file/folder persion.
  Give the full persion
  chmod 777 /opt/fileserver
  
  ###### IT Thechnologies we discuss above
  Filse Server: In window
  Linux: NFS/Samba
  Benefit: Centrized storage for multiple clients.
  
  # FTP: File Tranfer Protocol
  FTP -- TCP , work layer 4, (TCP, UDP works on layer 4)
  
 ANY application ask username/password --TCP.
 NFS and Samba: File sharing Server. IF srver down file are not acsessable. Not downable.
 FTP: Download data in local HHD of client.
 IF run FTP name of App. and servers in FTP:
 
 wuftpd
 proftp
 sftp: Secure FTP. This is mostly used in Bank industry.
 vsftpd: Very secure FTP
 
 1- FTP run on 20/21 port
 2- 21 main port used for connection
 3- 20 used for data transfer.


Package: ftp
rpm -qa | grep -i ftp
yum install vsftp-* -y ; Here -* mean any thing after vsftp like anyudate servion name. TO avoid packet conflect

systemctl start vsftpd : Start
systemctl enable vsftpd : enable while booting
systemctl is-active vsftpd
systemctl is-enabled vsftpd

##### Check the port is open of NOt
1- telnet 127.0.0.1 21
2- nc 127.0.0.1 21
3- ss -tulnp | grep -i 21
4- netstat -tulnp | grep -i 21

#### What is the default path of FTP
/var/ftp/ : this is the main location which client access from  FTP server

NOTE: Whole procedure looks like that.
cient  pin the server IP. Server check FTP port is open or Not and then give teh access to th default path of FTP. All the files in th default path can be
accessabe to the clients.

#### How to use
GO to the client Browser write
ftp://server1 : Here server1 is our server name. We can also used IP.


##### Check Service detail
RHEL-7
sytemctl list-units
systemct list-unit-files

##### Basic Steps for Service checking
rpm -ql <Pkg name> : this show the all teh file which wher write by the pkg.
rpm -qc <pkg name>: show the configuration files
rpm -qd <pkg name>: Show the docuentaion of the pkg
NOTE: Main is the binary file. 
systectl/service <pkg name> start: this load the binary of that pkg into RAM. What we can load this binary without service cmd using following comds.
 which <pkg>: this will sho th path where binary file is exist.
 GO to that location and enter.
 Example.
 which vsftpd : it will show /usr/sbib/vsftpd just go that loaction and enter it will load that binary ito RAM.
 ## How to remove the service from RAM. Get the pid and then kill it.
 
 NOTE: Mostly we run using systemctl r service command. If it is not working than start directly. 

# Types of FTP user.
1- Anonymous --no identification
2-locak user -- normal user /etc/passwd
3-virtual user -- not in /etc/passwd

By default FTP has anonymous user , no username and passwd. Not secure.

#### HOw to disable Anonymous
 1- Change in Binaary source code--- Customize changes at compile time.
 2-Config change. (Each programm has Config file that change parameters at runing time)

 Example:
 etc/vsftpd/vsftpd.conf : this is the config file for vsftpd service
 NO the anonymous tag: it wil ask the username and password now.
 ##### NOTE: WE working with config file must take backup. If we change any config file restart the service must.
 service <service name> restart
 NOTE If not working check firewall at server and turn off it. In company mostly we do not used restart/start service commd it destory the previous poging working. Therefore, we use ```service reload <service name>```
 
 Now when we access server from client it will asked for user name and password. We can login using any local user/passord in server sider users. 
 
 ######## FTP pkg in cient for cmd line access. 
 ftp <server1: server name>: this will ask user and password any user fin server side to login
 help cmd show the all cmds for ftp pkg. 
 NOTE: IT will not work check selinux
 ``` sestatus ``` then turn off the service ``` setenforce 0 ```
Challenge: There is security risk in VSFTPD as when use access it show the root access as well as data if the root dir so the user can download teh whole root dir. TO limit this we do changes in config file of vsftpd where ``` chroot_local_user `` tag . this limit the root and make the current share of the user as root. 
 
 
 
 
 
 
 
 
 
 
 
