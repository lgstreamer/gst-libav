LG webOS 5.x GStreamer - ffmpeg's libav
=======================================

## Description

This directory contains the gst-libav source, as compiled by LG to be included
in webOS 5.x devices, such as **LG CX OLED TVs**.

Thus, unless LG applied some changes that have not yet been published, the
binaries produced by compiling the source from this repository can work as a
drop-in replacement for the GStreamer binaries that are officially used by LG
in their CX OLED Smart TVs.

This can be very useful if you have [rooted your TV](https://github.com/RootMyTV/RootMyTV.github.io/issues/85#issuecomment-1295058979)
and want to alter this source to enable or restore functionality that is
not provided by default on your CX model.

For instance, in this specific repository, we are also **restoring** DTS audio
decoding (stereo downmix only), which LG's forcibly removed, on CX models, so
that DTS tracks can be played natively on your TV. For more on this, please see
[this thread](https://github.com/RootMyTV/RootMyTV.github.io/issues/72#issuecomment-1343204028)
from the [RootMyTV](https://github.com/RootMyTV/RootMyTV.github.io) issue
tracker.

## Origin

This source, which is licensed under LPGL v2.0, was obtained through a legal
inquiry at https://opensource.lge.com/inquiry and was extracted from the
`webOS 5.0 JO 2.0` archive that can be downloaded [here](http://opensource.lge.com/product/list?page=&ctgr=005&subCtgr=006&keyword=OLED65CX5LB).

The changes that have been applied by LG on top of the official GStreamer
1.14.4 source can be found in [this commit](https://github.com/lgstreamer/gst-libav/commit/1b22f9249212f8c1f90e27bb732b7237df6e6610).

## Compilation

### Toolchain installation

You will need a recent Linux system, with some GTK related system updates as
well as the webosbrew toolchain from https://www.webosbrew.org. On Debian 11,
the toolchain can be installed as follows:

```
apt install cmake doxygen libglib2.0-dev-bin gobject-introspection libgirepository1.0-dev
wget https://github.com/webosbrew/meta-lg-webos-ndk/releases/download/1.0.g-rev.5/webos-sdk-x86_64-armv7a-neon-toolchain-1.0.g.sh
chmod 755 webos-sdk-x86_64-armv7a-neon-toolchain-1.0.g.sh
./webos-sdk-x86_64-armv7a-neon-toolchain-1.0.g.sh
```

Note that, if using the toolchain above, you should also have compiled and
installed the GStreamer software from https://github.com/lgstreamer/gstreamer
as well as the base plugins from https://github.com/lgstreamer/gst-plugins-base
otherwise the process will complain that your version of GStreamer is too old.

### Build process

Once the toolchain and GStreamer dependencies have been installed, you can
compile gst-libav by issuing:

```
git clone https://github.com/lgstreamer/gst-libav.git
cd gst-libav
. /opt/webos-sdk-x86_64/1.0.g/environment-setup-armv7a-neon-webos-linux-gnueabi
./autogen.sh --noconfigure
cd gst-libs/ext/libav/
git am ../../../libav-Force-stereo-downmix-and-integer-output.patch
cd -
./configure --host=arm-webos-linux-gnueabi --with-sysroot=${SDKTARGETSYSROOT} \
  --prefix=${SDKTARGETSYSROOT}/usr/ \
  --disable-silent-rules --disable-dependency-tracking --disable-gtk-doc \
  --with-libav-extra-configure="--disable-everything \
  --enable-parser=dca --enable-decoder=dca --enable-decoder=mp3 \
  --enable-decoder=aac --enable-decoder=ac3 --enable-decoder=h264 \
  --enable-decoder=alac --enable-decoder=amrnb --enable-decoder=amrwb \
  --enable-decoder=eac3 --enable-decoder=flac --enable-decoder=wmapro \
  --enable-decoder=wmav1 --enable-decoder=wmav2 --enable-decoder=wmavoice" \
  --disable-static --enable-orc --disable-valgrind
./fix_sysroot.sh
make -j6
```
