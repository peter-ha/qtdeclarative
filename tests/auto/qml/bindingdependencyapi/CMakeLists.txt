# Generated from bindingdependencyapi.pro.

#####################################################################
## tst_bindingdependencyapi Test:
#####################################################################

# Collect test data
file(GLOB_RECURSE test_data_glob
    RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
    data/*)
list(APPEND test_data ${test_data_glob})

qt_add_test(tst_bindingdependencyapi
    SOURCES
        ../../shared/util.cpp ../../shared/util.h
        tst_bindingdependencyapi.cpp
    INCLUDE_DIRECTORIES
        ../../shared
    PUBLIC_LIBRARIES
        Qt::CorePrivate
        Qt::Gui
        Qt::GuiPrivate
        Qt::QmlPrivate
        Qt::QuickPrivate
    TESTDATA ${test_data}
)

## Scopes:
#####################################################################

qt_extend_target(tst_bindingdependencyapi CONDITION ANDROID OR APPLE_IOS
    DEFINES
        QT_QMLTEST_DATADIR=\\\":/data\\\"
)

qt_extend_target(tst_bindingdependencyapi CONDITION NOT ANDROID AND NOT APPLE_IOS
    DEFINES
        QT_QMLTEST_DATADIR=\\\"${CMAKE_CURRENT_SOURCE_DIR}/data\\\"
)
