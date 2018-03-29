
HEADERS += \
    $$PWD/drstemplates.h \
    $$PWD/grib2.h \
    $$PWD/gridtemplates.h \
    $$PWD/pdstemplates.h \


SOURCES += \
    $$PWD/cmplxpack.c \
    $$PWD/compack.c \
    $$PWD/comunpack.c \
    $$PWD/dec_png.c \
    $$PWD/drstemplates.c \
    $$PWD/enc_png.c \
    $$PWD/g2_addfield.c \
    $$PWD/g2_addgrid.c \
    $$PWD/g2_addlocal.c \
    $$PWD/g2_create.c \
    $$PWD/g2_free.c \
    $$PWD/g2_getfld.c \
    $$PWD/g2_gribend.c \
    $$PWD/g2_info.c \
    $$PWD/g2_miss.c \
    $$PWD/g2_unpack1.c \
    $$PWD/g2_unpack2.c \
    $$PWD/g2_unpack3.c \
    $$PWD/g2_unpack4.c \
    $$PWD/g2_unpack5.c \
    $$PWD/g2_unpack6.c \
    $$PWD/g2_unpack7.c \
    $$PWD/gbits.c \
    $$PWD/getdim.c \
    $$PWD/getpoly.c \
    $$PWD/gridtemplates.c \
    $$PWD/int_power.c \
    $$PWD/misspack.c \
    $$PWD/mkieee.c \
    $$PWD/pack_gp.c \
    $$PWD/pdstemplates.c \
    $$PWD/pngpack.c \
    $$PWD/pngunpack.c \
    $$PWD/rdieee.c \
    $$PWD/reduce.c \
    $$PWD/seekgb.c \
    $$PWD/simpack.c \
    $$PWD/simunpack.c \
    $$PWD/specpack.c \
    $$PWD/specunpack.c \


contains(DEFINES, USE_PNG) {
    LIBS += -lpng
}

contains (DEFINES, USE_JPEG2000) {
    LIBS += -ljasper   # respect order!

    SOURCES += \
        $$PWD/dec_jpeg2000.c \
        $$PWD/enc_jpeg2000.c \
        $$PWD/jpcpack.c \
        $$PWD/jpcunpack.c \

}
