#
# (C) Copyright 2003 Josef Baumgartner <josef.baumgartner@telex.de>
#
# (C) Copyright 2000-2004
# Wolfgang Denk, DENX Software Engineering, wd@denx.de.
#
# Copyright 2011-2012 Freescale Semiconductor, Inc.
#
# SPDX-License-Identifier:	GPL-2.0+
#

cfg=$(srctree)/include/configs/$(CONFIG_SYS_CONFIG_NAME:"%"=%).h
is5441x:=$(shell grep CONFIG_MCF5441x $(cfg))

ifneq (,$(findstring CONFIG_MCF5441x,$(is5441x)))
PLATFORM_CPPFLAGS += -mcpu=54418 -fPIC
else
PLATFORM_CPPFLAGS += -mcpu=54455 -fPIC
endif

ifneq (,$(findstring -linux-,$(shell $(CC) --version)))
ifneq (,$(findstring GOT,$(shell $(LD) --help)))
PLATFORM_LDFLAGS += --got=single
endif
endif
