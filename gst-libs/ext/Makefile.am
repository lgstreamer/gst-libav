# we have to put in a little hack here for integration to work well
# libav can't be in SUBDIRS, because then automake will try to descend in it
# and find conditionals it doesn't know.

# so,
# - don't put it in SUBDIRS so automake doesn't descend
# - put it in DIST_SUBDIRS so make dist picks up the subtree
# - add an all-local hook so it does get built
# this also satisfies make distcheck

SUBDIRS = 
DIST_SUBDIRS = libav
TMP_DIST_DIR=libav-dist
DIST_DIR=$(TMP_DIST_DIR)/.libav
EXTRA_DIST=Makefile.am
MAINTAINERCLEANDIRS = $(DIST_SUBDIRS)
LIB_LIST=libavutil libswresample libavcodec libavformat libavfilter

# attempt to generate .la references from -l and a list of -L
# $1 is the argument to filter, -l, -L, -I, etc
# $2 is the list to filter
define filter_arg
  $(foreach item,$(filter $(1)%,$(2)),$(patsubst $(1)%,%,$(item)))
endef

# $1 library to find
# $2 directories to search
define find_la
 $(firstword $(wildcard $(foreach path,$(call filter_arg,-L,$(2)), $(path)/lib$(strip $(call filter_arg,-l,$(1))).la)))
endef

# $(call find_la,...) and if a library is found use that, otherwise, return the
# original lib unchanged
define find_la_or_original
 $(if $(strip $(call find_la,$1,$2)),$(call find_la,$1,$2),$(1))
endef

# $1 the libraries to look for (including -l) e.g. -lbz2 -lz
# $2 LDFLAGS containing -L arguments
define find_library_la
 $(foreach lib,$(1),$(call find_la_or_original,$(lib),$(2)))
endef

define create_la
echo "  GEN      $1.la" && \
(echo "# $1.la - a libtool library file" && \
 echo "# Generated by libtool (GNU libtool) 2.4.6" && \
 echo "dlname=''" && \
 echo "library_names=''" && \
 echo "old_library='$1.a'" && \
 echo "inherited_linker_flags=''" && \
 echo "dependency_libs=' -L $(if $2,$(foreach dep,$2,$(abs_builddir)/$(dep).la)) $(call find_library_la,$3 $(LIBM),$(LDFLAGS)) '" && \
 echo "weak_library_names=''" &&  \
 echo "current=" && \
 echo "age=" && \
 echo "revision=" && \
 echo "installed=no" && \
 echo "shouldnotlink=no" && \
 echo "dlopen=''" && \
 echo "dlpreopen=''" && \
 echo "libdir=''") > $1.la
endef

libavutil.la:
	$(AM_V_at)$(call create_la,libavutil)

libswresample.la:
	$(AM_V_at)$(call create_la,libswresample,libavutil)

libavcodec.la:
	$(AM_V_at)$(call create_la,libavcodec,libswresample libavutil,-lz $(LZMA_LIBS))

libavformat.la:
	$(AM_V_at)$(call create_la,libavformat,libavcodec libavutil,$(LIBM) -lz $(BZ2_LIBS))

libavfilter.la:
	$(AM_V_at)$(call create_la,libavfilter,libavformat libavcodec libswresample libavutil)

all-local: $(foreach lib,$(LIB_LIST),$(lib).la)
	cd libav && $(MAKE)
	$(AM_V_at)$(MKDIR_P) .libs
	$(AM_V_at)for lib in $(LIB_LIST); do \
		if ! test -f .libs/$${lib}.a; then \
		  echo "  CP       $${lib}"; \
		  cp libav/$${lib}/$${lib}.a .libs/$${lib}.a; \
		fi; \
	done

if GST_PLUGIN_BUILD_STATIC

define install_la
echo " INSTALL  $1.la" && \
sed -e "s|$(abs_builddir)|$(libdir)|g" \
	-e "s|installed=no|installed=no|" \
	$1.la > $(DESTDIR)$(libdir)/$1.la
endef

# Normally DATA is built before am-local, fix it
.libs/libavutil.a: all-local

.libs/libswresample.a: all-local

.libs/libavcodec.a: all-local

.libs/libavformat.a: all-local

.libs/libavfilter.a: all-local

depsdir = $(libdir)
nodist_deps_DATA = \
	.libs/libavutil.a \
	.libs/libswresample.a \
	.libs/libavcodec.a \
	.libs/libavformat.a \
	.libs/libavfilter.a

install-data-hook: 
	$(AM_V_at)$(call install_la,libavutil)
	$(AM_V_at)$(call install_la,libswresample)
	$(AM_V_at)$(call install_la,libavcodec)
	$(AM_V_at)$(call install_la,libavformat)
	$(AM_V_at)$(call install_la,libavfilter)
endif

clean-local:
	cd libav && $(MAKE) clean
	rm -rf .libs
	rm -f *.la

dist-clean:
	cd libav && $(MAKE) distclean
	rm -rf libav/$(TMP_DIST_DIR)
	rm -f Makefile
	rm -f libav/.version
	rm -f libav/.config

distclean: dist-clean

maintainer-clean: distclean
	rm -rf $(MAINTAINERCLEANDIRS)

maintainerclean: maintainer-clean

dist-local:
	GIT_DIR=$(srcdir)/libav/.git git checkout-index --prefix=$(abs_builddir)/libav/$(TMP_DIST_DIR)/libav/ -a
	touch libav/$(TMP_DIST_DIR)/libav/config.mak
	echo "Patching libav ./configure"
	sed -e '/Unknown option/ {N;N;s/exit 1//; }' libav/$(TMP_DIST_DIR)/libav/configure > libav/$(TMP_DIST_DIR)/libav/configure.tmp
	mv libav/$(TMP_DIST_DIR)/libav/configure.tmp libav/$(TMP_DIST_DIR)/libav/configure
	chmod +x libav/$(TMP_DIST_DIR)/libav/configure

distdir: dist-local
	cp -r libav/$(TMP_DIST_DIR)/libav ${distdir}
	cp -f $(top_srcdir)/gst-libs/ext/Makefile.am $(top_srcdir)/gst-libs/ext/Makefile.in ${distdir}
	rm -rf libav/$(TMP_DIST_DIR)

dist: dist-local
	cd libav/$(TMP_DIST_DIR) && tar -czf libav.tar.gz libav
	mv libav/$(TMP_DIST_DIR)/libav.tar.gz ./
	rm -rf libav/$(TMP_DIST_DIR)
