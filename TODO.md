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

### imei24.com
```
  POST https://imei24.com/searching/
  s=3551840463871205&nr=0
```
