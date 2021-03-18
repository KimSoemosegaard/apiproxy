##  ====================================================================
##  etc/Makefile - rules for building configuration
##  ====================================================================

include		../config.mk
etcdir =	${prefix}/etc

ETCFILES +=	${package}.conf
GENERATED +=	${package}.conf


all:		${ETCFILES}

install::
		test -d ${etcdir} || mkdir ${etcdir}

install::	all
		@for etcfile in ${ETCFILES}; do				\
		  echo install -m 0644 $${etcfile} ${etcdir}/;		\
		  install -m 0644 $${etcfile} ${etcdir}/;		\
		done

clean:
		rm -f ${GENERATED}

distclean:	clean
		rm -f *~ \#*
