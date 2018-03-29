20xx-xx-xx : Amp-Meteo version 8.1

    Modernized source code repository. Compiles without important warnings.

2016-11-09 : zyGrib Version 8.0.1

    Bug fixed: inverted sea current arrows (one more time).
    There was a problem with some dll in the Windows archive of the previous version. 

2016-11-08 : zyGrib Version 8.0.0

    Read GRIB 2 files.
    Bug fixed: inverted sea current arrows.
    Display equivalent potential temperature théta-e at the surface and in altitude (calculated from the temperature, pressure and moisture if it is not present in the file).
    Faster calculation of the level lines.
    Ability to interrupt before the opening of a large file.
    Use QT version 5.
    Use g2clib NOAA's g2clib library for decoding the GRIB2 format. 

2015-01-18 : zyGrib Version 7.0.0

    Download and display new data GFS from NOAA : grid 0.25°x0.25° and up to 10 days forecasts.
    Warning: the high-resolution files are very large, therefore it is preferable to reduce the size of the area or the number of data.
    Restriction: for long-term files, only the first 5 days are with a grid of 0.25°, beyond the grid is 0.5°. 

2014-11-02 : zyGrib Version 6.2.4

    Reading grib files at high resolution from model SKIRON (University of Athens, Department of Physics, Atmospheric Modelling and Weather Forecasting Group)
    available here : http://openskiron.org/en.
    Geographical coverage :
    skiron index map

    Warning: exceptionally no Mac version. 

2014-01-09 : zyGrib Version 6.2.3

    New color scale for the waves, with a max range of 20m instead of 15m.
    Bug fixed: the arrows winds was not always displayed when the map contained the longitude of 180°. 

2014-01-04 : zyGrib Version 6.2.2

    Bug fixed: the wave model was not always displayed correctly in the headers (confusion between FNMOC-WW3-GLOBAL and FNMOC-WW3-MEDIT). Fortunately, the displayed data were correct. 

2013-11-25 : zyGrib Version 6.2.1

    Bug fixed: it was impossible to disable isolines. 

2013-11-13 : zyGrib Version 6.2.0

    Map scrolling with the mouse (+Ctrl).
        Note :this first version is not really optimized. The movements are jerky if the grib file is too large or if the machine is too slow.
        Reminder: click with the middle button to move the target point to the center of the window. 
    Enhancements of the curves module (thank you François-X) :
        the main window remains active, other curves can be opened.
        wind gust display with lines.
        temperature display is correct even if the grib does not contain the min/max temperatures.
        deflection curve of the wind no longer interferes with the pressure and cloudiness. 
    More accurate display of jet streams with a color scale modified (adaptation of a proposal from Sailingyachto2 aka ON3CHD).
        the wind below 40 kts is ignored and the scale goes up to 240 kts.
        Use key combination 'Ctrl+Maj+J' to toggle between jet stream colormap and the standard one, or navigate in the menu 'Weather map'->'Options'.
        Example: wind over the Atlantic at an altitude of 300 hPa
            Classic image: the colors are saturated above a wind speed of 75 kts: wind 300 hPa
            New colormap: the exact position of the jet stream is visible: jet stream 300 hPa 
    Bug fixed: loss of the altitude displayed at startup or when loading a new file.
    Pseudo bug fixed: a stable version of the qwt library is installed with source files, because it is not compatible with itself from one version to another. 

2013-11-06 : zyGrib Mac Version 6.1.4b

    concerns only the Mac OSX version 10.9 (Mavericks) :
    Bug fixes:
        Maps not found at startup: OK
        Malfunction of the file selection box: OK ... or NOT
        zyGrib now uses the QT file selector, which works very well, but does not meet the usual look and feel of Macs.
        You can switch back to the Mac file selector by putting the value 1 for the parameter mac_useNativeFileDialog in the file /Users/xxxxx/.zygrib/config/zygrib.ini
        but the bug comes back: loss of preset file name and directory sometimes lost. 

