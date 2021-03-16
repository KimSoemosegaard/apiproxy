##  ====================================================================
##  raw/Makefile - rules for building static files
##  ====================================================================

include		../config.mk
rawdir =	${prefix}/raw

SUBDIRS +=	font
RAWFILES +=	favicon.ico
RAWFILES +=	icon.svg
RAWFILES +=	script.js
RAWFILES +=	style.css
GENERATED +=	${RAWFILES}


all::		${RAWFILES}

install::
		test -d ${rawdir} || mkdir ${rawdir}

install::	${RAWFILES}
		@for rawfile in ${RAWFILES}; do				\
		  echo install -m 0644 $${rawfile} ${rawdir}/;		\
		  install -m 0644 $${rawfile} ${rawdir}/;		\
		done

clean::
		rm -f ${GENERATED}

distclean::	clean
		rm -f *~ \#*


all install clean distclean::
		@for subdir in ${SUBDIRS}; do				\
		  cd $${subdir}; make $@; cd ..; 			\
		done
