 # ApacheServer
 yum install httpd.* -y
 
 Deveoper create website, Admin host website called web hoster.
 
 TASK: ApacheWeb hosting.
 1- Create web page
 2- locate webpage -- document root path
 3- host website with path in http.conf file 
 4- Map website name with ip /etc/hosts
 
 Solutin:
 touch index.html
 mv index.html /var/www/html
 
 /etc/httpd/ : All apache related config files are in this location.
 /etc/httpd/conf/httpd.conf: main config, we have to edit through its child config for virtual hosting. The child conf. of this file is in ``` /etc/httpd/conf.d ```
 
 Heraricy as flowws:
 Main config of HTTPD: ```/etc/httpd/conf/httpd.conf ``` : This has incude tag which include its child config from below location
 CHild config of HTTPD: ``` /etc/httpd/conf.d ```
 
 ##### NOTE : 
 IN linux all document samples are stored int /usr/share/doc/
 Exampel: for HTTPD
  /usr/share/doc/httpd : these have all samples files for httpd. WE will copy the httpd-vhosts.conf  into /etc/httpd/conf.d  than
   edit in httpd-vhosts.conf : we will edit in this virtual host file.
  
  Apache Config file has three section:
  1- Global Setion
  2- Main section
  3- VH section
  
  WE will edit the httpd-vhosts.conf in the last of the file. where <VirtualHost> </VirtualHost> tags . These called containers 
  and the contetnts in these  are directives.
  In Container : change port to 80
  Document root: /var/www/html
  Servername: sysops.com <Any one>
  ServerAlias: www.sysops.com <for www alias>
  
  httpd -t : This is used to test the httpd conf file.
  
  ```
  systemctl reload httpd
  systemctl restart httpd
  systemctl enable httpd
  ```
  write the ip addres of the system to browser it will show the created page.
  to map the ip with name; add it in to etc/hosts with ip and name of stie. 
  
  
  ##### HOw to website ia accessabe browser to apache server.
  1- sysops.com --- resolve ip to name --- /etc/hosts
  2-connect to apache server
  3- port 80 ---> check conf --- Virtual hosts ---> server name -- match
  4- DocumentRoot ----  path --- fatech index.html and resposnd to the browser
  
  
  
  
