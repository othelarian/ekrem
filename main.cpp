#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "classes/ekcircle.h"

int main(int argc, char *argv[])
{
    // app init
    QGuiApplication app(argc, argv);
    QCoreApplication::setApplicationName("Ekrem");
    QCoreApplication::setApplicationVersion("0.1.0");
    QCoreApplication::setOrganizationName("Othy Software");

    // types registring
    qmlRegisterType<EkCircle>("EkElts",1,0,"EkCircle");

    // engine init
    QQmlApplicationEngine engine;
    //
    // qmlcontext here
    //engine.rootContext()->setContextProperty("prop",ref/ptr);
    //
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    // launch
    return app.exec();
}
