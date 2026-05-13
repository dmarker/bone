#
# Copyright (c) 2026 David Marker <dave@freedave.net>
#
# SPDX-License-Identifier: BSD-2-Clause
#

SUBDIR=	\
	sys/man4 \
	sys/netgraph \
	kmods/pcap \
	kmods/ula4tag \
	kmods/wormhole \
	utils/jeiface \
	utils/ngpcap \
	utils/ngportal \
	rc.d

.include <bsd.arch.inc.mk>

SUBDIR_PARALLEL=

.include <bsd.subdir.mk>
