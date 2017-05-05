#ifndef EKCIRCLE_H
#define EKCIRCLE_H

#include <QBrush>
#include <QPainter>
#include <QPainterPath>
#include <QQuickPaintedItem>

class EkCircle : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(bool plain READ getPlain WRITE setPlain)
    Q_PROPERTY(bool incircle READ getIncircle WRITE setIncircle)
    Q_PROPERTY(int sizeOut READ getSizeOut WRITE setSizeOut)
    Q_PROPERTY(int sizeIn READ getSizeIn WRITE setSizeIn)
    Q_PROPERTY(QColor extcol READ getExtcol WRITE setExtcol)
    Q_PROPERTY(QColor incol READ getIncol WRITE setIncol)
public:
    EkCircle(QQuickItem *parent = 0);
    void paint(QPainter *painter);
    bool getPlain();
    void setPlain(bool value);
    bool getIncircle();
    void setIncircle(bool value);
    int getSizeOut();
    void setSizeOut(int value);
    int getSizeIn();
    void setSizeIn(int value);
    QColor getExtcol();
    void setExtcol(QColor value);
    QColor getIncol();
    void setIncol(QColor value);
private:
    bool m_plain;
    bool m_incircle;
    int m_sizeOut;
    int m_sizeIn;
    QColor m_extcol;
    QColor m_incol;
};

#endif // EKCIRCLE_H
