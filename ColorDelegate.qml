import QtQuick 2.0

Rectangle {
    id: root

//    property int size: 80

//    width: size
//    height: size
    width: GridView.view?.cellWidth*1.0 ?? ListView.view?.width ?? 80;
    height: GridView.view?.cellHeight*1.0 ?? ListView.view?.height?? 80;
    color: model.colorName

    MouseArea {
        id: mouseArea;

        anchors.fill: parent
        hoverEnabled: true
        onContainsMouseChanged: {
            if (mouseArea.containsMouse)
                root.state = "NameVisible";

        }
        onClicked: {
            if (root.state === "NameVisible") {
                root.state = "HexVisible";
            }
            else if (root.state === "HexVisible") {
                root.state = "NameVisible";
            }
        }
    }

    Text {
        id: label
        width: root.width
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        visible: false
        fontSizeMode: Text.HorizontalFit

        font.pixelSize: 20
        minimumPixelSize: 8

        text: colorName
        color: Qt.darker(colorName)
    }

    state: "NoneVisible";

    states: [
        State {
            name: "NoneVisible";
            when: !mouseArea.containsMouse;
            PropertyChanges {
                label {visible: false;}
            }
        },
        State {
            name: "NameVisible";
            PropertyChanges {
                label {visible: true; text: model.colorName;}
            }
        },
        State {
            name: "HexVisible";
            PropertyChanges {
                label {visible: true; text: model.colorHex;}
            }
        }

    ]
}
