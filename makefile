foo = $(bar)
bar = $(ugh)
ugh = Huh?

ifeq (0,${MAKELEVEL})
cur-dir   := $(shell pwd)
whoami    := $(shell whoami)
host-type := $(shell arch)
MAKE := ${MAKE} host-type=${host-type} whoami=${whoami}
endif

all:
	echo $(foo)