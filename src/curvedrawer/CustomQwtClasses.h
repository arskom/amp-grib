/*
 *  CustomQwtClasses.h
 *  zyGrib
 *
 *  Created by Tim Holtschneider on 25.11.10.
 *  All rights reserved.
 *
 */

#ifndef CUSTOMQWTCLASSES_H
#define CUSTOMQWTCLASSES_H

#include <qwt6/qwt_picker_machine.h>
#include <qwt6/qwt_plot_canvas.h>
#include <qwt6/qwt_plot_curve.h>
#include <qwt6/qwt_plot_picker.h>
#include <qwt6/qwt_point_data.h>
#include <qwt6/qwt_scale_draw.h>

#include <QDateTime>
#include <QPainter>
#include <QVector>

/*
 *  Custom Scale Draw Class
 */
class CustomQwtScale : public QwtScaleDraw {
public:
    CustomQwtScale(const QVector<double> &, const QVector<double> &);
    CustomQwtScale(const QVector<double> &, const QVector<QString> &);

    virtual QwtText label(double) const;

private:
    QVector<double> myOrig;
    QVector<double> myRepl;
    QVector<QString> myReplStr;
};

/*
 *  Custom Plot Picker Class
 */
class CustomQwtPicker : public QwtPlotPicker {
public:
    CustomQwtPicker(int, int, RubberBand, QwtPickerMachine *, DisplayMode, QWidget *, const QDateTime &, QwtPlotCurve *);

protected:
    virtual QwtText trackerTextF(const QPointF &) const;
    virtual void drawRubberBand(QPainter *) const;

private:
    QDateTime dtCurPos;
    QwtPlotCurve *qwtCurve;
    mutable QPointF qFst, qCur;

    void updEndPoints(const QPointF &, const QPointF &) const;
};

#endif
