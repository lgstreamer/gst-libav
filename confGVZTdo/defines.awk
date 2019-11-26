BEGIN {
D["PACKAGE_NAME"]=" \"GStreamer libav\""
D["PACKAGE_TARNAME"]=" \"gst-libav\""
D["PACKAGE_VERSION"]=" \"1.14.4\""
D["PACKAGE_STRING"]=" \"GStreamer libav 1.14.4\""
D["PACKAGE_BUGREPORT"]=" \"http://bugzilla.gnome.org/enter_bug.cgi?product=GStreamer\""
D["PACKAGE_URL"]=" \"\""
D["PACKAGE"]=" \"gst-libav\""
D["VERSION"]=" \"1.14.4\""
D["STDC_HEADERS"]=" 1"
D["HAVE_SYS_TYPES_H"]=" 1"
D["HAVE_SYS_STAT_H"]=" 1"
D["HAVE_STDLIB_H"]=" 1"
D["HAVE_STRING_H"]=" 1"
D["HAVE_MEMORY_H"]=" 1"
D["HAVE_STRINGS_H"]=" 1"
D["HAVE_INTTYPES_H"]=" 1"
D["HAVE_STDINT_H"]=" 1"
D["HAVE_UNISTD_H"]=" 1"
D["HAVE_DLFCN_H"]=" 1"
D["LT_OBJDIR"]=" \".libs/\""
D["HAVE_ORC"]=" 1"
D["GST_PACKAGE_NAME"]=" \"GStreamer libav source release\""
D["GST_PACKAGE_ORIGIN"]=" \"Unknown package origin\""
D["HAVE_CPU_ARM"]=" 1"
D["HOST_CPU"]=" \"arm\""
D["TARGET_CPU"]=" \"arm\""
D["_FILE_OFFSET_BITS"]=" 64"
D["HAVE_PTHREAD_PRIO_INHERIT"]=" 1"
D["HAVE_PTHREAD"]=" 1"
D["STDC_HEADERS"]=" 1"
D["GIO_MODULE_DIR"]=" \"/usr/lib/gio/modules\""
D["GIO_LIBDIR"]=" \"/usr/lib\""
D["GIO_PREFIX"]=" \"/usr\""
D["PLUGINDIR"]=" \"/home/hoonhee/work/webos/toolchain_sdk/o20/sysroots/ca9v1-starfishmllib32-linux-gnueabi/usr/lib/gstreamer-1.0\""
D["GST_LEVEL_DEFAULT"]=" GST_LEVEL_NONE"
D["HAVE_AVI_H"]=" 1"
D["LIBAV_SOURCE"]=" \"local snapshot\""
D["HAVE_LIBAV_UNINSTALLED"]=" /**/"
  for (key in D) D_is_set[key] = 1
  FS = ""
}
/^[\t ]*#[\t ]*(define|undef)[\t ]+[_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ][_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]*([\t (]|$)/ {
  line = $ 0
  split(line, arg, " ")
  if (arg[1] == "#") {
    defundef = arg[2]
    mac1 = arg[3]
  } else {
    defundef = substr(arg[1], 2)
    mac1 = arg[2]
  }
  split(mac1, mac2, "(") #)
  macro = mac2[1]
  prefix = substr(line, 1, index(line, defundef) - 1)
  if (D_is_set[macro]) {
    # Preserve the white space surrounding the "#".
    print prefix "define", macro P[macro] D[macro]
    next
  } else {
    # Replace #undef with comments.  This is necessary, for example,
    # in the case of _POSIX_SOURCE, which is predefined and required
    # on some systems where configure will not decide to define it.
    if (defundef == "undef") {
      print "/*", prefix defundef, macro, "*/"
      next
    }
  }
}
{ print }
