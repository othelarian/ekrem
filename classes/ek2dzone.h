#ifndef EK2DZONE_H
#define EK2DZONE_H

#include <QBrush>
#include <QPainter>
#include <QPainterPath>
#include <QQuickPaintedItem>

class Ek2dzone : public QQuickPaintedItem
{
    Q_OBJECT
public:
    Ek2dzone(QQuickItem *parent = 0);
    void paint(QPainter *painter);
    //
    //
private:
    //
    //
};

#endif // EK2DZONE_H
