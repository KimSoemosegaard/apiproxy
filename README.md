# APIProxy

## Design

### APIProxy::Err
* Exports error handling function
* Error handling function is both setter and getter
* Error handling function returns user defined value when used as setter
* Error handling function returns latest error message when used as getter
* Latest error message is also available as a variable

### APIProxy::Config
* Implements configuration handling
* Constructor loads configuration files in the specified order
* Site specific settings override default settings
* Function to add configuration from a file
* Function to add configuration from a hash
* Function to return configuration specific to a site
* Function to return complete configuration

### APIProxy::LWP
* Implements extensions to LWP::UserAgent
* Constructor takes site configuration hash as argument
* Get method caches pages
* Methods to access apikey / username / password

### APIProxy::API
* Implements base class for use by site APIs
* Constructor takes lwp as argument
* Methods takes query hash as argument

### APIProxy::JSON
* Implements extensions to JSON

### APIProxy::App
* Implements the app as a PSGI handler written using Plack


## Error handling
* A failing function returns undef after setting the error variable




## API Keys

### Google
* Get 100 search queries per day for free
* Get key at `https://developers.google.com/custom-search/v1/overview?authuser=1`
* Endpoint is `https://www.googleapis.com/customsearch/v1`
* Parameter 'key' is the API key and identifies the application
* Parameter `cx` is the programmable search engine id
* Parameter `q` is the query


# XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

## Design

### CLOSInt::API Design
* Implements base class from which CLOSInt::API::* modules are derived

### CLOSInt::API::* Design
* There is one module per site
* The module name is derived from the site name
* Modules implement backend and frontend api functions
* Backend functions are the api primitives of the site
* Backend functions have names starting with "_"
* Frontend functions are the searches we'd like to do
* Frontend functions may aggregate data from backend functions
* Module functions return a JSON hash or array on success
-* Module functions return an error message string on failure
* Modules have a SITE string constant that uniquely identifies the site
* Modules have an OPTIONS list constant with additional options to accept
* Modules have an USAGE string constant with usage information

### CLOSInt::CLI Design
* Implements base components for creating a client program
* Functions return a data structure or 1 on success
* Functions return undef or 0 on failure
* On failure the reason can be found via in $CLOSInt::CLI::err


## Future APIs
* google
* facebook
* twitter
* instagram
* snapchat
* startme


## Technical debt
* Error handling in all modules
* json?? should use library functions
* A proper Javascript parser would be nice - JE?


## Notes on specific sites

### duckduckgo.com
They have an API for "instant access" to a number of articles on a
wide variety of subjects. However, the real search engine is harder
to access and is not implemented.

### krak.dk
Initial searches are directed to the krak.dk domain. More detailed
searches are directed to *.eniro.com. These are not implemented yet.
