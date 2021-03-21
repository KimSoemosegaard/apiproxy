##  ====================================================================
##  api/netcraft.com/Makefile
##  ====================================================================

include		../../config.mk
libdir =	${prefix}/lib/${Package}/API
tt2dir =	${prefix}/tt2/site/netcraft.com

LIBFILES +=	netcraft_com.pm
GENERATED +=	${LIBFILES}

TT2FILES +=	index.tt2
TT2FILES +=	site_report.tt2
TT2FILES +=	site_report.inc
GENERATED +=	${TT2FILES}

all::		${LIBFILES}
all::		${TT2FILES}

install::
		test -d ${libdir} || mkdir ${libdir}
		test -d ${tt2dir} || mkdir ${tt2dir}

install::	${LIBFILES}
		@for libfile in ${LIBFILES}; do				\
		  echo install -m 0644 $${libfile} ${libdir}/;		\
		  install -m 0644 $${libfile} ${libdir}/;		\
		done

install::	${TT2FILES}
		@for tt2file in ${TT2FILES}; do				\
		  echo install -m 0644 $${tt2file} ${tt2dir}/;		\
		  install -m 0644 $${tt2file} ${tt2dir}/;		\
		done

clean::
		rm -f ${GENERATED}

distclean::	clean
		rm -f *~ \#*
