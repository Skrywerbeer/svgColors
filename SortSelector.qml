import QtQuick

Item {
    id: root;

    property alias label: label.text;
    property alias color: background.color;

    signal sortAscending();
    signal sortDecending();

    component DirectionButton : Rectangle {
        id: buttonRoot;
        property bool ascending: true;
        signal clicked();

        height: root.height*0.9;
        width: height;
        radius: height/2;
        border.color: "ivory";

        Text {
            anchors.centerIn: parent;
            text: "🛦";
            font.pixelSize: parent.height/2;
            rotation: !ascending ? 180: 0;
        }
        MouseArea {
            id: mouse;

            anchors.fill: parent;
            onClicked: parent.clicked();
        }
        state: "UnHighligted";

        states: [
            State {
                name: "UnHighlighted";
                when: !mouse.pressed;
                PropertyChanges {buttonRoot {color: "ivory"; border.width: 0;}}
            },
            State {
                name: "Highlighted";
                when: mouse.pressed;
                PropertyChanges {buttonRoot {color: root.color; border.width: 3;}}
            }
        ]
        transitions: [
            Transition {
                from: "*"
                to: "*"
                ColorAnimation {duration: 200}
            }
        ]
    }

    Rectangle {
        id: background;
        width: root.width;
        height: root.height;
        radius: Math.min(width, height)/2;
        color: "gray";
    }
    DirectionButton {
        x: root.height - width;
        anchors.verticalCenter: root.verticalCenter;
        ascending: false;
        onClicked: root.sortDecending();
    }
    DirectionButton {
        x: root.width - (width + root.height - width);
        anchors.verticalCenter: root.verticalCenter;
        ascending: true;
        onClicked: root.sortAscending();
    }
    Text {
        id: label;
        anchors.centerIn: root;
        font.pixelSize: root.height/2;
        font.bold: true;
    }
}
