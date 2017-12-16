PREFIX?=/usr/local
DST=    ${DESTDIR}${PREFIX}

all:

install:
        mkdir -p ${DST}/etc/ezng/ ${DST}/etc/rc.d/ ${DST}/share/eznetgraph 
        cp -R share/zsh/site-functions/ ${DST}/share/zsh/site-functions/
        sed s:EZJAIL_PREFIX:${PREFIX}: ezjail.conf.sample > ${DST}/etc/ezjail.conf.sample
        sed s:EZJAIL_PREFIX:${PREFIX}: ezjail.sh > ${DST}/etc/rc.d/ezjail
        sed s:EZJAIL_PREFIX:${PREFIX}: ezjail-admin > ${DST}/bin/ezjail-admin
        sed s:EZJAIL_PREFIX:${PREFIX}: man8/ezjail-admin.8 > ${DST}/man/man8/ezjail-admin.8
        sed s:EZJAIL_PREFIX:${PREFIX}: man5/ezjail.conf.5 > ${DST}/man/man5/ezjail.conf.5
        sed s:EZJAIL_PREFIX:${PREFIX}: man7/ezjail.7 > ${DST}/man/man7/ezjail.7
        chmod 755 ${DST}/etc/rc.d/ezjail ${DST}/bin/ezjail-admin
        chmod 0440 ${DST}/share/examples/ezjail/example/usr/local/etc/sudoers

