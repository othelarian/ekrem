#include "ek2dzone.h"

Ek2dzone::Ek2dzone(QQuickItem *parent) : QQuickPaintedItem(parent)
{
    //
    //
}

void Ek2dzone::paint(QPainter *painter)
{
    painter->setCompositionMode(QPainter::CompositionMode_Source);
    //
    //
    QPainterPath eraser;
    eraser.addEllipse(QRect(0,0,10,10));
    painter->fillPath(eraser,Qt::transparent);
    //
}
