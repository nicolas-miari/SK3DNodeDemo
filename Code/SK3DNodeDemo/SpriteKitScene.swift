//
//  MyScene.swift
//  SK3DNodeDemo
//
//  Created by Nicolás Miari on 2020/05/03.
//  Copyright © 2020 Nicolás Miari. All rights reserved.
//

import SpriteKit
import SceneKit

class SpriteKitScene: SKScene {

    override init(size: CGSize) {
        super.init(size: size)

        // Scene Background
        self.backgroundColor = .red

        // 3D Node
        let objectNode = SK3DNode(viewportSize: size)
        objectNode.scnScene = SceneKitScene()
        addChild(objectNode)
        objectNode.position = CGPoint(x: size.width/2, y: size.height/2)

        let camera = SCNCamera()
        let cameraNode = SCNNode()
        cameraNode.camera = camera
        objectNode.pointOfView = cameraNode
        objectNode.pointOfView?.position = SCNVector3(x: 0, y: 0, z: 60)
        objectNode.zPosition = -100

        // 2D Sprite
        let sprite = SKSpriteNode(color: .yellow, size: CGSize(width: 250, height: 60))
        sprite.position = objectNode.position
        sprite.zPosition = +100
        addChild(sprite)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
