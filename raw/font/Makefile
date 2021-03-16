##  ====================================================================
##  raw/font/Makefile
##  ====================================================================

include		../../config.mk
rawdir =	${prefix}/raw/font

##  From fontawesome-free-5.15.2-web.zip
RAWFILES +=     awesome-brands-400.eot
RAWFILES +=     awesome-brands-400.svg
RAWFILES +=     awesome-brands-400.ttf
RAWFILES +=     awesome-brands-400.woff
RAWFILES +=     awesome-brands-400.woff2
RAWFILES +=     awesome-regular-400.eot
RAWFILES +=     awesome-regular-400.svg
RAWFILES +=     awesome-regular-400.ttf
RAWFILES +=     awesome-regular-400.woff
RAWFILES +=     awesome-regular-400.woff2
RAWFILES +=     awesome-solid-900.eot
RAWFILES +=     awesome-solid-900.svg
RAWFILES +=     awesome-solid-900.ttf
RAWFILES +=     awesome-solid-900.woff
RAWFILES +=     awesome-solid-900.woff2
RAWFILES +=     awesome.css
GENERATED +=    awesome.css

##  From oreilly.com
RAWFILES +=	gilroy-light.eot
RAWFILES +=	gilroy-light.ttf
RAWFILES +=	gilroy-light.woff
RAWFILES +=	gilroy-light.woff2
RAWFILES +=	gilroy-lightitalic.eot
RAWFILES +=	gilroy-lightitalic.ttf
RAWFILES +=	gilroy-lightitalic.woff
RAWFILES +=	gilroy-lightitalic.woff2
RAWFILES +=	gilroy-semibold.eot
RAWFILES +=	gilroy-semibold.ttf
RAWFILES +=	gilroy-semibold.woff
RAWFILES +=	gilroy-semibold.woff2
RAWFILES +=	gilroy-semibolditalic.eot
RAWFILES +=	gilroy-semibolditalic.ttf
RAWFILES +=	gilroy-semibolditalic.woff
RAWFILES +=	gilroy-semibolditalic.woff2
RAWFILES +=	gilroy.css
GENERATED +=	gilroy.css


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
