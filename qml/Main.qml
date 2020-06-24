import Felgo 3.0
import QtQuick 2.0

GameWindow {

    id: gameWindow

    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"


    // the size of the Window can be changed at runtime by pressing Ctrl (or Cmd on Mac) + the number keys 1-8
    // the content of the logical scene size (480x320 for landscape mode by default) gets scaled to the window size based on the scaleMode
    // you can set this size to any resolution you would like your project to start with, most of the times the one of your main target device
    // this resolution is for iPhone 4 & iPhone 4S
    screenWidth: 960
    screenHeight: 640
    activeScene: gamescene
    StartScene {
        id: startScene
        opacity: 0
    }
    GameScene{
        id:gamescene
        opacity: 0
    }
    state: "start"
    states:[
        State {
            name: "start"
            PropertyChanges {
                target: startScene.opacity=1
            }
        },State {
            name: "game"
            PropertyChanges {
                target: gamescene.opacity=1
            }
        }
    ]
//    Keys.onPressed: {
//            if (event.key === Qt.Key_Up) {
//                console.log("move up");
//                f.upmoveFire()
//                event.accepted = true;
//            }

//            if (event.key === Qt.Key_Down){
//                console.log("move down");
//                f.downmoveFire()
//                event.accepted = true;
//            }

//            if (event.key === Qt.Key_Left){
//                console.log("move");
//                //f.leftmoveFire()

//                event.accepted = true;
//            }

//            if (event.key === Qt.Key_Right){
//                console.log("move");
//                f.rightmoveFire()

//                event.accepted = true;
//            }

//            if (event.key === Qt.Key_W) {
//                console.log("move up");
//                w.upmoveWater()
//                event.accepted = true;
//            }

//            if (event.key === Qt.Key_S){
//                console.log("move down");
//                w.downmoveWater()
//                event.accepted = true;
//            }

//            if (event.key === Qt.Key_A){
//                console.log("move");
//                w.leftmoveWater()
//                event.accepted = true;
//            }

//            if (event.key === Qt.Key_D){
//                console.log("move");
//                w.rightmoveWater()
//                event.accepted = true;
//            }
//        }

//        Keys.onReleased: {
//            if (event.key === Qt.Key_Up) {
//                console.log("not move up");
//  //              f.downmoveFire()
//                event.accepted = true;
//            }else if(event.key === Qt.Key_Left || event.key === Qt.Key_Right){
//                console.log("not move");
//                f.idleFire()
//                event.accepted = true;
//            }else if(event.key === Qt.Key_A || event.key === Qt.Key_D){
//                console.log("not move");
//                w.idleWater()
//                event.accepted = true;
//            }else if(event.Key===Qt.Key_W){
// //               console.log("not move up");
//  //              w.downmoveWater()
//   //             event.accepted = true;
//            }
//        }
}
