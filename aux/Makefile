##  ====================================================================
##  aux/Makefile - 
##  ====================================================================

include		../config.mk

AUXFILES +=	csv2text
AUXFILES +=	makesite
GENERATED +=	${AUXFILES}


all::		${AUXFILES}
		chmod +x ${AUXFILES}

install::	all

clean::
		rm -f ${GENERATED}

distclean::	clean
		rm -f *~ \#*
