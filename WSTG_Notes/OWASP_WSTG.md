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
   

  ## Enmeration: web application discovery 
  Factors on influencing how many app. are related to given DNS name (or IPs).
  1. Different Base URL or NOn- standard URLs: Example: ```www.example.com/url1, www.example.com/url2, www.example.com/url3```
  2. Non-standard Ports: Example: ``` www.example.com:port like www.example.com:2000/ ```
     - Web app usauly live on port 80(http), 443(https)
  3. Virtual hosts: Example ``` www. example.com, helpdesk.example.com, webmail.example.com belongs to single ip```
     - single ip belongs to a multiple DNS names
   
   Approach to test the challenge: discover the Web information as per above mentioned challenges
   1- Deal with Non-Standard URLs : 
     - Vulverability scanners: Nessus, Nikto
     - use Google doreking with site operator to find all hidden urls
     - dictionary-stylle search (intelligent search)
  2- Deal with NOn-standard Ports
     - Use of Port scanner tools like **nmap** : Example script ```nmap -Pn -sT -sV -p0-65535 ``` for all 65535 TCP port address space
       then based on the results we chcek the port information or webiste with port as mentioned above
  3- Deal with Virtual host: DNS names associated to IP address 
     - DNS Zone Transfers: Find DNS using NS in tools like
       - host  ``` host -t ns www.example.com``` and then ```host -l www.example.co  <dns result oh host with ns>```
       - dig
       - nslookup 
     - DNS inverse Quries
     - Wen-based DNS Searches
       - Netcraft
     - Reverse-IP Services
       - with search engine Bing: example: ``` ip:x.x.x.x```
       - whois: this is a website to check DNS
       -DNSstuff
       -Net Squre
   
   
   
   
   
   
 

