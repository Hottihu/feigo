import QtQuick 2.0
import Felgo 3.0
import"."as Levels
Levels.LevelBase {
    id:level
    width:42*gamescene.gridSize
    Ground{
        row:0
        column:-10
        size:2
    }
        TexturePackerAnimatedSprite{
            width: 50
            height: 50
            x:10
            y:32
            source: "../assets/img/TempleAssets.json"
            frameNames:["FinishBoy0000"]
            frameRate: 30
        }
                TexturePackerAnimatedSprite{
            width: 50
            height: 50
            x:100
            y:32
            source: "../assets/img/TempleAssets.json"
            frameNames:["FinishGirl0000"]
            frameRate: 30
        }
            Ground1{
            x:-12
            y:216

            }            Ground1{
                x:-12
                y:116

                }            Ground1{
                x:-12
                y:16

                }            Ground1{
                x:-12
                y:-84

                }            Ground1{
                x:484
                y:216

                }            Ground1{
                    x:484
                    y:116

                    }            Ground1{
                    x:484
                    y:16

                    }            Ground1{
                    x:484
                    y:-84

                    }
    Ground{
        row:6
        column:-10
        size:2
    }
        Ground{
        row:12
        column:-10
        size:2
    }
        Ground{
        row:18
        column:-10
        size:2
    }
        Ground{
        row:24
        column:-10
        size:2
    }


    Ground{
        row:0
        column:-6
        size:2
    }
    Ground{
        row:6
        column:-6
        size:2
    }
        Ground{
        row:12
        column:-6
        size:2
    }
        Ground{
        row:18
        column:-6
        size:2
    }
        Ground{
        row:0
        column:4
        size:2
    }
    Ground{
        row:6
        column:4
        size:2
    }
        Ground{
        row:12
        column:4
        size:2
    }
        Ground{
        row:18
        column:4
        size:2
    }
    Ground{
        row:6
        column:-2
        size:2
    }
    Ground{
        row:12
        column:-2
        size:2
    }
        Ground{
        row:18
        column:-2
        size:2
    }
        Ground{
        row:24
        column:-2
        size:2
    }
    EntityBase{
        x:150
        y:146
        width: 35
        height: 35
             TexturePackerAnimatedSprite{
                 anchors.fill: parent
         width:35
         height:35
         source:"../assets/img/MechAssets.json"
         frameNames:["movingbox0000"]
         
     } BoxCollider {
                 friction: 0.1
//                 restitution: 0
//                 density: 0.00002
                 anchors.fill: parent
                 bodyType: Body.Dynamic
//                 fixture.onBeginContact: {
//                   var otherEntity = other.getBody().target
//                   if(otherEntity.entityType === "player") player.contacts++
//                 }
//                 fixture.onEndContact: {
//                   var otherEntity = other.getBody().target
//                   if(otherEntity.entityType === "player") player.contacts--
//                 }
               }
    }
    
}
