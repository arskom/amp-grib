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

#ifndef COLORSCALE_H
#define COLORSCALE_H

#include <QColor>
#include <locale.h>

#include "DataDefines.h"
#include "Util.h"

//------------------------------------------------
class ColorElement {
public:
    ColorElement(double vmin, double vmax,
            int ra, int ga, int ba,
            int rb, int gb, int bb);

    QRgb getColor(double v, bool smooth, int transp);

    bool isIn(double v) { return v >= vmin && v <= vmax; }
    bool isLow(double v) { return v < vmin; }
    bool isHigh(double v) { return v > vmax; }

    void dbg();

    double vmin, vmax; // vmin < value <= vmax
    int ra, ga, ba; // rgb for vmin value
    int rb, gb, bb; // rgb for vmax value
};

//------------------------------------------------
class ColorScale {
public:
    ColorScale();
    ~ColorScale();

    bool readFile(QString filename, double kv, double offset);
    void addColor(ColorElement *color);
    QRgb getColor(double v, bool smooth);
    void dbg();

    std::vector<ColorElement *> colors;

private:
    int transparence;
};

#endif
