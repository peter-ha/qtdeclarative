# Generated from openvg.pro.

#####################################################################
## QSGOpenVGAdaptation Plugin:
#####################################################################

qt_add_plugin(QSGOpenVGAdaptation
    OUTPUT_NAME qsgopenvgbackend
    TYPE scenegraph
    SOURCES
        qopenvgcontext.cpp qopenvgcontext_p.h
        qopenvgmatrix.cpp qopenvgmatrix.h
        qopenvgoffscreensurface.cpp qopenvgoffscreensurface.h
        qsgopenvgadaptation.cpp qsgopenvgadaptation_p.h
        qsgopenvgcontext.cpp qsgopenvgcontext_p.h
        qsgopenvgfontglyphcache.cpp qsgopenvgfontglyphcache.h
        qsgopenvgglyphnode.cpp qsgopenvgglyphnode_p.h
        qsgopenvghelpers.cpp qsgopenvghelpers.h
        qsgopenvginternalimagenode.cpp qsgopenvginternalimagenode.h
        qsgopenvginternalrectanglenode.cpp qsgopenvginternalrectanglenode.h
        qsgopenvglayer.cpp qsgopenvglayer.h
        qsgopenvgnodevisitor.cpp qsgopenvgnodevisitor.h
        qsgopenvgpainternode.cpp qsgopenvgpainternode.h
        qsgopenvgpublicnodes.cpp qsgopenvgpublicnodes.h
        qsgopenvgrenderable.cpp qsgopenvgrenderable.h
        qsgopenvgrenderer.cpp qsgopenvgrenderer_p.h
        qsgopenvgrenderloop.cpp qsgopenvgrenderloop_p.h
        qsgopenvgtexture.cpp qsgopenvgtexture.h
    PUBLIC_LIBRARIES
        Qt::Core
        Qt::CorePrivate
        Qt::Gui
        Qt::GuiPrivate
        Qt::QmlPrivate
        Qt::QuickPrivate
        openvg
)

#### Keys ignored in scope 1:.:.:openvg.pro:<TRUE>:
# OTHER_FILES = "$$PWD/openvg.json"
# QMAKE_TARGET_DESCRIPTION = "Quick OpenVG Renderer for Qt."
# QMAKE_TARGET_PRODUCT = "Qt Quick OpenVG Renderer (Qt $$QT_VERSION)"

## Scopes:
#####################################################################

qt_extend_target(QSGOpenVGAdaptation CONDITION CMAKE_BUILD_TYPE STREQUAL Debug AND debug_and_release
    INCLUDE_DIRECTORIES
        ${CMAKE_CURRENT_BINARY_DIR}/../../../quick/.tracegen/debug
)

qt_extend_target(QSGOpenVGAdaptation CONDITION debug_and_release AND NOT CMAKE_BUILD_TYPE STREQUAL Debug
    INCLUDE_DIRECTORIES
        ${CMAKE_CURRENT_BINARY_DIR}/../../../quick/.tracegen/release
)

qt_extend_target(QSGOpenVGAdaptation CONDITION NOT debug_and_release
    INCLUDE_DIRECTORIES
        ${CMAKE_CURRENT_BINARY_DIR}/../../../quick/.tracegen
)

qt_extend_target(QSGOpenVGAdaptation CONDITION QT_FEATURE_quick_sprite
    SOURCES
        qsgopenvgspritenode.cpp qsgopenvgspritenode.h
)
