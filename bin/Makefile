##  ====================================================================
##  bin/Makefile - rules for building programs
##  ====================================================================

include		../config.mk
bindir =	${prefix}/bin

BINFILES +=	jsonkv
BINFILES +=	jsonpp
BINFILES +=	${package}

GENERATED +=	${BINFILES}


all::		${BINFILES}
		chmod +x ${BINFILES}

install::
		test -d ${bindir} || mkdir ${bindir}

install::	all
		@for binfile in ${BINFILES}; do				\
		  echo install -m 0755 $${binfile} ${bindir}/;		\
		  install -m 0755 $${binfile} ${bindir}/;		\
		done

clean:
		rm -f ${GENERATED}

distclean:	clean
		rm -f *~ \#*
