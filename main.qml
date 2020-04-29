import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Grid")

    ListModel {
        id: lista
        ListElement {name: "Blue"; modelWidth: 100; inside:"jeden"; size:22; fontColor: "Yellow"}
        ListElement {name: "Green"; modelWidth: 100; inside:"dwa"; size:20; fontColor: "Oragne"}
        ListElement {name: "Red"; modelWidth: 100; inside:"trzy"; size:28; fontColor: "Blue"}
        ListElement {name: "Orange"; modelWidth: 100; inside:"cztery"; size:22; fontColor: "Black"}
    }
    Component {
        id: gridDelegate
        Rectangle {
            color: name
            width: modelWidth
            height: 100
            Text {
                text: qsTr(inside)
                font.pixelSize: size
                color: fontColor
            }
        }
    }

    Grid {
        anchors.centerIn: parent
        columns: 2
        spacing: 5
        Repeater { model: lista ; delegate: gridDelegate ;}
    }
}
