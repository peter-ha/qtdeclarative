/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the QtQuick module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.9 // to get PathItem

Rectangle {
    color: "lightGray"
    Rectangle {
        border.color: "black"
        width: 200
        height: 200
        anchors.centerIn: parent

        PathItem {
            anchors.fill: parent

            VisualPath {
                strokeColor: "transparent"

                fillGradient: PathLinearGradient {
                    id: grad
                    y1: 50; y2: 150
                    PathGradientStop { position: 0; color: "black" }
                    PathGradientStop { position: 1; color: "red" }
                }

                Path {
                    startX: 10; startY: 10
                    PathLine { relativeX: 180; relativeY: 0 }
                    PathLine { relativeX: 0; relativeY: 180 }
                    PathLine { relativeX: -180; relativeY: 0 }
                    PathLine { relativeX: 0; relativeY: -180 }
                }
            }
        }

        Timer {
            id: spreadTimer
            interval: 3000
            running: true
            repeat: true
            property variant spreads: [ PathGradient.PadSpread, PathGradient.RepeatSpread, PathGradient.ReflectSpread ]
            property variant spreadTexts: [ "PadSpread", "RepeatSpread", "ReflectSpread" ]
            property int spreadIdx: 0
            onTriggered: { spreadIdx = (spreadIdx + 1) % spreads.length; grad.spread = spreads[spreadIdx] }
        }


        PathItem {
            anchors.fill: parent
            VisualPath {
                strokeColor: "gray"
                strokeWidth: 2
                fillColor: "transparent"
                Path {
                    PathMove { x: 0; y: 50 }
                    PathLine { relativeX: 200; relativeY: 0 }
                    PathMove { x: 0; y: 150 }
                    PathLine { relativeX: 200; relativeY: 0 }
                }
            }
        }
    }

    Text {
        anchors.right: parent.right
        text: spreadTimer.spreadTexts[spreadTimer.spreadIdx]
    }
}
