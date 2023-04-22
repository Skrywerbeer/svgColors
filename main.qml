import QtQuick
import QtQuick.Window
import QtQuick.Layouts

Window {
    id: root;

    width: 640
    height: 480
    visible: true
    title: qsTr("Color names")

    Rectangle {
        id: background
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {position: 1.0; color: "dimgrey"}
            GradientStop {position: 0.8; color: "slategrey"}
            GradientStop {position: 0.2; color: "gainsboro"}
        }
    }
    ColumnLayout {
        anchors.fill: parent;

        RowLayout {
            id: controls;
            Layout.fillWidth: true;
            Layout.minimumHeight: 40;
            Layout.preferredHeight: 40;
            Layout.maximumHeight: 40;
            Layout.alignment: Qt.AlignCenter;

            SortSelector {
                Layout.minimumWidth: height*3
                Layout.preferredWidth: root.width/5;
                Layout.maximumWidth: 200;
                Layout.preferredHeight: 30;
                Layout.alignment: Qt.AlignHCenter;
                color: "tan";
                label: "Aa";

                onSortAscending: colorModel.insertionSort(colorModel.nameLessThan, true);
                onSortDecending: colorModel.insertionSort(colorModel.nameLessThan, false);
            }
            SortSelector {
                Layout.minimumWidth: height*3
                Layout.preferredWidth: root.width/5;
                Layout.maximumWidth: 200;
                Layout.preferredHeight: 30;
                Layout.alignment: Qt.AlignHCenter;
                color: "red";
                label: "R";

                onSortAscending: colorModel.insertionSort(colorModel.redLessThan, true);
                onSortDecending: colorModel.insertionSort(colorModel.redLessThan, false);
            }
            SortSelector {
                Layout.minimumWidth: height*3
                Layout.preferredWidth: root.width/5;
                Layout.maximumWidth: 200;
                Layout.preferredHeight: 30;
                Layout.alignment: Qt.AlignHCenter;

                color: "green";
                label: "G";

                onSortAscending: colorModel.insertionSort(colorModel.greenLessThan, true);
                onSortDecending: colorModel.insertionSort(colorModel.greenLessThan, false);
            }
            SortSelector {
                Layout.minimumWidth: height*3
                Layout.preferredWidth: root.width/5;
                Layout.maximumWidth: 200;
                Layout.preferredHeight: 30;
                Layout.alignment: Qt.AlignHCenter;

                color: "blue";
                label: "B";

                onSortAscending: colorModel.insertionSort(colorModel.blueLessThan, true);
                onSortDecending: colorModel.insertionSort(colorModel.blueLessThan, false);
            }
        }

        GridView {
            Layout.fillWidth: true;
            Layout.fillHeight: true;
            Layout.alignment: Qt.AlignCenter;

            clip: true;
//            leftMargin: 10
//            rightMargin: 10
//            topMargin: 10
//            bottomMargin: 10
            cellWidth: 80 + ((width/80 - Math.trunc(width/80))*80)/Math.trunc(width/80);
            cellHeight: cellWidth*1.2;
            model: ColorModel {id: colorModel;}
            delegate: ColorDelegate {}

            move: Transition {
                NumberAnimation {
                    properties: "x, y";
                    duration: 800;
                    easing.type: Easing.OutQuart
                }
            }
        }
    }
}
