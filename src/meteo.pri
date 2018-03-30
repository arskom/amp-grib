
include($$PWD/g2clib/g2clib.pri)

FORMS += \
    $$PWD/GUI/PositionEditorWidget.ui \
    $$PWD/GUI/PoiEditorDialog.ui \
    $$PWD/GUI/ColorEditorWidget.ui \
    $$PWD/GUI/LineEditorWidget.ui \
    $$PWD/GUI/TextStyleEditorWidget.ui \
    $$PWD/GUI/GraphicsParamsDialog.ui \
    $$PWD/GUI/MeteotableOptionsDialog.ui \
    $$PWD/GUI/AngleConverterWidget.ui \


HEADERS += \
    $$PWD/Astro.h \
    $$PWD/BoardPanel.h \
    $$PWD/ColorScale.h \
    $$PWD/ColorScaleWidget.h \
    $$PWD/DataDefines.h \
    $$PWD/DataColors.h \
    $$PWD/DataQString.h \
    $$PWD/DataMeteoAbstract.h \
    $$PWD/DataPointInfo.h \
    $$PWD/DateChooser.h \
    $$PWD/DialogBoxBase.h \
    $$PWD/DialogBoxColumn.h \
    $$PWD/DialogFonts.h \
    $$PWD/DialogGraphicsParams.h \
    $$PWD/DialogLoadGRIB.h \
    $$PWD/DialogLoadIAC.h \
    $$PWD/DialogLoadMBLUE.h \
    $$PWD/DialogProxy.h \
    $$PWD/DialogSelectMetar.h \
    $$PWD/DialogServerStatus.h \
    $$PWD/DialogUnits.h \
    $$PWD/FileLoader.h \
    $$PWD/FileLoaderGRIB.h \
    $$PWD/FileLoaderIAC.h \
    $$PWD/FileLoaderMBLUE.h \
    $$PWD/GribAnimator.h \
    $$PWD/GribPlot.h \
    $$PWD/Grib2Plot.h \
    $$PWD/GribReader.h \
    $$PWD/Grib2Reader.h \
    $$PWD/GribRecord.h \
    $$PWD/Grib2Record.h \
    $$PWD/GriddedPlotter.h \
    $$PWD/GriddedRecord.h \
    $$PWD/GriddedReader.h \
    $$PWD/IacPlot.h \
    $$PWD/IacReader.h \
    $$PWD/ImageWriter.h \
    $$PWD/IrregularGridded.h \
    $$PWD/IsoLine.h \
    $$PWD/LongTaskProgress.h \
    $$PWD/LonLatGrid.h \
    $$PWD/MbzFile.h \
    $$PWD/MbluePlot.h \
    $$PWD/MblueReader.h \
    $$PWD/MblueRecord.h \
    $$PWD/Metar.h \
    $$PWD/MeteoTable.h \
    $$PWD/MeteoTableWidget.h \
    $$PWD/MeteotableOptionsDialog.h \
    $$PWD/MainWindow.h \
    $$PWD/MapDrawer.h \
    $$PWD/MenuBar.h \
    $$PWD/SkewT.h \
    $$PWD/Terrain.h \
    $$PWD/Therm.h \
    $$PWD/Version.h \
    \
    $$PWD/curvedrawer/BoatSpeed.h \
    $$PWD/curvedrawer/CurveDrawer.h \
    $$PWD/curvedrawer/CustomQwtClasses.h \
    \
    $$PWD/util/Orthodromie.h \
    $$PWD/util/Settings.h \
    $$PWD/util/SylkFile.h \
    $$PWD/util/Util.h \
    $$PWD/util/zuFile.h \
    $$PWD/util/Font.h \
    \
    $$PWD/map/POI.h \
    $$PWD/map/POI_Editor.h \
    $$PWD/map/PositionEditor.h \
    $$PWD/map/Projection.h \
    $$PWD/map/GshhsRangsReader.h \
    $$PWD/map/GshhsReader.h \
    $$PWD/map/GisReader.h \
    \
    $$PWD/GUI/PositionEditorWidget.h \
    $$PWD/GUI/ColorEditorWidget.h \
    $$PWD/GUI/LineEditorWidget.h \
    $$PWD/GUI/TextStyleEditorWidget.h \
    $$PWD/GUI/AngleConverterWidget.h \
    $$PWD/GUI/AngleConverterDialog.h \


