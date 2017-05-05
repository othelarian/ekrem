import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.1

import EkElts 1.0 as Ek

Window {
    id: root
    visible: true
    width: 400
    height: 480
    title: "Ekrem"
    // properties #####################
    // elements #######################
    //
    // TODO : menu : file (new, open, save) /
    // TODO : Tools
    // TODO : generation tree
    //
    // TEST : code for a new window
    Button {
        text: "test 2D win"
        onClicked: {
            //
            var cmp = Qt.createComponent("wins/win2d.qml")
            var win = cmp.createObject(root)
            win.show()
            //
        }
    }
    // TEST
    //
    Ek.EkCircle {
        //
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        //
        width: 20
        height: 20
        extcol: "blue"
        sizeOut: 15
        sizeIn: 12
        incol: "orange"
        incircle: true
        //
    }
    //
    //
    // dialogs ########################
}
