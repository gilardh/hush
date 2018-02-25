build_darwin_CC = gcc-5
build_darwin_CXX = g++-5
build_darwin_AR: = $(shell xcrun -f ar)
build_darwin_RANLIB: = $(shell xcrun -f ranlib)
build_darwin_STRIP: = $(shell xcrun -f strip)
build_darwin_OTOOL: = $(shell xcrun -f otool)
build_darwin_NM: = $(shell xcrun -f nm)
build_darwin_INSTALL_NAME_TOOL:=$(shell xcrun -f install_name_tool)
build_darwin_SHA256SUM = shasum -a 256
build_darwin_DOWNLOAD = wget --timeout=$(DOWNLOAD_CONNECT_TIMEOUT) --tries=$(DOWNLOAD_RETRIES) -nv -O

#darwin host on darwin builder. overrides darwin host preferences.
darwin_CC= gcc-5
darwin_CXX= g++-5
darwin_AR:=$(shell xcrun -f ar)
darwin_RANLIB:=$(shell xcrun -f ranlib)
darwin_STRIP:=$(shell xcrun -f strip)
darwin_LIBTOOL:=$(shell xcrun -f libtool)
darwin_OTOOL:=$(shell xcrun -f otool)
darwin_NM:=$(shell xcrun -f nm)
darwin_INSTALL_NAME_TOOL:=$(shell xcrun -f install_name_tool)
darwin_native_toolchain=
