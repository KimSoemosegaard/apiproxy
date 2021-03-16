##  ====================================================================
##  bin/Makefile - rules for building programs
##  ====================================================================

include		../config.mk
bindir =	${prefix}/bin

##  Tools
BINFILES +=	closint
BINFILES +=	jsonkv
BINFILES +=	jsonpp

##  Sites
SYMLINKS +=	duckduckgo-com
SYMLINKS +=	krak-dk

GENERATED +=	${BINFILES}
GENERATED +=	${SYMLINKS}


all::		${BINFILES}
		chmod +x ${BINFILES}

all::
		@for symlink in ${SYMLINKS}; do				\
		  echo rm -f $${symlink};				\
		  rm -f $${symlink};					\
		  echo ln -s closint $${symlink};			\
		  ln -s closint $${symlink};				\
		done

install::
		test -d ${bindir} || mkdir ${bindir}

install::	all
		@for binfile in ${BINFILES}; do				\
		  echo install -m 0755 $${binfile} ${bindir}/;		\
		  install -m 0755 $${binfile} ${bindir}/;		\
		done

install::
		@for symlink in ${SYMLINKS}; do				\
		  echo rm -f ${bindir}/$${symlink};			\
		  rm -f ${bindir}/$${symlink};				\
		  echo ln -s closint ${bindir}/$${symlink};		\
		  ln -s closint ${bindir}/$${symlink};			\
		done

clean:
		rm -f ${GENERATED}

distclean:	clean
		rm -f *~ \#*
