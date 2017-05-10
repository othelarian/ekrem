TEMPLATE = app

QT += qml quick

CONFIG += c++11

SOURCES += main.cpp \
    classes/ekcircle.cpp \
    classes/ek2dzone.cpp

RESOURCES += qml.qrc

TRANSLATIONS += translations/ekrem_en.ts \
    translations/ekrem_fr.ts

lupdate_only{
SOURCES += main.qml \
    Components/*.qml \
    wins/*.qml
}

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

DEFINES += QT_DEPRECATED_WARNINGS

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    wins/win2d.qml

HEADERS += \
    classes/ekcircle.h \
    classes/ek2dzone.h
