import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.1

import EkElts 1.0 as Ek

import "Components"

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
    EkBar {
        //
        //
    }
    //
    // TEST : code for a new window
    Button {
        anchors.top: parent.top
        anchors.topMargin: 60
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
    // dialogs ########################
    //
    //
}
