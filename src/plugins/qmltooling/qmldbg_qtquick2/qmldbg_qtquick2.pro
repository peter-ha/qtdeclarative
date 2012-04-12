load(qt_build_config)

TARGET = qmldbg_qtquick2
QT       += qml-private quick-private core-private gui-private v8-private

load(qt_plugin)

DESTDIR  = $$QT.qml.plugins/qmltooling

INCLUDEPATH *= $$PWD $$PWD/../shared

SOURCES += \
    qtquick2plugin.cpp \
    highlight.cpp \
    qquickviewinspector.cpp \
    ../shared/abstracttool.cpp \
    ../shared/abstractviewinspector.cpp \
    inspecttool.cpp

HEADERS += \
    qtquick2plugin.h \
    highlight.h \
    qquickviewinspector.h \
    ../shared/abstracttool.h \
    ../shared/abstractviewinspector.h \
    ../shared/qmlinspectorconstants.h \
    inspecttool.h

OTHER_FILES += qtquick2plugin.json

target.path += $$[QT_INSTALL_PLUGINS]/qmltooling
INSTALLS += target
