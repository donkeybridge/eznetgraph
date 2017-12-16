PREFIX?=/usr/local

_RC=    ${DESTDIR}${PREFIX}/etc/rc.d/
_SHARE= ${DESTDIR}${PREFIX}/share/eznetgraph

all:

install:
        mkdir -p ${_RC} ${_SHARE}
        sed s:EZJAIL_PREFIX:${PREFIX}: etc__rc.d/ezng    > ${_RC}/ezng
        sed s:EZJAIL_PREFIX:${PREFIX}: share__eznetgraph/ezng.subr        > ${_SHARE}/ezng.subr
        sed s:EZJAIL_PREFIX:${PREFIX}: share__eznetgraph/ezng.conf.sample > ${_SHARE}/ezng.conf.sample
        chmod 755 ${DST}/etc/rc.d/ezng  

