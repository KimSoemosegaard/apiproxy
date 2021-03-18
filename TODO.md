# APIProxy - To Do List

## App.pm module
* Check CSV generation

## LWP.pm module
* Caching should have configurable time-to-live
* Caching should use compression
* Caching should be in `~/.apiproxy/cache/`
* Cookies should be in `~/.apiproxy/cookies/${site}.jar`

## Configuration
* Function to dump current config

## API modules
* Script to create initial *.inc.in file from CSV dump
* Consider adding some sort of self-test functionality

## Web
* The /site/${site} page should show whether a login is used
* The /site/${site} page should show whether a proxy is used
* An /api/${site}/${func} interface 

## Templates
* How can I access JSON field names like "API Help" or "geo-ip"?

## Sites
* restcountries.eu - templates are missing for a number of functions

### hackertarget.com
* Check https://hackertarget.com/ip-tools/
* https://api.hackertarget.com/hostsearch/?q=example.com - Find (A) Records 
* https://api.hackertarget.com/reversedns/?q=8.8.8.8 - Reverse DNS
* https://api.hackertarget.com/findshareddns/?q=ns1.dnsserver.com - Find Shared DNS Servers
* https://api.hackertarget.com/zonetransfer/?q=example.com - Zone Transfer
* https://api.hackertarget.com/whois/?q=google.com - Whois Lookup 
* https://api.hackertarget.com/geoip/?q=1.1.1.1 - GeoIP Lookup
* https://api.hackertarget.com/reverseiplookup/?q=2.2.2.2 - Reverse IP 
* https://api.hackertarget.com/nmap/?q=127.x.x.1 - TCP Port Scan
* UDP Port Scan
* https://api.hackertarget.com/subnetcalc/?q=192.168.1.0/24 - Subnet Lookup Online
* https://api.hackertarget.com/httpheaders/?q=http://www.google.com - HTTP headers
* https://api.hackertarget.com/pagelinks/?q=websitetotest.com - page links
* https://api.hackertarget.com/aslookup/?q=ip_or_as - AS number lookup
* https://api.hackertarget.com/bannerlookup/?q=2.2.2.2/24 - Banner search

### imei24.com
```
  POST https://imei24.com/searching/
  s=3551840463871205&nr=0
```
