

#### Inputs



#### Libraries



#### Tests



#### Features

qt_feature("quick-animatedimage" PRIVATE
    SECTION "Qt Quick"
    LABEL "AnimatedImage item"
    PURPOSE "Provides the AnimatedImage item."
    CONDITION TARGET Qt::Gui AND QT_FEATURE_movie
)
qt_feature("quick-canvas" PRIVATE
    SECTION "Qt Quick"
    LABEL "Canvas item"
    PURPOSE "Provides the Canvas item."
    CONDITION QT_FEATURE_quick_path
)
qt_feature("quick-designer" PRIVATE
    SECTION "Qt Quick"
    LABEL "Support for Qt Quick Designer"
    PURPOSE "Provides support for the Qt Quick Designer in Qt Creator."
)
qt_feature("quick-flipable" PRIVATE
    SECTION "Qt Quick"
    LABEL "Flipable item"
    PURPOSE "Provides the Flipable item."
)
qt_feature("quick-gridview" PRIVATE
    SECTION "Qt Quick"
    LABEL "GridView item"
    PURPOSE "Provides the GridView item."
    CONDITION QT_FEATURE_qml_delegate_model
)
qt_feature("quick-itemview" PRIVATE
    LABEL "ItemView item"
    CONDITION QT_FEATURE_quick_gridview OR QT_FEATURE_quick_listview OR QT_FEATURE_quick_tableview
)
qt_feature("quick-viewtransitions" PRIVATE
    LABEL "Transitions required for ItemViews and Positioners"
    CONDITION QT_FEATURE_quick_itemview OR QT_FEATURE_quick_positioners
)
qt_feature("quick-listview" PRIVATE
    SECTION "Qt Quick"
    LABEL "ListView item"
    PURPOSE "Provides the ListView item."
    CONDITION QT_FEATURE_qml_delegate_model
)
qt_feature("quick-tableview" PRIVATE
    SECTION "Qt Quick"
    LABEL "TableView item"
    PURPOSE "Provides the TableView item."
    CONDITION QT_FEATURE_qml_table_model
)
qt_feature("quick-particles" PRIVATE
    SECTION "Qt Quick"
    LABEL "Particle support"
    PURPOSE "Provides a particle system."
    CONDITION TARGET Qt::Gui AND QT_FEATURE_quick_shadereffect AND QT_FEATURE_quick_sprite AND QT_FEATURE_opengl
)
qt_feature("quick-path" PRIVATE
    SECTION "Qt Quick"
    LABEL "Path support"
    PURPOSE "Provides Path elements."
    CONDITION QT_FEATURE_quick_shadereffect
)
qt_feature("quick-pathview" PRIVATE
    SECTION "Qt Quick"
    LABEL "PathView item"
    PURPOSE "Provides the PathView item."
    CONDITION ( QT_FEATURE_qml_delegate_model ) AND ( QT_FEATURE_quick_path )
)
qt_feature("quick-positioners" PRIVATE
    SECTION "Qt Quick"
    LABEL "Positioner items"
    PURPOSE "Provides Positioner items."
)
qt_feature("quick-repeater" PRIVATE
    SECTION "Qt Quick"
    LABEL "Repeater item"
    PURPOSE "Provides the Repeater item."
    CONDITION QT_FEATURE_qml_delegate_model
)
qt_feature("quick-shadereffect" PRIVATE
    SECTION "Qt Quick"
    LABEL "ShaderEffect item"
    PURPOSE "Provides Shader effects."
)
qt_feature("quick-sprite" PRIVATE
    SECTION "Qt Quick"
    LABEL "Sprite item"
    PURPOSE "Provides the Sprite item."
)
qt_feature("quick-draganddrop" PUBLIC
    SECTION "Qt Quick"
    LABEL "Drag & Drop"
    PURPOSE "Drag and drop support for Qt Quick"
    CONDITION ( QT_FEATURE_draganddrop ) AND ( QT_FEATURE_regularexpression )
)