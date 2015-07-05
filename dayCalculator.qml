import QtQuick 1.1

Rectangle {

    id: rectangle
    width: 660
    height: 360
    color: "#27ae60"

    Column {
        id: columm
        spacing: 10
        anchors.fill: parent
        anchors.top: parent.top
        anchors.topMargin: 20
        Row {
            id: rowInput
            anchors.horizontalCenter: parent.horizontalCenter
            InputRectangle {
                id: inputmonth

                validator: IntValidator { bottom: 1; top: 12 }

            }

            InputRectangle {
                id: inputday

                validator: IntValidator { bottom: 1; top: 31 }

            }
            InputRectangle {
                id: inputyear

                maximunLength: 4
                validator: IntValidator { bottom: 1900; top: 2050 }
            }

            Item {
                width:20
                height: 1
            }

            InputRectangle {
                id:inputMonth2

                 validator: IntValidator { bottom: 1; top: 12 }

            }

            InputRectangle {
                id:inputDay2

                 validator: IntValidator { bottom: 1; top: 31 }

            }
            InputRectangle {
                id: inputYear2
                maximunLength: 4
                 validator: IntValidator { bottom: 1900; top: 2050 }
            }
        }

        Button {
            id: button

            anchors.horizontalCenter: parent.horizontalCenter
            text: "Click"


            onClicked: {
                var monthFinal
                var dayFinal
                var yearFinal

                monthFinal =inputMonth2.text - inputmonth.text
                dayFinal = inputDay2.text - inputday.text
                yearFinal = inputYear2.text - inputyear.text
                console.log("Month Final: " + monthFinal)
                console.log("Day Final: " + dayFinal)
                console.log("year Final " + yearFinal)
                monthOutPut.text = monthFinal
                dayOutPut.text = dayFinal
                yearOutPut.text = yearFinal

                if (inputYear2.text >= inputyear.text) {
                    yearFinal = inputYear2.text - inputyear.text
                    var totalYears = yearFinal * 365
                    console.log("Total day / years: "+ totalYears)

                    if (inputMonth2.text >= inputmonth.text) {
                        monthFinal = inputMonth2.text - inputmonth.text
                        var totalMonths = monthFinal * 30
                        console.log("Total day / Months: " + totalMonths)

                        if (inputDay2.text >= inputday.text) {
                            dayFinal = inputDay2.text - inputday.text
                            var totalDays = dayFinal + totalMonths + totalYears
                            console.log("Total day / days: " + totalDays)
                            totalOutPutDays.text = totalDays

                        }
                    }

                }


            }

        }

        Row {
            id: rowOutPut

            anchors.horizontalCenter: parent.horizontalCenter

            InputRectangle {
                id: monthOutPut
                //text: inputMonth2.text - inputmonth.text
//                text:
                readOnly: true
            }

            InputRectangle {
                id: dayOutPut
               // text: inputDay2.text - inputday.text
                readOnly: true
            }
            InputRectangle {
                id: yearOutPut
                //text: inputYear2.text - inputyear.text
                readOnly: true
            }

        }


            InputRectangle {
                id: totalOutPutDays

                anchors.horizontalCenter: parent.horizontalCenter
                readOnly: true
                maximunLength: 6
            }


    }
}

