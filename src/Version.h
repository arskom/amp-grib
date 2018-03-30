/**********************************************************************
zyGrib: meteorological GRIB file viewer
Copyright (C) 2008-2012 - Jacques Zaninetti - http://www.zygrib.org

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
***********************************************************************/

#ifndef VERSION_H
#define VERSION_H

static const char *ZYGRIB_VERSION_NUM =
    #include "version"
;

static const int ZYGRIB_VERSION_BUILD =
    #include "build"
;

static const char *ZYGRIB_VERSION_DATE = __DATE__ __TIME__;

#if defined(Q_OS_WIN32)
#define ZYGRIB_APP_NAME "zyGrib_win"
#elif defined(Q_OS_MAC)
#define ZYGRIB_APP_NAME "zyGrib_mac"
#else
#define ZYGRIB_APP_NAME "zyGrib_unx"
#endif

class Version {

public:
    static QString getVersion() {
        return QString(ZYGRIB_VERSION_NUM);
    }
    static QString getAppName() {
        return QString(ZYGRIB_APP_NAME);
    }
    static QString getDate() {
        return QString(ZYGRIB_VERSION_DATE);
    }
    static QString getShortName() {
        return QString("zyGrib-" + getVersion());
    }
    static QString getCompleteName() {
        return QString(getAppName() + "-" + getVersion());
    }
};

#endif
