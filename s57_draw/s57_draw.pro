#-------------------------------------------------
#
# Project created by QtCreator 2012-02-23T18:01:13
#
#-------------------------------------------------

QT       += core gui opengl
CONFIG(debug,debug|release): TARGET =    s57_drawd
CONFIG(release,debug|release): TARGET =    s57_draw

TEMPLATE =  app
DESTDIR = ../s57_bin

SOURCES  +=\
            s57_draw_main.cpp \
            s57_drawwindow.cpp

HEADERS  += \
            s57_drawwindow.h

FORMS    += \
    S57_DrawWindow.ui

#lib_s57.dll
INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD
win32:CONFIG(release, debug|release): LIBS += ../s57_bin/lib_s57.lib
else:win32:CONFIG(debug, debug|release): LIBS += ../s57_bin/lib_s57d.lib

include (ogr.pri)

OTHER_FILES += \
            dic.txt \
            s57_draw.ts \
            s57_draw.qm

RESOURCES += \
            s57_draw.qrc

TRANSLATIONS += s57_draw.ts
