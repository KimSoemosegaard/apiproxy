##  ====================================================================
##  tt2/Makefile - rules for building templates
##  ====================================================================

include		../config.mk
tt2dir =	${prefix}/tt2

SUBDIRS +=	site
SUBDIRS +=	type
TT2FILES +=	header.inc
TT2FILES +=	footer.inc
TT2FILES +=	header_result.inc
TT2FILES +=	footer_result.inc
TT2FILES +=	index.tt2
TT2FILES +=	error.tt2
GENERATED +=	${TT2FILES}


all::		${TT2FILES}

install::
		test -d ${tt2dir} || mkdir ${tt2dir}

install::	all
		@for tt2file in ${TT2FILES}; do				\
		  echo install -m 0644 $${tt2file} ${tt2dir}/;		\
		  install -m 0644 $${tt2file} ${tt2dir}/;		\
		done

clean::
		rm -f ${GENERATED}

distclean::	clean
		rm -f *~ \#*


all install clean distclean::
		@for d in ${SUBDIRS}; do				\
		  cd $${d}; make $@; cd ..;				\
		done
