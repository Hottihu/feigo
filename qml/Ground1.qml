import QtQuick 2.0
import Felgo 3.0

TieldEntityBase {
    id:ground1
    entityType:"ground"
    size:2
    width: 12
    height: 100
    TexturePackerAnimatedSprite{
       id:tile
       width: 12
        height: 100
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        source: "../assets/img/TempleAssets.json"
        frameNames: ["ForeGround0001"]
    }

    BoxCollider {
      anchors.fill: parent
      bodyType: Body.Static
      restitution: 0
//      fixture.onBeginContact: {
//        var otherEntity = other.getBody().target
//        if(otherEntity.entityType === "player") player.contacts++
//      }
//      fixture.onEndContact: {
//        var otherEntity = other.getBody().target
//        if(otherEntity.entityType === "player") player.contacts--
//      }
    }
}
