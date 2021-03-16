##  ====================================================================
##  lib/Makefile
##  ====================================================================

include		../config.mk
libdir =	${prefix}/lib

LIBFILES +=	API.pm
LIBFILES +=	App.pm
LIBFILES +=	Config.pm
LIBFILES +=	Err.pm
LIBFILES +=	JSON.pm
LIBFILES +=	LWP.pm
LIBFILES +=	Utils.pm

GENERATED +=	${LIBFILES}

#LIBFILES +=	CLI.pm


all::		${LIBFILES}

install::
		test -d ${libdir} || mkdir ${libdir}
		test -d ${libdir}/${Package} || mkdir ${libdir}/${Package}

install::	all
		@for libfile in ${LIBFILES}; do				\
		  echo install -m 0644 $$libfile ${libdir}/${Package};	\
		  install -m 0644 $$libfile ${libdir}/${Package};	\
		done

clean::
		rm -f *~ \#*

distclean::	clean
		rm -f ${GENERATED}

all install clean distclean::
		@for subdir in ${SUBDIRS}; do				\
		  cd $${subdir}; make $@; cd ..;			\
		done
