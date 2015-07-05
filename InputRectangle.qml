import QtQuick 1.1

Rectangle {

    property alias maximunLength: textInput.maximumLength
    property alias validator: textInput.validator
    property alias readOnly: textInput.readOnly
    property alias text: textInput.text

    width: 100
    height: 62

    border {
        width: 1
        color: "green"
    }

    TextInput {
        id: textInput

        anchors.verticalCenter: parent.verticalCenter
//        anchors.horizontalCenter: parent.horizontalCenter
        anchors.left: parent.left
        anchors.right: parent.right
        height: 25
        maximumLength: 2
//        pixelSize: 20
        font.pixelSize: 30
        validator: IntValidator { bottom: 1; top: 31 }


    }
}

