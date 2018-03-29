# amp-meteo

This is a fork of the zyGrib project from http://www.zygrib.org/

Homepage: https://github.com/arskom/amp-meteo

## Compilation

On gentoo, do the following to install dependencies:

	emerge qwt qtcreator libnova

Other distros should install development packages in addition to the binaries

Use the .pro file in the src directory. The Makefile at the root of the
repository is there only for historical purposes and will be deleted.

Tested with Qt 5.9 and GCC 6.4.0 and CLANG 5.0.1 on Linux only.
