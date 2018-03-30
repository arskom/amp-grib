CONFIG += qt c++11

QT += widgets xml network printsupport

TEMPLATE = app
TARGET   = amp-meteo

DEPENDPATH  += src/ src/util src/map src/GUI
INCLUDEPATH += src/ src/util src/map src/GUI src/curvedrawer src/g2clib

# ----------------------------------------------------
# platform specific
# ----------------------------------------------------
win32 {
    INCLUDEPATH += C:/libs/include/
    INCLUDEPATH += C:/mingw/include/
    LIBS += -LC:/libs/lib/ -LC:/mingw/lib/
    RC_FILE += data/img/resource.rc
}
else {
    macx {
        QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.8
        INCLUDEPATH += /opt/local/include/
        LIBS += -L/opt/local/lib
        CONFIG += i386
        ICON = data/img/zyGrib.icns
    }
    # linux
    else {
        # FIXME: discover this automatically
        INCLUDEPATH += /usr/include/qwt6
    }
}

# FIXME: discover this automatically
linux {
    LIBS += -lqwt6-qt5
}
else {
    LIBS += -lqwt
}

LIBS += -lbz2 -lz -lproj -lnova

QMAKE_CFLAGS += -std=c99

OBJECTS_DIR = objs
MOC_DIR = objs
UI_DIR  = ui

# DEFINES += USE_JPEG2000
DEFINES += USE_PNG
include(src/meteo.pri)
include(data/tr/translations.pri)
