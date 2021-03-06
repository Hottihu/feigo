import QtQuick 2.0
import Felgo 3.0
Scene {
    id:gamescene
    GameSceme_Bac{
        
        id:gamescene_bac
        anchors.fill:parent
    }
    Level{
        id:level
    }
    PhysicsWorld{
        gravity.y:20
     //   debugDrawVisible: true

    }
    EntityManager{
        id:entitymanager
    }

    Player{
        id:f
        x:10
        y:250
        onContact:idleFire()
    }
    Rectangle{
        id:leftbutton
        width:50
        height:50
        color:"green"
        opacity:0.2
        anchors.bottom:parent.bottom
        anchors.left:parent.left
        MouseArea{
            pressAndHold: 0.01

            anchors.fill:parent
            onPressed:f.leftmoveFire()
            onReleased:f.idleFire()
        }
    }
    Rectangle{
        width: 50
        height: 50
        color: "green"
        opacity: 0.2
        anchors.bottom: parent.bottom
        anchors.left:leftbutton.right
        MouseArea{
            anchors.fill: parent
            onPressed:f.rightmoveFire()
            onReleased: f.idleFire()
        }
    }
    Rectangle{
        width: 50
        height: 50
        color: "green"
        opacity: 0.2
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        MouseArea
        {

            anchors.fill: parent
            onPressed: {
                if(f.f_collider.linearVelocity.y===0){
                if(f.f_collider.linearVelocity.x === 0){
                    f.upmoveFire()
                    event.accepted = true;
                }else if(f.f_collider.linearVelocity.x < 0){
                    f.leftjumpingmoveFire()
                    event.accepted = true;
                }else if(f.f_collider.linearVelocity.x > 0){
                    f.rightjumpingmoveFire()
                    event.accepted = true;
                }
            }}


        }
    }
    Keys.onPressed: {
        if (event.key === Qt.Key_Up) {
            console.log("move up");
            if(f.f_collider.linearVelocity.y===0){
            if(f.f_collider.linearVelocity.x === 0){
                f.upmoveFire()
                event.accepted = true;
            }else if(f.f_collider.linearVelocity.x < 0){
                f.leftjumpingmoveFire()
                event.accepted = true;
            }else if(f.f_collider.linearVelocity.x > 0){
                f.rightjumpingmoveFire()
                event.accepted = true;
            }

        }}
        if (event.key === Qt.Key_Down){
            console.log("move down");
            f.downmoveFire()
            event.accepted = true;
        }

        if (event.key === Qt.Key_Left){
            console.log("move");
            f.leftmoveFire()

            event.accepted = true;
        }

        if (event.key === Qt.Key_Right){
            console.log("move");
            f.rightmoveFire()

            event.accepted = true;
        }

        if (event.key === Qt.Key_W) {
            console.log("move up");
            w.upmoveWater()
            event.accepted = true;
        }

        if (event.key === Qt.Key_S){
            console.log("move down");
            w.downmoveWater()
            event.accepted = true;
        }

        if (event.key === Qt.Key_A){
            console.log("move");
            w.leftmoveWater()
            event.accepted = true;
        }

        if (event.key === Qt.Key_D){
            console.log("move");
            w.rightmoveWater()
            event.accepted = true;
        }
    }

    Keys.onReleased: {
        if (event.key === Qt.Key_Up) {
            console.log("not move up");
//              f.downmoveFire()
            event.accepted = true;
        }else if(event.key === Qt.Key_Left || event.key === Qt.Key_Right){
            console.log("not move");
            f.idleFire()
            event.accepted = true;
        }else if(event.key === Qt.Key_A || event.key === Qt.Key_D){
            console.log("not move");
            w.idleWater()
            event.accepted = true;
        }else if(event.Key===Qt.Key_W){
               console.log("not move up");
              w.downmoveWater()
             event.accepted = true;
        }
    }
}
