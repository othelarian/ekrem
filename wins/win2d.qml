import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.1

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
        color: "red"
        //
        Label {
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