2013-04-28 : zyGrib Version 6.1.4

    Bug fixed: the levels 400 and 600 hPa are fully taken into account. 

2013-04-08 : zyGrib Version 6.1.3

    New russian translation (спасибо Yaroslav Zavarzin).
    Export SkewT data in a spreadsheet format.
    2 new levels of altitude : 400 hPa and 600 hPa.
    Warning : you have to check "SkewT" in the tab "Altitude" to retreive data, so files are big. 

2013-01-06 : zyGrib Version 6.1.2

    Update spanish translation (muchas gracias Luis Mederos). 

2013-01-02 : zyGrib Version 6.1.1

    Display of color scales in saved images.
    SkewT-LogP diagrams more complete :
        Color display of areas of convection.
        Display of surface level (mean altitude moyenne in the grid).
        Convection indices calculation :
            LI: Lifted Index
            SI: Showalter Index
            KI: K-Index
            TT: Total Totals Index
            SW: SWEAT Index
            CAPE / CIN: pseudo-graphical method very approximate, for comparison with the values ​​given by the model forecast. 
    Bug fixed : with Windows, sometimes, it was impossible to put forward the main window when meteotable or skewt was displayed. 

2012-12-10 : zyGrib Version 6.1.0

    Color maps an isolines for the theta-e (Equivalent potential temperature) at levels 925, 850, 700, 500, 300, 200 hPa.
    Isotherms at levels 925, 850, 700, 500, 300, 200 hPa, in addition to 2m.
    Sun and Moon rise and set in the meteotables.
    Restructuring menus that became too long.
    Start a new instance with the same geographic parameters (Ctrl+Shift+N).
    Zoom on Grib area becomes an option (menu Earth) to keep the current position and scale.
    Possibility to choose run GFS (Last, 0h, 6h, 12h, 18h) at download. Warning : it is slow, except for the last run.
    The maximum size of the files generated by the server is 100 MB (instead of 50).
    The values panel is in a scrollable area.
    Bug fixed in the curve drawer module (thanks François-X).
    Less bad estimate of the size of the files.
    Indication of the absence of data in the diagrams SkewT.
    Remove external libraries from source (must install them separately to compile in Windows).
    Improved zyGrib.pro file to compile without change in Debian and Ubuntu. 

2012-09-30 : zyGrib Version 6.0.2

    Update spanish translation (muchas gracias Luis Mederos).
    Bug fixed: bad wind unit in the curve drawer module (merci François X).
    Bug fixed: loss of the grib file directory.
    And a few minor bugs fixed. 

2012-08-26 : zyGrib Version 6.0.1

    Update czech translation (děkuji Pavel Kalian).
    Diagrams SkewT-LogP more complete:
    - Adjustable size.
    - Visualization of the wind (barbs + arrows) at altitudes: 1000, 925, 850, 800, 700, 600, 500, 400, 300, 200, 100 hPa.
    - Choice of the base altitude for the calculation of the convection levels (fixed levels or average lower layers).
    - Bug fixed for the calculation of equilibrium level when the pseudo-adiabatic saturated crosses several times the temperature curve.
    - The calculation of thermodynamic indices is not forgotten ... but it will come later ...
    Bug fixed: POIs were sometimes misplaced when extracting images from animations. 

2012-08-08 : zyGrib Version 6.0.0

    Display thermodynamic diagrams SkewT-LogP.
    sample

    Visualization of the evolution of temperature and humidity in the different layers of the troposphere, and allows the detection of convection zones.
    Accessible from the graph (right click) or from meteotables.
    Do not forget to select the data (tab Altitude).
    Data at elevations: 1000, 975, 950, 925, 900, 850, 875, 825, 800, 775, 750, 725, 700, 650, 600, 550, 500, 400, 300, 200, 100 hPa.
    Remarks:
    - The display of the wind in altitude is forecast for later ...
    - The units and the size of the diagrams will be adjustable later ...
    - Other things will also come later, perhaps ...
    Possibility of opening several meteotables simultaneously.
    Display of CIN (Convective Inhibition) in addition to CAPE.
    Display of the wind in altitude for MeteoBlue data. 

