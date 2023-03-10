BEGIN {
S["am__EXEEXT_FALSE"]=""
S["am__EXEEXT_TRUE"]="#"
S["LTLIBOBJS"]=""
S["LIBOBJS"]=""
S["HAVE_LIBAV_UNINSTALLED_FALSE"]="#"
S["HAVE_LIBAV_UNINSTALLED_TRUE"]=""
S["LZMA_LIBS"]="-llzma"
S["BZ2_LIBS"]="-lbz2"
S["WIN32_LIBS"]=""
S["SWSCALE_DEPS"]="$(top_builddir)/gst-libs/ext/libav/libswscale/libswscale.a                 $(top_builddir)/gst-libs/ext/libav/libavutil/libavutil.a"
S["LIBAV_SUBDIRS"]="gst-libs"
S["LIBAV_DEPS"]="$(top_builddir)/gst-libs/ext/libav/libavfilter/libavfilter.a               $(top_builddir)/gst-libs/ext/libav/libavformat/libavformat.a             "\
"  $(top_builddir)/gst-libs/ext/libav/libavcodec/libavcodec.a               $(top_builddir)/gst-libs/ext/libav/libswresample/libswresample.a         "\
"      $(top_builddir)/gst-libs/ext/libav/libavutil/libavutil.a"
S["LIBAV_CPPFLAGS"]="-I $(top_srcdir)/gst-libs/ext/libav                 -I $(top_builddir)/gst-libs/ext/libav"
S["HAVE_LZMA_FALSE"]="#"
S["HAVE_LZMA_TRUE"]=""
S["HAVE_BZ2_FALSE"]="#"
S["HAVE_BZ2_TRUE"]=""
S["LIBAV_EXTERNALS_REVISION"]=""
S["LIBAV_REVISION"]=""
S["LIBAV_SVN"]=""
S["LIBAV_CO_DIR"]=""
S["SWSCALE_LIBS"]="$(top_builddir)/gst-libs/ext/libav/libswscale/libswscale.a                 $(top_builddir)/gst-libs/ext/libav/libavutil/libavutil.a"
S["SWSCALE_CFLAGS"]="-I $(top_srcdir)/gst-libs/ext/libav                   -I $(top_builddir)/gst-libs/ext/libav                   -Wno-deprecated-declarations"
S["LIBAV_LIBS"]="/home/hoonhee/work/webos/toolchain_sdk/o20/source/gst-libav/gst-libs/ext/libavfilter.la               /home/hoonhee/work/webos/toolchain_sdk/o20/sou"\
"rce/gst-libav/gst-libs/ext/libavformat.la               /home/hoonhee/work/webos/toolchain_sdk/o20/source/gst-libav/gst-libs/ext/libavcodec.la      "\
"         /home/hoonhee/work/webos/toolchain_sdk/o20/source/gst-libav/gst-libs/ext/libswresample.la               /home/hoonhee/work/webos/toolchain_"\
"sdk/o20/source/gst-libav/gst-libs/ext/libavutil.la"
S["LIBAV_CFLAGS"]="-Wno-deprecated-declarations"
S["GST_LIBAV_ENABLE_GPL_FALSE"]=""
S["GST_LIBAV_ENABLE_GPL_TRUE"]="#"
S["DARWIN_LDFLAGS"]=""
S["GST_PLUGIN_LDFLAGS"]="-module -avoid-version -export-symbols-regex '^_*gst_plugin_.*' -no-undefined -Wl,-Bsymbolic"
S["GST_ALL_LDFLAGS"]="-no-undefined -Wl,-Bsymbolic"
S["GST_OPTION_CFLAGS"]="$(WARNING_CFLAGS) $(ERROR_CFLAGS) $(DEBUG_CFLAGS) $(PROFILE_CFLAGS) $(GCOV_CFLAGS) $(OPT_CFLAGS) $(DEPRECATED_CFLAGS)"
S["DEPRECATED_CFLAGS"]=""
S["PROFILE_CFLAGS"]=""
S["EXTRA_CFLAGS"]="-fno-strict-aliasing"
S["GST_LEVEL_DEFAULT"]="GST_LEVEL_NONE"
S["ERROR_CFLAGS"]=""
S["WARNING_CFLAGS"]=" -Wall -Wdeclaration-after-statement -Wvla -Wpointer-arith -Wmissing-declarations -Wmissing-prototypes -Wredundant-decls -Wundef -Wwrite-strings -Wf"\
"ormat-nonliteral -Wformat-security -Wold-style-definition -Winit-self -Wmissing-include-dirs -Waddress -Waggregate-return -Wno-multichar -Wnested-ex"\
"terns"
S["GST_PLUGIN_BUILD_STATIC_FALSE"]=""
S["GST_PLUGIN_BUILD_STATIC_TRUE"]="#"
S["plugindir"]="$(libdir)/gstreamer-1.0"
S["PLUGINDIR"]="/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/lib/gstreamer-1.0"
S["HAVE_GST_CHECK_FALSE"]="#"
S["HAVE_GST_CHECK_TRUE"]=""
S["GST_CHECK_LIBS"]="-L/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-s"\
"tarfishmllib32-linux-gnueabi/usr/lib -lgstcheck-1.0 -lm -lgstreamer-1.0 -lgobject-2.0 -lglib-2.0"
S["GST_CHECK_CFLAGS"]="-pthread -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/home/hoonhee/work/webos/toolchain_sdk/o20/sysroot"\
"s/ca9v1-starfishmllib32-linux-gnueabi/usr/include/gstreamer-1.0 -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gn"\
"ueabi/usr/include/glib-2.0 -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/lib/glib-2.0/include"
S["GSTPB_PLUGINS_DIR"]="/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/lib/gstreamer-1.0"
S["GST_PLUGINS_BASE_DIR"]="/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/lib/gstreamer-1.0/gst:/home/hoonhee/work/webos/toolchain"\
"_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/lib/gstreamer-1.0/sys:/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishml"\
"lib32-linux-gnueabi/usr/lib/gstreamer-1.0/ext"
S["GST_PLUGINS_BASE_LIBS"]="-L/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-s"\
"tarfishmllib32-linux-gnueabi/usr/lib -lgstreamer-1.0 -lgobject-2.0 -lglib-2.0"
S["GST_PLUGINS_BASE_CFLAGS"]="-pthread -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/home/hoonhee/work/webos/toolchain_sdk/o20/sysroot"\
"s/ca9v1-starfishmllib32-linux-gnueabi/usr/include/gstreamer-1.0 -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gn"\
"ueabi/usr/include/glib-2.0 -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/lib/glib-2.0/include"
S["GST_BASE_LIBS"]="-L/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-s"\
"tarfishmllib32-linux-gnueabi/usr/lib -lgstbase-1.0 -lgstreamer-1.0 -lgobject-2.0 -lglib-2.0"
S["GST_BASE_CFLAGS"]="-pthread -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/home/hoonhee/work/webos/toolchain_sdk/o20/sysroot"\
"s/ca9v1-starfishmllib32-linux-gnueabi/usr/include/gstreamer-1.0 -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gn"\
"ueabi/usr/include/glib-2.0 -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/lib/glib-2.0/include"
S["GST_PLUGINS_DIR"]="/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/lib/gstreamer-1.0"
S["GST_TOOLS_DIR"]="/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/bin"
S["GST_LIBS"]="-L/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-s"\
"tarfishmllib32-linux-gnueabi/usr/lib -lgstreamer-1.0 -lgobject-2.0 -lglib-2.0"
S["GST_CFLAGS"]="-I$(top_srcdir)/gst-libs -I$(top_builddir)/gst-libs -pthread -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnuea"\
"bi/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/include/gstreamer-1.0 -I/home/hoonhee/work/webos/toolc"\
"hain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/include/glib-2.0 -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishm"\
"llib32-linux-gnueabi/usr/lib/glib-2.0/include -fno-strict-aliasing  -DG_THREADS_MANDATORY -DG_DISABLE_CAST_CHECKS $(GST_OPTION_CFLAGS)"
S["GIO_LDFLAGS"]=""
S["GIO_LIBS"]="-lgio-2.0 -lgobject-2.0 -lglib-2.0"
S["GIO_CFLAGS"]="-pthread -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/include/glib-2.0 -I/home/hoonhee/work/webos/t"\
"oolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/lib/glib-2.0/include"
S["GLIB_EXTRA_CFLAGS"]=" -DG_THREADS_MANDATORY -DG_DISABLE_CAST_CHECKS"
S["GLIB_MKENUMS"]="glib-mkenums"
S["GLIB_GENMARSHAL"]="glib-genmarshal"
S["GLIB_LIBS"]="-lgobject-2.0 -lgmodule-2.0 -pthread -lglib-2.0"
S["GLIB_CFLAGS"]="-pthread -I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/include/glib-2.0 -I/home/hoonhee/work/webos/t"\
"oolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/lib/glib-2.0/include"
S["GLIB_REQ"]="2.40.0"
S["PTHREAD_CFLAGS"]="-pthread"
S["PTHREAD_LIBS"]=""
S["PTHREAD_CC"]="arm-starfishmllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=softfp -mcpu=cortex-a9 -mtune=cortex-a9 -funwind-tables -rdynam"\
"ic --sysroot=/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi"
S["ax_pthread_config"]=""
S["LIBM"]="-lm"
S["ENABLE_PLUGIN_DOCS_FALSE"]=""
S["ENABLE_PLUGIN_DOCS_TRUE"]="#"
S["pkgpyexecdir"]="${pyexecdir}/gst-libav"
S["pyexecdir"]="${exec_prefix}/lib/python2.7/site-packages"
S["pkgpythondir"]="${pythondir}/gst-libav"
S["pythondir"]="${prefix}/lib/python2.7/site-packages"
S["PYTHON_PLATFORM"]="linux2"
S["PYTHON_EXEC_PREFIX"]="${exec_prefix}"
S["PYTHON_PREFIX"]="${prefix}"
S["PYTHON_VERSION"]="2.7"
S["PYTHON"]="/usr/bin/python"
S["GTK_DOC_USE_LIBTOOL_FALSE"]="#"
S["GTK_DOC_USE_LIBTOOL_TRUE"]=""
S["GTK_DOC_BUILD_PDF_FALSE"]=""
S["GTK_DOC_BUILD_PDF_TRUE"]="#"
S["GTK_DOC_BUILD_HTML_FALSE"]="#"
S["GTK_DOC_BUILD_HTML_TRUE"]=""
S["ENABLE_GTK_DOC_FALSE"]=""
S["ENABLE_GTK_DOC_TRUE"]="#"
S["GTKDOC_DEPS_LIBS"]=""
S["GTKDOC_DEPS_CFLAGS"]=""
S["HTML_DIR"]="${datadir}/gtk-doc/html"
S["GTKDOC_MKPDF"]="/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/x86_64-starfishsdk-linux/usr/bin/gtkdoc-mkpdf"
S["GTKDOC_REBASE"]="/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/x86_64-starfishsdk-linux/usr/bin/gtkdoc-rebase"
S["GTKDOC_CHECK"]="/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/x86_64-starfishsdk-linux/usr/bin/gtkdoc-check"
S["HAVE_VALGRIND_FALSE"]=""
S["HAVE_VALGRIND_TRUE"]="#"
S["VALGRIND_PATH"]="no"
S["HAVE_CPU_CRISV32_FALSE"]=""
S["HAVE_CPU_CRISV32_TRUE"]="#"
S["HAVE_CPU_CRIS_FALSE"]=""
S["HAVE_CPU_CRIS_TRUE"]="#"
S["HAVE_CPU_X86_64_FALSE"]=""
S["HAVE_CPU_X86_64_TRUE"]="#"
S["HAVE_CPU_M68K_FALSE"]=""
S["HAVE_CPU_M68K_TRUE"]="#"
S["HAVE_CPU_IA64_FALSE"]=""
S["HAVE_CPU_IA64_TRUE"]="#"
S["HAVE_CPU_S390_FALSE"]=""
S["HAVE_CPU_S390_TRUE"]="#"
S["HAVE_CPU_MIPS_FALSE"]=""
S["HAVE_CPU_MIPS_TRUE"]="#"
S["HAVE_CPU_HPPA_FALSE"]=""
S["HAVE_CPU_HPPA_TRUE"]="#"
S["HAVE_CPU_SPARC_FALSE"]=""
S["HAVE_CPU_SPARC_TRUE"]="#"
S["HAVE_CPU_ARM_FALSE"]="#"
S["HAVE_CPU_ARM_TRUE"]=""
S["HAVE_CPU_ARC_FALSE"]=""
S["HAVE_CPU_ARC_TRUE"]="#"
S["HAVE_CPU_ALPHA_FALSE"]=""
S["HAVE_CPU_ALPHA_TRUE"]="#"
S["HAVE_CPU_PPC64_FALSE"]=""
S["HAVE_CPU_PPC64_TRUE"]="#"
S["HAVE_CPU_PPC_FALSE"]=""
S["HAVE_CPU_PPC_TRUE"]="#"
S["HAVE_CPU_I386_FALSE"]=""
S["HAVE_CPU_I386_TRUE"]="#"
S["GST_GCOV_ENABLED_FALSE"]=""
S["GST_GCOV_ENABLED_TRUE"]="#"
S["CCASFLAGS"]=""
S["FFLAGS"]=""
S["CXXFLAGS"]=" -O2 -pipe -g -feliminate-unused-debug-types  -fno-diagnostics-show-caret"
S["GCOV"]=""
S["GCOV_LIBS"]=""
S["GCOV_CFLAGS"]=""
S["VALGRIND_LIBS"]=""
S["VALGRIND_CFLAGS"]=""
S["GST_PACKAGE_ORIGIN"]="Unknown package origin"
S["GST_PACKAGE_NAME"]="GStreamer libav source release"
S["ACLOCAL_AMFLAGS"]="-I m4 -I common/m4"
S["HAVE_ORCC_FALSE"]=""
S["HAVE_ORCC_TRUE"]="#"
S["HAVE_ORC_FALSE"]="#"
S["HAVE_ORC_TRUE"]=""
S["ORCC_FLAGS"]="--compat 0.4.16"
S["ORCC"]=""
S["ORC_LIBS"]="-lorc-0.4"
S["ORC_CFLAGS"]="-I/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/include/orc-0.4"
S["PKG_CONFIG"]="/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/x86_64-starfishsdk-linux/usr/bin/pkg-config"
S["CPP"]="arm-starfishmllib32-linux-gnueabi-gcc -E  -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=softfp -mcpu=cortex-a9 -mtune=cortex-a9 -funwind-tables -rdy"\
"namic --sysroot=/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi"
S["LT_SYS_LIBRARY_PATH"]=""
S["OTOOL64"]=""
S["OTOOL"]=""
S["LIPO"]=""
S["NMEDIT"]=""
S["DSYMUTIL"]=""
S["MANIFEST_TOOL"]=":"
S["RANLIB"]="arm-starfishmllib32-linux-gnueabi-ranlib"
S["ac_ct_AR"]=""
S["AR"]="arm-starfishmllib32-linux-gnueabi-ar"
S["LN_S"]="ln -s"
S["NM"]="arm-starfishmllib32-linux-gnueabi-nm"
S["ac_ct_DUMPBIN"]=""
S["DUMPBIN"]=""
S["LD"]="arm-starfishmllib32-linux-gnueabi-ld  --sysroot=/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi"
S["FGREP"]="/bin/grep -F"
S["EGREP"]="/bin/grep -E"
S["GREP"]="/bin/grep"
S["SED"]="sed"
S["am__fastdepCC_FALSE"]=""
S["am__fastdepCC_TRUE"]="#"
S["CCDEPMODE"]="depmode=none"
S["am__nodep"]=""
S["AMDEPBACKSLASH"]=""
S["AMDEP_FALSE"]=""
S["AMDEP_TRUE"]="#"
S["am__quote"]=""
S["am__include"]="include"
S["DEPDIR"]=".deps"
S["OBJEXT"]="o"
S["EXEEXT"]=""
S["ac_ct_CC"]=""
S["CPPFLAGS"]=""
S["LDFLAGS"]="-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed"
S["CFLAGS"]=" -O2 -pipe -g -feliminate-unused-debug-types  -fno-diagnostics-show-caret"
S["CC"]="arm-starfishmllib32-linux-gnueabi-gcc  -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=softfp -mcpu=cortex-a9 -mtune=cortex-a9 -funwind-tables -rdynam"\
"ic --sysroot=/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi"
S["LIBTOOL"]="$(SHELL) $(top_builddir)/libtool"
S["OBJDUMP"]="arm-starfishmllib32-linux-gnueabi-objdump"
S["DLLTOOL"]="false"
S["AS"]="arm-starfishmllib32-linux-gnueabi-as "
S["GST_LT_LDFLAGS"]=" -version-info 1404:0:1404"
S["GST_LIBVERSION"]="1404:0:1404"
S["GST_AGE"]="1404"
S["GST_REVISION"]="0"
S["GST_CURRENT"]="1404"
S["GST_API_VERSION"]="1.0"
S["MAINT"]=""
S["MAINTAINER_MODE_FALSE"]="#"
S["MAINTAINER_MODE_TRUE"]=""
S["PACKAGE_VERSION_RELEASE"]="1"
S["PACKAGE_VERSION_NANO"]="0"
S["PACKAGE_VERSION_MICRO"]="4"
S["PACKAGE_VERSION_MINOR"]="14"
S["PACKAGE_VERSION_MAJOR"]="1"
S["AM_BACKSLASH"]="\\"
S["AM_DEFAULT_VERBOSITY"]="1"
S["AM_DEFAULT_V"]="$(AM_DEFAULT_VERBOSITY)"
S["AM_V"]="$(V)"
S["am__untar"]="tar -xf -"
S["am__tar"]="tar --format=ustar -chf - \"$$tardir\""
S["AMTAR"]="$${TAR-tar}"
S["am__leading_dot"]="."
S["SET_MAKE"]=""
S["AWK"]="gawk"
S["mkdir_p"]="$(MKDIR_P)"
S["MKDIR_P"]="/bin/mkdir -p"
S["INSTALL_STRIP_PROGRAM"]="$(install_sh) -c -s"
S["STRIP"]="arm-starfishmllib32-linux-gnueabi-strip"
S["install_sh"]="${SHELL} /home/hoonhee/work/webos/toolchain_sdk/o20/source/gst-libav/install-sh"
S["MAKEINFO"]="${SHELL} /home/hoonhee/work/webos/toolchain_sdk/o20/source/gst-libav/missing makeinfo"
S["AUTOHEADER"]="${SHELL} /home/hoonhee/work/webos/toolchain_sdk/o20/source/gst-libav/missing autoheader"
S["AUTOMAKE"]="${SHELL} /home/hoonhee/work/webos/toolchain_sdk/o20/source/gst-libav/missing automake-1.15"
S["AUTOCONF"]="${SHELL} /home/hoonhee/work/webos/toolchain_sdk/o20/source/gst-libav/missing autoconf"
S["ACLOCAL"]="${SHELL} /home/hoonhee/work/webos/toolchain_sdk/o20/source/gst-libav/missing aclocal-1.15"
S["VERSION"]="1.14.4"
S["PACKAGE"]="gst-libav"
S["CYGPATH_W"]="echo"
S["am__isrc"]=""
S["INSTALL_DATA"]="${INSTALL} -m 644"
S["INSTALL_SCRIPT"]="${INSTALL}"
S["INSTALL_PROGRAM"]="${INSTALL}"
S["target_os"]="linux"
S["target_vendor"]="starfishmllib32"
S["target_cpu"]="arm"
S["target"]="arm-starfishmllib32-linux-gnueabi"
S["host_os"]="linux-gnueabi"
S["host_vendor"]="starfishmllib32"
S["host_cpu"]="arm"
S["host"]="arm-starfishmllib32-linux-gnueabi"
S["build_os"]="linux-gnu"
S["build_vendor"]="pc"
S["build_cpu"]="x86_64"
S["build"]="x86_64-pc-linux-gnu"
S["target_alias"]="arm-starfishmllib32-linux-gnueabi"
S["host_alias"]="arm-starfishmllib32-linux-gnueabi"
S["build_alias"]="x86_64-linux"
S["LIBS"]=""
S["ECHO_T"]=""
S["ECHO_N"]="-n"
S["ECHO_C"]=""
S["DEFS"]="-DHAVE_CONFIG_H"
S["mandir"]="${datarootdir}/man"
S["localedir"]="${datarootdir}/locale"
S["libdir"]="${exec_prefix}/lib"
S["psdir"]="${docdir}"
S["pdfdir"]="${docdir}"
S["dvidir"]="${docdir}"
S["htmldir"]="${docdir}"
S["infodir"]="${datarootdir}/info"
S["docdir"]="${datarootdir}/doc/${PACKAGE_TARNAME}"
S["oldincludedir"]="/usr/include"
S["includedir"]="${prefix}/include"
S["runstatedir"]="${localstatedir}/run"
S["localstatedir"]="${prefix}/var"
S["sharedstatedir"]="${prefix}/com"
S["sysconfdir"]="${prefix}/etc"
S["datadir"]="${datarootdir}"
S["datarootdir"]="${prefix}/share"
S["libexecdir"]="${exec_prefix}/libexec"
S["sbindir"]="${exec_prefix}/sbin"
S["bindir"]="${exec_prefix}/bin"
S["program_transform_name"]="s&^&arm-starfishmllib32-linux-gnueabi-&"
S["prefix"]="/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr"
S["exec_prefix"]="${prefix}"
S["PACKAGE_URL"]=""
S["PACKAGE_BUGREPORT"]="http://bugzilla.gnome.org/enter_bug.cgi?product=GStreamer"
S["PACKAGE_STRING"]="GStreamer libav 1.14.4"
S["PACKAGE_VERSION"]="1.14.4"
S["PACKAGE_TARNAME"]="gst-libav"
S["PACKAGE_NAME"]="GStreamer libav"
S["PATH_SEPARATOR"]=":"
S["SHELL"]="/bin/bash"
  for (key in S) S_is_set[key] = 1
  FS = ""

}
{
  line = $ 0
  nfields = split(line, field, "@")
  substed = 0
  len = length(field[1])
  for (i = 2; i < nfields; i++) {
    key = field[i]
    keylen = length(key)
    if (S_is_set[key]) {
      value = S[key]
      line = substr(line, 1, len) "" value "" substr(line, len + keylen + 3)
      len += length(value) + length(field[++i])
      substed = 1
    } else
      len += 1 + keylen
  }

  print line
}

