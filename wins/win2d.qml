import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.1

import EkElts 1.0 as Ek

Window {
    id: win2d
    width: 400
    height: 400
    // properties #####################
    // functions ######################
    // elements #######################
    Rectangle {
        id: menu2d
        //
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 0
        height: 40
        color: "white"
        //
        Rectangle {
            id: win2dbtn
            width: 15
            height: 15
            //
            MouseArea {
                anchors.fill: parent
                onClicked: win2dmenu.open()
            }
            Ek.EkCircle {
                //
                width: 15; height: 15
                extcol: "blue"
                sizeIn: 8; sizeOut: 12
                //
            }
            Menu {
                //
                id: win2dmenu
                //anchors.top: win2dbtn.bottom (anchors isn't valid)
                //
                //
                MenuItem { text: "test 1" }
                MenuItem { text: "test 2" }
            }
        }
        //
        Label {
            visible: false
            //
            text: "name / save state / zoom"
            //
        }
    }
    Rectangle {
        id: zone2d
        //
        anchors.top: menu2d.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 0
        color: "blue"
        //
    }
}
