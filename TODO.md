# APIProxy - To Do List

## General
* Re-design of error handling - api level errors should not result in 

## App.pm module
* Code cleanup - especially utf-8 handling
* Check CSV generation

## LWP.pm module
* The get* functions should return (data, status, type) when wantarray
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




# Error handling

## LWP
* Returns undef on error, data on success
* On error the ::err gets set
* On remote error ::err starts with the status code

## api
* Uses API / LWP methods to get data
* Returns JSON hash/array on success, undef on error
* When the parameters are invalid: return err(undef, "Invalid ...")
* When the result is empty and site return 404: return undef;

## App
* When api return undef: error(HTTP_OK, ::err)