2012-06-03 : zyGrib Version 5.1.4

    New translation: Finnish (paljon kiitoksia Kari Salovaara).
    Bug fixed: memory leak while saving images of animations.
    User can choose the type of wave arrows. 

2012-03-11 : zyGrib Version 5.1.3

    New translation: Brazilian Portuguese (muito obrigado Leomar Nunes de Souza).
    New option : thinner wind arrows without point, for those who prefer (menu Data->Options), from an idea of zebul666.
    Blue color for current arrows to limit confusion with wind arrows. 

2012-02-26 : zyGrib Version 5.1.2

    Display data of GulfStream (RTOFS model, available from saildocs.com).
    Bug fixed: MAC version : jpeg images recording was broken.
    Dutch translation updated (thanksReinout de Groen).
    Some little bugs fixed, but it remains... 

2011-12-22 : zyGrib Version 5.1.1

    Curve drawer from Polaris, the return.
    Bug fixed : random loss of characters in proxy parameters, sometimes. 

2011-12-18 : zyGrib Version 5.1.0

    Optional download of files in strict HTTP mode.
    Only for zygrib's forum users (free).
    Limits :
        30 files max each 24h.
        250 MO max each 24h.
        At least 1 connection to zyGrib forum each 4 months. 
    New altitude level : 925hPa (≈ 760m).
    Display sea currents, but zyGrib does not provide these data (thanks to Alain Coat from Actimar).
    Sample currents and weather forecast file (West of France) from Actimar wrf1.grb
    Arabic translation (thanks to Andreas Degwerth from Cassidian).
    Security: encrypted passwords in configuration file.
    Perhaps you have to reconfigure the proxy parameters.
    Bug fixed : date cursor was sometime misplaced in 'local hour' mode.
    Bug fixed : better bounding box for the selection of very small areas.'.
    Bug fixed : crash with grib file with only waves. 

2011-09-10 : zyGrib Version 5.0.6

    Bug fixed : reference date was not displayed for MeteoBlue forecast.
    Bug fixed : longitude between 1°W and 0° was not displayed for worldwide files (particularly for NOAA archive files). 

2011-09-06 : zyGrib Version 5.0.5

    Essential for retrospective weather exploration: reading grib files from NOAA GFS archive (analysis data), available since 2004.
    * Cover: worldwide, grid of 1°x1°, 4 files per day.
    * Choose the .grb files whose size is about 20 MB.
    * Reading files is a bit long (it takes memory), all data are not recognized, but main data are displayed on the ground and in altitude. 

2011-08-17 : zyGrib Version 5.0.4

    Bug fixed : it was impossible to open a meteotable while reading a MeteoBlue file. 

2011-08-06 : zyGrib Version 5.0.3

    New russian translation (спасибо Yaroslav Zavarzin),
    Now ZyGrib can read very poor free grib files from Meteoconsult. 

2011-07-15 : zyGrib Version 5.0.2

    Reading of grib files from the Norwegian Meteorological Institute available here: yr.no
    Limitations:
        displays weather data (wind, pressure, temperature, precipitation) and waves but not other oceanographic data available in these files (salinity, currents, etc.).
        files curr4km-skagerak.grb et ggeo-Oslofjord00.grb do not contain data viewable by zygrib. 
    Some minor bugs fixed (there is still much). 

