import QtQuick 2.7
import QtQuick.Controls 2.1

import EkElts 1.0 as Ek
import EkStyles 1.0

Item {
    id: bar
    height: 52
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.margins: 0
    //
    //
    Component.onCompleted: {
        //
        //
    }
    ListView {
        //
        orientation: ListView.Horizontal
        //
        delegate: Item {
            //
            //
            Ek.EkCircle {
                //
                //
            }
        }
    }
}
