##  ====================================================================
##  api/Makefile - rules for building api files
##  ====================================================================

include		../config.mk
libdir =	${prefix}/lib
tt2dir =	${prefix}/tt2

SUBDIRS +=	celltrack.eu
SUBDIRS +=	duckduckgo.com
SUBDIRS +=	hackertarget.com
SUBDIRS +=	ipinfo.io
SUBDIRS +=	jsonip.com
SUBDIRS +=	krak.dk
SUBDIRS +=	restcountries.eu


all::

install::
		test -d ${libdir} || mkdir ${libdir}
		test -d ${libdir}/${Package} || mkdir ${libdir}/${Package}
		test -d ${tt2dir} || mkdir ${tt2dir}
		test -d ${tt2dir}/site || mkdir ${tt2dir}/site

clean::
		rm -f ${GENERATED}

distclean::	clean
		rm -f *~ \#*


all install clean distclean::
		@for d in ${SUBDIRS}; do				\
		  cd $${d}; make $@; cd ..;				\
		done
