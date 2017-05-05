#include "ekcircle.h"

EkCircle::EkCircle(QQuickItem *parent) : QQuickPaintedItem(parent) {
    m_plain = false;
    m_incircle = false;
}

void EkCircle::paint(QPainter *painter)
{
    QPointF center(width()/2,height()/2);
    painter->setRenderHint(QPainter::Antialiasing);
    painter->translate(center);
    painter->setPen(Qt::NoPen);
    painter->setBrush(QBrush(m_extcol));
    QRectF maxrect(-float(m_sizeOut)/2,-float(m_sizeOut)/2,m_sizeOut,m_sizeOut);
    QPainterPath path;
    path.addEllipse(maxrect);
    if (!m_plain) {
        QRectF minrect(-float(m_sizeIn)/2,-float(m_sizeIn)/2,m_sizeIn,m_sizeIn);
        path.addEllipse(minrect);
    }
    painter->drawPath(path);
    if (m_incircle) {
        painter->setBrush(QBrush(m_incol));
        QRectF incirc(-float(m_sizeIn)/2,-float(m_sizeIn)/2,m_sizeIn,m_sizeIn);
        painter->drawEllipse(incirc);
    }
}

bool EkCircle::getPlain() { return m_plain; }

void EkCircle::setPlain(bool value) { m_plain = value; update(); }

bool EkCircle::getIncircle() { return m_incircle; }

void EkCircle::setIncircle(bool value) { m_incircle = value; update(); }

int EkCircle::getSizeOut() { return m_sizeOut; }

void EkCircle::setSizeOut(int value) { m_sizeOut = value; update(); }

int EkCircle::getSizeIn() { return m_sizeIn; }

void EkCircle::setSizeIn(int value) { m_sizeIn = value; update(); }

QColor EkCircle::getExtcol() { return m_extcol; }

void EkCircle::setExtcol(QColor value) { m_extcol = value; update(); }

QColor EkCircle::getIncol() { return m_incol; }

void EkCircle::setIncol(QColor value) { m_incol = value; update(); }
