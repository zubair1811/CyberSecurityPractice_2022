# HERE we will dicuss the the OWASP defined WSTG








# 1- INFORMATION GATHERING



## Web server Fingerprinting

1: identify type and version of web server thata target is running on

#### Method: 
send requests investiage its response and compared to databases to known the server type and version.

#### Technique to test:
1. Banner grabbing: Its is a tecniques used to gain information about system on network and services running on open ports. In this tecnique we sent the
   request via ports and investigate its response headers
  - Used server port: HTTP, FTP, SMTP
  - Mostly used tools (Manual Testing):
    - **Telnet** for HTTP
    - **Nmap**
    - **Netcat**
    - **openssl** over SSL
  - Automated tools (Automatic testing)
    -  **Netcraft** : website which show details
    -  **Nikto** : Githup respo can find [here](https://github.com/sullo/nikto)
    -  **Nmap**, (GUI: Zenmap)  
 NOTE: 
 If server informaton is obsecured than understant tyh header feild papptern and match the other one to ientify the server name and type.
 Server information can also be identified via error responses. Send error request then check respose 
 
 #### LAB: 
 Other tools: (here the traget web estphp.vulnweb.com is just for learning purpose)
 - curl -i <target web url> : for example ```curl -i testphp.vulnweb.com```
 - nmap -sV --script=banner <target web url> : for example ``` nmap -sV --script=banner testphp.vulnweb.com ```
 - nikol -h <traget web url> example: ```./nikto.pl -h http://testphp.vulnweb.com```
 - wapplayer : it is an extentiono the teh web broweser that automatically performed the banner grapping.
   

  
 

