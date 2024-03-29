# HERE we will dicuss the the OWASP defined WSTG


# 1- INFORMATION GATHERING

There are two types of information gathering or cyber reconnaissances
1. **Passive Testing**
- Get infomation of the target without direct interacting with target.
- Target not know you are geting information about them
- Use Open source intelligenve (OSINT) to get IP,, DNS, email, names, hosts and software running details etc. and its association with Common vulnerability expolites (CVE)
- Google Hacking or Dorking, Netcarft, Shodan search engin etc.
3. **Active Testing**
- Directly interact with target to get information.
- Using Tools to sent different types of request to the target system and investiage the responses
- Like open poerts, connected devices, 
- It can alerting target to get our activity
- Tools: Nmap,Nessus, Nkiito 



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

## Webserver Matafiles for iunformation leakage
#### Obactives:
1. Identify hidden infoation
2. Extract and map other information to undersatant the system


#### Tools:
1. Banner grapping (Browsers with dorking)
2. curl
3. wget
4. ZAP
5. Burp Suite

##### Imporant Files
**robots.txt**: use by web spiders, robots or crawlers to update web app information
- ```curl -o -Ss <target site url/robots.txt> && head -n5 robots.txt```
- WEbaster tools from google

**Sitemaps**: developers provide informatin aboiut the pages, videos and other fies 
- ```wget --no-verbose  <target site url/sitemap.xml> && head -n8 sitemap.xml```
- Example: www.google.com/gmail/sitemap.xml

**security TXT**: Allow websites to define security policies and contact details. This is implemented by Google, Fcebook, Gihub, the UK government andmany other counties. detain can be found [here](www.securitytxt.org)
- Loaction: in root /seurity.txt or ./well-known/security.txt
- wget --no-verbose <target site url/security.txt> && cat security.txt```

**Humans TXT**:  Knowning the peopoel behind a website, which contribute to build it.
- wget --no-verbose <target site url/humans.txt> && cat humans.txt```
   
  ## Enmeration: web application discovery 
  Factors on influencing how many app. are related to given DNS name (or IPs).
  1. Different Base URL or NOn- standard URLs: Example: ```www.example.com/url1, www.example.com/url2, www.example.com/url3```
  2. Non-standard Ports: Example: ``` www.example.com:port like www.example.com:2000/ ```
     - Web app usauly live on port 80(http), 443(https)
  3. Virtual hosts: Example ``` www. example.com, helpdesk.example.com, webmail.example.com belongs to single ip```
     - single ip belongs to a multiple DNS names
   
   #### Approach to test the challenge: discover the Web information as per above mentioned challenges
   
   1. Deal with Non-Standard URLs 
     - Vulverability scanners: Nessus, Nikto
     - use Google doreking with site operator to find all hidden urls
     - dictionary-stylle search (intelligent search)
  2. Deal with NOn-standard Ports
     - Use of Port scanner tools like **nmap** : Example script ```nmap -Pn -sT -sV -p0-65535 ``` for all 65535 TCP port address space
       then based on the results we chcek the port information or webiste with port as mentioned above
  3. Deal with Virtual host: DNS names associated to IP address 
     - DNS Zone Transfers: Find DNS using NS in tools like
       - host  ``` host -t ns www.example.com``` and then ```host -l www.example.co  <dns result oh host with ns>```
       - dig
       - nslookup   ``` nslookup testphp.vulnweb.com ```
     - DNS inverse Quries
     - Wen-based DNS Searches
       - Netcraft
     - Reverse-IP Services
       - with search engine Bing: example: ``` ip:x.x.x.x```
       - whois: this is a website to check DNS. It is also avaible in linux. ```apt install whois```
       - viewDNS
       - DNSstuff
       - Net Squre
   
   
## Review WEbpages content for information leakage
#### Objectives:
- Review webpages comments and matadata to find information
- Gather Javascript files and review the JS code to understand the app and find leakage
- identify souyrce map files or other front-end debig files

1.Review Webpage cooments and matadata
- Chcek HTML source file code fo comments containg sensitive information ```<!--```
- check HTML version  and Data type defination (DTD)
- Find keyword and author profile in matadata

2. Identifying JavaScript code and Gather JS Files
- Check sensitive information in ```<script> </script>``` tags, _.js _extension files and _scr_ attributes of _<script>_ tag
- Check the Api keys and its resirction set as by IP, HTTP rederre, Application or SDK wise. One can use the API keys if not restricted and owner will pay for it.
- Route to hidden or inyernal admin pages
 
3.Identify Surce MAp files
-Check the source file by adding ```.map ``` to .js file
   
   
   
   
## Fingerprint Web Application Framework
   - Idendify the web application framework like Wordpress, PhPBB, mediawiki
   - understant and investiagte the HTML header, cookies, and directory structures
   - NOTE: WEb framework have several markers, automatic tools identify these markers and comapre with database
   
### Black-Box Testing : identifyframework and components
   - HTTP
   - Cookies
   - HTML
   - Specific files and folder
   - File extension
   - Error messages
   
#### HTTP:
- identify **X-Powered-By** field in the HTTP response header and known the framwwork used
  - TOOLs
    - Netcat
    - whatweb
    - Through exploring incpect elements
#### Cookies
   - Identify the cookies in HTTP respose common cokkie names can be find by googling and [here](https://github.com/OWASP/wstg/blob/master/document/4-Web_Application_Security_Testing/01-Information_Gathering/08-Fingerprint_Web_Application_Framework.md)
90
   - This is more reliable for identification 
   - used fir session hijacking
   
#### HTML Source Code
   - Find certain patterns in HTML page source code
   - Find certain liks to framework-soecific CSS or JS folders
#### Sepecific Files nad Folders
   - Identify traget web app folder and files structure on the server
   - Techniques called dirbusting.
   -TOOLs:
     - Burp suite
     - Drupal Botcha 
     - NOTE: First check the robots.txt some time get the dir structure infomation and framework here
 #### File Extenstions
   - identify url with file extention
   -Common file extension
      - .php- PHP
      - .aspx- Microsoft ASP.NET
      - .jsp - Java Server Pages
 
 #### Error Messange
   
     - undetant and explore the error maeesages
### TOOLs:
   - Weppalyzer
   - whatweb one of the best: default in kalilinux)
   
   
   
   
   
   
   
 