2011-07-14 : zyGrib Version 5.0.1

    Translations updated: czech (Pavel Kalian), dutch (Reinout de Groen), spanish (Luis Mederos) et frenglish (Jacques).
    Bug fixed: data waves were forgotten when exporting a météotable in spreadsheet format.
    Bug fixed : update headers when meteotable list of data is changed (had to close the meteotable).
    Some minor bugs fixed (don't worry, much remains). 

2011-06-29 : zyGrib Version 5.0

    The Waves !!! 

2011-05-21 : zyGrib Version 4.0.1

    User can choose visible data in the left board (right clic in the panel).
    Bug fixed: crash sometimes with data out of the "normal" range. 

2011-05-08 : zyGrib Version 4.0

    NOAA data up to 8 days rather than 7.
    Color scales.
    Data values panel can be hidden (Ctrl+V).
    Colors scale panel can be hidden (Ctrl+Y).
    Warning : changes in directories structure.
    Totally new colors scheme.
    Color scales are editable (text files colors_xxx.txt).
        1 ligne per threshold : v r g b
        v = threshold value
        r g b = rgb level (red, green, blue) between 0 and 255
        values must be in ascending order
        color is attributed to values ​​less than or equal to v
        except the last which is also the color of all excess values​​
        fixed color (no interpolation) below the first value or above the last. 
    More complete list of cities (source GeoNames)
    Around 60,000 cities come with zygrib (population >= 3000).
    Around 100,000 smaller cities are available in additional files (see download page).
    New population threshold for shown cities:
        population >= 1000000
        population >= 100000
        population >= 10000
        population >= 1000
        population < 1000 
    Bug fixed : values displayed for the position under the mouse are updated when the date is changed using the keyboard.
    Bug fixed : crash (sometimes) when the mouse was moved on a POI while reading aa grib file. 

2011-01-23 : zyGrib Version 3.9.9.1

    New russian translation (thanks Yaroslav/Specter).
    Bug fixed : drawing wind arrows on the grid for Meteoblue files.
    Personnal "cities" list :
        All files whose name begins with cities and located in maps / gis / are read.
        Format : text, encoding UTF8
        One city by line (5 data, separator ';') :
        country;name;population;latitude;longitude
            country: 2 chars international code ISO-3166 A2
            name
            population : "importance" of the city. 4 levels:
                population >= 1000000
                population >= 200000
                population >= 50000
                population < 50000 
            latitude
            longitude 
        Sample:
        AD;Andorra la Vella;20430;42.5;1.5166667 

2011-01-07 : zyGrib Version 3.9.9

    Distribution for Mac (Intel): ready to use complete .dmg archive.
    Bug fixed with Mac version (frequent crash after a download).
    New module by Polaris (Tim Holtschneider) : curve plot (yet experimental). 

2010-12-20 : zyGrib Version 3.9.8

    Download high resolution data from Meteoblue (Switzerland and surroundings).
    Plot isotherms (actually in Celcius degrees and at 2m above ground).
    Reverse mouse wheel zoom (same behaviour than the excellent OpenCPN navigation software).
    Freeze first column of meteotables (headers).
    More proxy parameters.
    New spanish translation by Luis Mederos.
    Fix some old bugs... create some new bugs... 

2010-10-28 : zyGrib Version 3.9.7

    Fix a supid bug (oops) : crash when create animation. 

2010-10-25 : zyGrib Version 3.9.6

    Fix a bug in version 3.9.5 : sometimes the progress bar was not hidden after the opening of a file. 

2010-10-25 : zyGrib Version 3.9.5

    New data (thank you NOAA !) : wind gust.
    Animation when loading files.
    Can interrupt the loading of big files.
    Fix a bug : rare crash when manipulating meteotables. 

2010-10-06 : zyGrib Version 3.9.4

    Reduce flashing when resizing window.
    Fixe a bug : the first image was not allways visible with some graphic cards. 

2010-10-05 : zyGrib Version 3.9.3

    Supress a vicious bug (random crash).
    New dutch translation. 

2010-05-14 : zyGrib Version 3.9.2

    zyGrib uses the new grib file server, faster and more reliable.
    Max file size is now 50 MO (was 20).
    New data in meteotables : geopotential altitude.
    Can save data from meteotables in SYLK format, readable with a spreadsheet.
    Don't use a famous but stupid spreadsheet wich do not understand correctly languages with beautiful accentued characters, but prefer OpenOffice. 

2010-05-02 : zyGrib Version 3.9.1

    More complete information about data on the map.
    Add relative humidity in altitude in meteotables.
    Display if possible the wind arrows at the same altitude than the main data of the map.
    Suppress a bug : area containing longitude 180° was sometimes not displayed when zooming. 

2010-04-20 : zyGrib Version 3.9.0

    New altitude level : 200 hPa (≈ 11800 m).
    New data : relative humidity at levels 850, 700, 500,300, 200 hPa.
    Can choose altitude levels when downloading grib files.
    Solve some bugs. 

2010-04-03 : zyGrib Version 3.8.6

    Despite malformed file headers, zygrib can now display corrupted GRIB files distributed by some suppliers, in particular Maxsee.
    There are more explanation in the french news page and in the forum (also in french, sorry). 

2010-03-15 : zyGrib Version 3.8.5.3

    New language: Czech (thanks Pavel Kalian). 

2010-03-09 : zyGrib Version 3.8.5.2

    Suppress again the bug in the Windows version: saving images worked with XP, but not with Vista or Windows 7 (thanks a lot Microsoft for to be not compatible with yourself).
    Always no change in the Linux version. 

2010-03-08 : zyGrib Version 3.8.5.1

    Suppress a bug in the Windows version: a dll was missing, so it was impossible to save images.
    No change in the Linux version. 

2010-03-08 : zyGrib Version 3.8.5

    Suppress an important bug: there was a impévisible crash when reading certain gribs files (rare, but it is not a reason).
    No new feature. 

2010-03-01 : zyGrib Version 3.8.4

    Save image (menu file or Ctrl+S).
    Save all the images of an animation.
    The trick red of the choice in the date moves when the mouse comes to titillate the date selector (sorry, automatic translation lose spoonerism !!!).
    Dialog boxes more compact, so zyGrib is usable on low resolution screen (800x600).
    Choose the language at the first start of the application.
    Source sentences are now in english (bad :) ) to facilitate the translations.
    Suppress a bug : geopotential altitudes very different from average value was not shown. 

