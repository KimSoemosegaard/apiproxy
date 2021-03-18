##  ====================================================================
##  api/krak.dk/Makefile
##  ====================================================================

include		../../config.mk
libdir =	${prefix}/lib/${Package}/API
tt2dir =	${prefix}/tt2/site/krak.dk

LIBFILES +=	krak_dk.pm
GENERATED +=	${LIBFILES}

TT2FILES +=	index.tt2
TT2FILES +=	company.tt2
TT2FILES +=	company.inc
#TT2FILES +=	company_by_address.tt2
#TT2FILES +=	company_by_address.inc
#TT2FILES +=	company_by_phone.tt2
#TT2FILES +=	company_by_phone.inc
TT2FILES +=	person_by_address.tt2
TT2FILES +=	person_by_address.inc
TT2FILES +=	person_by_phone.tt2
TT2FILES +=	person_by_phone.inc
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
