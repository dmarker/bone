#
# Copyright (c) 2025 David Marker <dave@freedave.net>
#
# SPDX-License-Identifier: BSD-2-Clause
#

LOCALBASE?=/usr/local

BINDIR=	${LOCALBASE}/bin
SHAREDIR=${LOCALBASE}/share

DIRS+=	MAN8
MAN8=	${MANDIR}8

PROG=	ngpcap
MAN=	ngpcap.8
SRCS=	kld.c ng.c pcap.c ring32.c main.c
LIBADD=	jail netgraph
CFLAGS+=-I${.CURDIR}/../../sys
CFLAGS+=-I${.CURDIR}/../../bin/common
MK_DEBUG_FILES= no

CFLAGS.main.c += -DINET -DINET6
CFLAGS.pcap.c += -DINET -DINET6

WARNS?=1

.PATH:  ${.CURDIR}/../../bin/ngpcap
.PATH:  ${.CURDIR}/../../bin/common

.include <bsd.prog.mk>
