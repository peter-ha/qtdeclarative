/****************************************************************************
**
** Copyright (C) 2015 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the QtQml module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL21$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see http://www.qt.io/terms-conditions. For further
** information use the contact form at http://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 2.1 or version 3 as published by the Free
** Software Foundation and appearing in the file LICENSE.LGPLv21 and
** LICENSE.LGPLv3 included in the packaging of this file. Please review the
** following information to ensure the GNU Lesser General Public License
** requirements will be met: https://www.gnu.org/licenses/lgpl.html and
** http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** As a special exception, The Qt Company gives you certain additional
** rights. These rights are described in The Qt Company LGPL Exception
** version 1.1, included in the file LGPL_EXCEPTION.txt in this package.
**
** $QT_END_LICENSE$
**
****************************************************************************/

#ifndef QTCPSERVERCONNECTION_H
#define QTCPSERVERCONNECTION_H

#include "qqmldebugserverconnection.h"

QT_BEGIN_NAMESPACE

class QTcpServerConnectionPrivate;
class QTcpServerConnection : public QObject, public QQmlDebugServerConnection
{
    Q_OBJECT
    Q_DECLARE_PRIVATE(QTcpServerConnection)
    Q_DISABLE_COPY(QTcpServerConnection)

public:
    QTcpServerConnection();
    ~QTcpServerConnection();

    void setServer(QQmlDebugServer *server);
    bool setPortRange(int portFrom, int portTo, bool bock, const QString &hostaddress);
    bool setFileName(const QString &fileName, bool block);

    bool isConnected() const;
    void disconnect();

    void waitForConnection();
    void flush();

private Q_SLOTS:
    void newConnection();

private:
    bool listen();

    QTcpServerConnectionPrivate *d_ptr;
};

class QTcpServerConnectionFactory : public QQmlDebugServerConnectionFactory
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlDebugServerConnectionFactory_iid FILE "qtcpserverconnection.json")
    Q_INTERFACES(QQmlDebugServerConnectionFactory)
public:
    QQmlDebugServerConnection *create(const QString &key);
};

QT_END_NAMESPACE

#endif // QTCPSERVERCONNECTION_H
