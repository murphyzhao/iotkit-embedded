LIBA_TARGET := libiot_hal.a
CFLAGS      := $(filter-out -ansi,$(CFLAGS))

HDR_REFS    += external_libs src/infra

LIB_SRCS_PATTERN    += os/$(CONFIG_VENDOR)/*.c

ifneq (,$(filter -D_PLATFORM_IS_LINUX_,$(CFLAGS)))
ifneq (,$(filter -DSUPPORT_TLS,$(CFLAGS)))
LIB_SRCS_PATTERN    += tls/*.c
endif
endif

LIB_SRCS_PATTERN    += algo/*.c