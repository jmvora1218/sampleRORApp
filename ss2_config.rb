#! /usr/bin/ruby

#Enter your SID
$_sid = "1212a9f8-3fd8-418c-8279-6f82bc38bdcb"

#Please specify the mode in which you want to operate
#mode = 'Active'
#mode = 'Monitor'
$_mode = 'Monitor'

#Asynchronous HTTP Data Post  
#Setting this value to true will reduce the page load time when you are in Monitor mode. 
#This uses Linux CURL to POST the HTTP data using the EXEC command. 
#Note: Enable this only if you are hosting your applications on Linux environments. 
$_async_http_post = false

#* Timeout in Seconds or Milliseconds (based on the  $_timeout_type value)
$_timeout_value = 100


#* PHPSESSID is the default session ID for PHP, please change it if needed
$_sessid = 'SESSID'

#* Change this value if your servers are behind a firewall or proxy
$_ipaddress = 'REMOTE_ADDR'

#* Enter the URL fo the JavaScript Data Collector
$_js_url = '/getData.rb'

# Set the ShieldSquare domain based on your Server Locations

#Asia/India - ss_sa.shieldsquare.net
#North America - ss_scus.shieldsquare.net
#Europe - ss_ew.shieldsquare.net
#Australia - ss_au.shieldsquare.net
$_ss2_domain='ss_sa.shieldsquare.net'

