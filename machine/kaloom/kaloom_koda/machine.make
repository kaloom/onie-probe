# Kaloom KODA

# Vendor's version number can be defined here.
# Available variable is 'VENDOR_VERSION'.
# e.g.,
# VENDOR_VERSION = .00.01

ONIE_ARCH ?= x86_64
SWITCH_ASIC_VENDOR = none

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
  CONSOLE_SPEED = 57600
else ifeq ($(VENDOR_REV),1)
  MACHINE_REV = 1
  CONSOLE_SPEED = 9600
  GRUB_TIMEOUT = 10
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
# Kaloom
VENDOR_ID = 51443

UEFI_ENABLE = yes
PXE_EFI64_ENABLE = yes

# Console parameters
CONSOLE_DEV = 0

# Set Linux kernel version
LINUX_VERSION = 4.9
LINUX_MINOR_VERSION = 95

GCC_VERSION = 4.9.2

#ifeq ($(USE_SPECIAL_DEMO_IMAGE), yes)
include $(MACHINEDIR)/demo/demo_machine.make
#endif

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
