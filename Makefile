##  ====================================================================
##  Makefile
##  ====================================================================

include		./config.mk
libdir =	${prefix}/lib

SUBDIRS =	aux bin etc lib raw tt2 api

FILES +=	README.pdf
GENERATED +=	README.pdf
FILES +=	SITES.pdf
GENERATED +=	SITES.pdf
FILES +=	TODO.pdf
GENERATED +=	TODO.pdf

#XXX
REQUIRED +=	Config::Simple
REQUIRED +=	Data::Dumper
REQUIRED +=	Encode
REQUIRED +=	Getopt::Long
REQUIRED +=	HTML::PrettyPrinter
REQUIRED +=	HTML::TreeBuilder
REQUIRED +=	HTTP::Cookies
REQUIRED +=	JSON
REQUIRED +=	JSON::XS
#REQUIRED +=	JavaScript::Beautifier
REQUIRED +=	LWP
REQUIRED +=	LWP::Protocol::https
REQUIRED +=	LWP::Protocol::socks
REQUIRED +=	LWP::UserAgent
REQUIRED +=	Module::Load
REQUIRED +=	Module::Loaded
REQUIRED +=	URI
REQUIRED +=	URI::Encode



all::		${FILES}

install::
		test -d ${prefix} || mkdir ${prefix}
		test -d ${datadir} || mkdir ${datadir}

clean::
		rm -f *~ \#*

distclean::	clean
		rm -f ${GENERATED}

all install clean distclean::
		@for subdir in ${SUBDIRS}; do				\
		  cd $${subdir}; make $@ || exit 1; cd ..;		\
		done


check:
		@for module in ${REQUIRED}; do				\
		  perl -I"${libdir}" -M$${module} -e "exit 0";		\
		done

apt::
		apt -y install perl
#		apt -y install libencode-perl
#		apt -y install libjson-perl
#		apt -y install libjson-xs-perl
#		apt -y install liblwp-protocol-https-perl
#		apt -y install liblwp-protocol-socks-perl
#		apt -y install liburl-encode-perl
apt::
		apt install -y libconfig-tiny-perl
		apt install -y libplack-perl
		apt install -y libtemplate-perl
		apt install -y libmime-types-perl

yum::
		yum install -y perl
		yum install -y perl-libwww-perl
		yum install -y perl-Config-Simple
		yum install -y perl-HTML-PrettyPrinter
		yum install -y perl-HTML-Tree
		yum install -y perl-IO-Socket-Socks
		yum install -y perl-JSON
		yum install -y perl-JSON-XS
		yum install -y perl-LWP-Protocol-https
		yum install -y perl-Module-Load
		yum install -y perl-Module-Loaded
		yum install -y perl-URI-Encode
		yum install -y perl-ExtUtils-MakeMaker

yum::		LWP-Protocol-socks-1.7.tar.gz
		tar xvf LWP-Protocol-socks-1.7.tar.gz
		cd LWP-Protocol-socks-1.7; perl Makefile.PL
		cd LWP-Protocol-socks-1.7; make install
		rm -rf LWP-Protocol-socks-1.7


test:
