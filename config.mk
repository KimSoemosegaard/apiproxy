##  ====================================================================
##  config.mk - shared Makefile configuration
##  ====================================================================

##  Package name
PACKAGE	=	APIPROXY
Package	=	APIProxy
package	=	apiproxy

##  Directories
prefix          = /opt/${package}
datadir         = /var/opt/${package}

##  Rule for generating file by variable substitution
%:		%.in
		sed -e 's:@PACKAGE@:${PACKAGE}:g'			\
		    -e 's:@Package@:${Package}:g'			\
		    -e 's:@package@:${package}:g'			\
		    -e 's:@prefix@:${prefix}:g'				\
		    -e 's:@datadir@:${datadir}:g'			\
		    < $< > $@

##  Rule for generating PDF file from MarkDown file
%.pdf:		%.md
		pandoc -s -f gfm -V geometry:a4paper -o $@ $<
