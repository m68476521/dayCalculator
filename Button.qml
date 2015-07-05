import QtQuick 1.1

Item {
    id: root

    property alias text: textTitle.text
    property color pressedColor: "#95a5a6"
    property color backGroundColor: "#ecf0f1"

    signal clicked

    width: 100
    height: 62

    Rectangle {
        anchors.fill: parent

        border {
            color: "black"
            width: 1
        }
        color: mouseArea.pressed ? root.pressedColor : root.backGroundColor

        Text {
            id: textTitle
            font.pixelSize: 30
            anchors {
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }
        }

        MouseArea {
            id: mouseArea

            anchors.fill: parent

            onClicked: root.clicked()
        }
    }
}
