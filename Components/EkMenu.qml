import QtQuick 2.7
import QtQuick.Controls 2.1

import EkElts 1.0 as Ek
import EkStyles 1.0

Item {
    id: menu
    width: 30; height: 26
    property bool open: false
    property bool saved: true
    property int popwidth: 120
    property var actions: []
    function action(name) {
        for (var i=0;i<actions.length;i++) {
            if (name == actions[i].ident) { actions[i].fn(); break }
        }
    }
    function toggleActive(id) {
        for (var i=0;i<actions.length;i++) {
            if (actions[i].ident == id) {
                menuListView.model.setProperty(i,"active",!menuListView.model.get(i).active)
                break
            }
        }
    }
    Component.onCompleted: {
        menuListView.model.clear()
        for (var i=0;i<actions.length;i++) {
            var elt = { title: actions[i].title, fn: actions[i].ident }
            elt.active = (actions[i].hasOwnProperty("active"))? actions[i].active : true
            elt.shortlab = (actions[i].hasOwnProperty("short"))? actions[i].short : ""
            menuListView.model.append(elt)
        }
    }
    Ek.EkCircle {
        id: menuSwitch
        width: menu.width; height: menu.height
        sizeIn: 10; sizeOut: 16
        extcol: EkStyle.circle_ext
        incol: EkStyle.circle_saved
        incircle: !saved
        Rectangle {
            id: menuIndicator
            property int topmargin: 11
            property int rightmargin: 0
            property int bwidth: 8
            property int bheight: 4
            anchors.top: menuSwitch.top
            anchors.topMargin: topmargin
            anchors.right: menuSwitch.right
            anchors.rightMargin: rightmargin
            width: bwidth; height: bheight
            color: EkStyle.circle_ext
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                menu.open = !menu.open
                menuIndicator.bwidth = (menu.open)? 4 : 8
                menuIndicator.bheight = (menu.open)? 8 : 4
                menuIndicator.topmargin = (menu.open)? 18 : 11
                menuIndicator.rightmargin = (menu.open)? 13 : 0
            }
        }
    }
    Rectangle {
        id: menuList
        visible: menu.open
        color: "white"
        anchors.top: menuSwitch.bottom
        anchors.left: menuSwitch.left
        anchors.margins: 0
        width: menu.popwidth
        height: 30*menuListView.model.count
        ListView {
            id: menuListView
            anchors.left: menuList.left
            anchors.top: menuList.top
            anchors.bottom: menuList.bottom
            anchors.margins: 0
            width: menuList.width
            clip: true
            interactive: false
            spacing: 0
            model: ListModel {}
            delegate: Item {
                height: 30
                width: menuListView.width
                property bool hover: false
                Ek.EkCircle {
                    width: parent.height; height: parent.height
                    sizeIn: 10; sizeOut: 16
                    extcol: EkStyle.circle_ext
                    incol: EkStyle.circle_hover
                    incircle: parent.hover
                    plain: false
                    Rectangle {
                        anchors.top: parent.top
                        anchors.topMargin: 0
                        anchors.left: parent.left
                        anchors.leftMargin: parent.width/2-2
                        width: 4; height: 8
                        color: EkStyle.circle_ext
                    }
                    Rectangle {
                        visible: (index+1 == menuListView.model.count)? false : true
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0
                        anchors.left: parent.left
                        anchors.leftMargin: parent.width/2-2
                        width: 4; height: 8
                        color: EkStyle.circle_ext
                    }
                }
                Label {
                    anchors.left: parent.left
                    anchors.leftMargin: parent.height
                    anchors.verticalCenter: parent.verticalCenter
                    color: (active)? "black" : "gray"
                    text: title
                }
                Label {
                    text: shortlab
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    horizontalAlignment: Text.AlignRight
                    color: (active)? "black" : "gray"
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: if (active) { parent.hover = true }
                    onExited: if (active) { parent.hover = false }
                    onClicked: if (active) { action(fn) }
                }
            }
        }
    }
}
