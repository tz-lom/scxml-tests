import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.1
import QtScxml 5.8

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property StateMachine stateMachine: scxmlLoader.stateMachine

    StateMachineLoader {
        id: scxmlLoader
        source: "statechart.scxml"
    }

    onStateMachineChanged: {
        console.log(stateMachine.invokedServices)
    }

    GridLayout {
        anchors.fill: parent
        columns: 2

        CheckBox {
            text: 'A'
            checked: stateMachine.A
        }
        CheckBox {
            text: 'B'
            checked: stateMachine.B
        }
        CheckBox {
            Layout.columnSpan: 2
            text: 'C'
           // checked: stateMachine.invokedServices['I'].C
        }
        CheckBox {
            Layout.columnSpan: 2
            text: 'D'
           // checked: stateMachine.invokedServices['I'].D
        }

        Button {
            text: 'ev1'
            Layout.columnSpan: 2
            onClicked: stateMachine.submitEvent('ev1')
        }
        Button {
            text: 'ev2'
            Layout.columnSpan: 2
            onClicked: stateMachine.submitEvent('ev2')
        }
        Button {
            text: 'ev3'
            Layout.columnSpan: 2
            onClicked: stateMachine.submitEvent('ev3')
        }
    }
}
