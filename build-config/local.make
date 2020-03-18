#
#  Copyright (C) 2013-2014 Curt Brune <curt@cumulusnetworks.com>
#
#  SPDX-License-Identifier:     GPL-2.0
#
# This is a sample local.make file
#
# If "local.make" exists it is included early on by the primary
# makefile, build-config/Makefile.
#
# Setting variables in this file allows you to override various
# defaults set in the other makefiles.  The other makefiles set some
# variables using the "=?" operator, only setting the variable if it
# is not already defined.

# Set the default MACHINEROOT directory
MACHINEROOT = $(realpath ../machine/kaloom)

# Set the default MACHINE to build
MACHINE = kaloom_node_probe

# Set the default directory for downloaded packages
# DOWNLOADDIR = $(BUILDDIR)/download

# Set the default version string
# ONIE_RELEASE_TAG = 2014.02

# Set the base URLs for the downloaded packages.  You could change
# this to setup a local mirror.  The individual makefile fragments set
# these variables using "+= $(ONIE_MIRROR) <default project URL>",
# appending the default URL to the end.
#
# ONIE_MIRROR = http://some-local-sever/onie/mirror

# Set the mirror used to download the packages for crosstool-NG
# CROSSTOOL_ONIE_MIRROR = http://some-local-sever/onie/mirror/crosstool-NG

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
