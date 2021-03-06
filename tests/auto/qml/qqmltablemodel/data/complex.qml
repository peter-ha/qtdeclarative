/****************************************************************************
**
** Copyright (C) 2019 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the test suite of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL-EXCEPT$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 as published by the Free Software
** Foundation with exceptions as appearing in the file LICENSE.GPL3-EXCEPT
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.13
import Qt.labs.qmlmodels 1.0

TableView {
    width: 100
    height: 100
    delegate: Item {
        implicitWidth: 50
        implicitHeight: 50

        Text {
            text: model.display
            anchors.centerIn: parent
        }
    }
    model: TableModel {
        id: testModel
        objectName: "testModel"

        TableModelColumn {
            display: function(modelIndex) { return testModel.rows[modelIndex.row][0].name }
            setDisplay: function(modelIndex, cellData) { testModel.rows[modelIndex.row][0].name = cellData }
        }
        TableModelColumn {
            display: function(modelIndex) { return testModel.rows[modelIndex.row][1].age }
            setDisplay: function(modelIndex, cellData) { testModel.rows[modelIndex.row][1].age = cellData }
        }

        rows: [
            [
                { name: "John" },
                { age: 22 }
            ],
            [
                { name: "Oliver" },
                { age: 33 }
            ]
        ]
    }
}
