import QtQuick 2.7

pragma Singleton

Item {
    id: ekstyle
    // properties #####################
    // colors ############
    readonly property color circle_ext: "#00aaff"
    readonly property color circle_saved: "orange"
    readonly property color circle_hover: "orange"
    // sizes #############
    readonly property int win2d_width: 400
    readonly property int win2d_minwidth: 200
    readonly property int win2d_height: 400
    readonly property int win2d_minheight: 200
}
