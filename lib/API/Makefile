##  ====================================================================
##  lib/API/Makefile
##  ====================================================================

include		../../config.mk
apidir =	${prefix}/lib/${Package}/API

APIFILES +=	google_com.pm
APIFILES +=	ipinfo_io.pm
APIFILES +=	jsonip_com.pm
APIFILES +=	restcountries_eu.pm

#APIFILES +=	duckduckgo_com.pm
#APIFILES +=	krak_dk.pm

GENERATED +=	${APIFILES}


all::		${APIFILES}

install::
		test -d ${apidir} || mkdir ${apidir}

install::	all
		@for apifile in ${APIFILES}; do				\
		  echo install -m 0644 $${apifile} ${apidir}/;		\
		  install -m 0644 $${apifile} ${apidir}/;		\
		done

clean:
		rm -f *~ \#*

distclean:	clean
		rm -f ${GENERATED}
