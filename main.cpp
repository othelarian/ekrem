#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QTranslator>

#include "classes/ekcircle.h"
#include "classes/ek2dzone.h"

int main(int argc, char *argv[])
{
    // app init
    QGuiApplication app(argc, argv);
    QCoreApplication::setApplicationName("Ekrem");
    QCoreApplication::setApplicationVersion("0.1.0");
    QCoreApplication::setOrganizationName("Othy Software");
    //
    // TODO : set translation
    //
    QTranslator trans_fr;
    trans_fr.load("ekrem_fr","translations");
    app.installTranslator(&trans_fr);
    //

    // types registring
    qmlRegisterType<EkCircle>("EkElts",1,0,"EkCircle");
    qmlRegisterType<Ek2dzone>("EkElts",1,0,"Ek2dzone");

    // qml Singletons
    qmlRegisterSingletonType(QUrl("qrc:/Components/EkStyleSheet.qml"),"EkStyles",1,0,"EkStyle");

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
