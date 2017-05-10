import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.1

import EkElts 1.0 as Ek
import EkStyles 1.0

import "../Components"

Window {
    id: window2d
    width: EkStyle.win2d_width
    minimumWidth: EkStyle.win2d_minwidth
    height: EkStyle.win2d_height
    minimumHeight: EkStyle.win2d_minheight
    // properties #####################
    //
    property bool tst1: false
    //
    // functions ######################
    //
    function tst2() { console.log("tst2"); }
    //
    // elements #######################
    Rectangle {
        id: zone2d
        //
        anchors.top: bar2d.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 0
        color: "blue"
        //
    }
    Rectangle {
        id: bar2d
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 0
        height: 26
        color: "white"
        EkMenu {
            id: menu2d
            property bool tst1: window2d.tst1
            //
            function tst2() { console.log("tst2 in menu") }
            function tst3() { menu2d.toggleActive("tst2") }
            //
            popwidth: 200
            actions: [
                { ident: "save", title: qsTr("Save"), short: "Ctrl+S", active: false, fn: menu2d.tst2 },
                { ident: "save_as", title: qsTr("Save As"), short: "Ctrl+Shift+S", fn: window2d.tst2 },
                { ident: "toggle_tree", title: "Show / Hide Tree", fn: menu2d.tst3 },
                { ident: "undo", title: "Undo", fn: menu2d.tst2 },
                { ident: "redo", title: "Redo", fn: menu2d.tst2 }
            ]
            //
        }
        Label {
            id: title2d
            anchors.left: menu2d.right
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            //
            text: "name / save state / zoom"
            //
        }
    }
}