2010-01-31 : zyGrib Version 3.8.3

    Graphical date selector.
    More complete information on meteorigical data shown on the map. 

2010-01-28 : zyGrib Version 3.8.2

    Can choose the unit for the geopotential altitudes.
    Show altitude data in meteotables.
    suppress a bug in the Windows version: save file path was lost.

2010-01-25 : zyGrib Version 3.8.1

    Download and visualization of data in altitude (geopotential altitude, wind, temperature, theta-e) at 850, 700, 500 et 300 hPa (approx 1460, 3000, 5600 and 9200 meters).
    When opening a gib file, the displayed date is the closest date from now.
    There was a lot of very important changes in the source code structure. It is now much easy to evoluate and to add new meteorological data.
    Suppress a important bug when loading application in 3.8.0 version (in line only a few minute). 

2009-12-16 : zyGrib Version 3.7.1

    Update Dutch translation.
    New Makefile in the source version for Linux.
    One can now do a make install to install all files in the directory $HOME/zyGrib (see the variable INSTALLDIR in the Makefile).
    Note : it's not a universal solution... but it's on the way... 

2009-12-05 : zyGrib Version 3.7.0

    User can change the fonts used in the interface (Ctrl+E).
    By default, zyGrib use and provide free fonts Liberation Fonts, for the interface and (more important) to assure the control of the size of the annotations on the maps.
    Adaptive display of cities names, sorted by population.
    Using cache memory for configuration parameters (significant speed improvment on slow support like USB key).
    Important rewriting of source code to facilitate future evolutions.
    ... 

2009-08-19 : zyGrib Version 3.6.3

    ZyGrib can now display Saildocs grib files. 