SOURCES += \
    $$PWD/Astro.cpp \
    $$PWD/MbzFile.cpp \
    $$PWD/MblueRecord.cpp \
    $$PWD/MblueReader.cpp \
    $$PWD/MbluePlot.cpp \
    $$PWD/BoardPanel.cpp \
    $$PWD/ColorScale.cpp \
    $$PWD/ColorScaleWidget.cpp \
    $$PWD/DataColors.cpp \
    $$PWD/DataQString.cpp \
    $$PWD/DataMeteoAbstract.cpp \
    $$PWD/DataPointInfo.cpp \
    $$PWD/DateChooser.cpp \
    $$PWD/DialogBoxColumn.cpp \
    $$PWD/DialogFonts.cpp \
    $$PWD/DialogGraphicsParams.cpp \
    $$PWD/DialogLoadGRIB.cpp \
    $$PWD/DialogLoadIAC.cpp \
    $$PWD/DialogLoadMBLUE.cpp \
    $$PWD/DialogProxy.cpp \
    $$PWD/DialogSelectMetar.cpp \
    $$PWD/DialogServerStatus.cpp \
    $$PWD/DialogUnits.cpp \
    $$PWD/FileLoaderGRIB.cpp \
    $$PWD/FileLoaderIAC.cpp \
    $$PWD/FileLoaderMBLUE.cpp \
    $$PWD/GriddedPlotter.cpp \
    $$PWD/GriddedReader.cpp \
    $$PWD/GriddedRecord.cpp \
    $$PWD/GribAnimator.cpp \
    $$PWD/GribPlot.cpp \
    $$PWD/Grib2Plot.cpp \
    $$PWD/GribReader.cpp \
    $$PWD/Grib2Reader.cpp \
    $$PWD/GribRecord.cpp \
    $$PWD/Grib2Record.cpp \
    $$PWD/IacPlot.cpp \
    $$PWD/IacReader.cpp \
    $$PWD/IacReaderUtil.cpp \
    $$PWD/ImageWriter.cpp \
    $$PWD/IrregularGridded.cpp \
    $$PWD/IsoLine.cpp \
    $$PWD/LongTaskProgress.cpp \
    $$PWD/LonLatGrid.cpp \
    $$PWD/main.cpp \
    $$PWD/MainWindow.cpp \
    $$PWD/MapDrawer.cpp \
    $$PWD/MenuBar.cpp \
    $$PWD/Metar.cpp \
    $$PWD/MeteoTable.cpp \
    $$PWD/MeteoTableWidget.cpp \
    $$PWD/MeteotableOptionsDialog.cpp \
    $$PWD/SkewT.cpp \
    $$PWD/SkewTWindow.cpp \
    $$PWD/Terrain.cpp \
    $$PWD/Therm.cpp \
    \
    $$PWD/map/POI.cpp \
    $$PWD/map/POI_Editor.cpp \
    $$PWD/map/PositionEditor.cpp \
    $$PWD/map/Projection.cpp \
    $$PWD/map/Projection_libproj.cpp \
    $$PWD/map/GshhsRangsReader.cpp \
    $$PWD/map/GshhsReader.cpp \
    $$PWD/map/GisReader.cpp \
    \
    $$PWD/util/Util.cpp \
    $$PWD/util/zuFile.cpp \
    $$PWD/util/Settings.cpp \
    $$PWD/util/Orthodromie.cpp \
    $$PWD/util/Font.cpp \
    \
    $$PWD/curvedrawer/BoatSpeed.cpp \
    $$PWD/curvedrawer/CurveDrawer.cpp \
    $$PWD/curvedrawer/CustomQwtClasses.cpp \
    \
    $$PWD/GUI/PositionEditorWidget.cpp \
    $$PWD/GUI/ColorEditorWidget.cpp \
    $$PWD/GUI/LineEditorWidget.cpp \
    $$PWD/GUI/TextStyleEditorWidget.cpp \
    $$PWD/GUI/AngleConverterWidget.cpp \
    $$PWD/GUI/AngleConverterDialog.cpp \
