# TODO: Fix EZJAIL heritance

PREFIX?=/usr/local

_RC=    ${DESTDIR}${PREFIX}/etc/rc.d
_SHARE= ${DESTDIR}${PREFIX}/share/eznetgraph

all:

install:
	mkdir -p ${_RC} ${_SHARE}
	cp         etc__rc.d/ezng             ${_RC}/ezng
	cp share__eznetgraph/ezng.subr        ${_SHARE}/ezng.subr
	cp share__eznetgraph/ezng.conf.sample ${_SHARE}/ezng.conf.sample
	chmod 755 ${_RC}/ezng


