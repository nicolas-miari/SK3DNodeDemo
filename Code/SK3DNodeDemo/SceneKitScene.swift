//
//  ObjectScene.swift
//  SK3DNodeDemo
//
//  Created by Nicolás Miari on 2020/05/03.
//  Copyright © 2020 Nicolás Miari. All rights reserved.
//

import SceneKit

class SceneKitScene: SCNScene {

    override init() {
        super.init()

        let box = SCNBox(width: 10, height: 10, length: 10, chamferRadius: 0)
        let material = SCNMaterial()
        material.diffuse.contents = UIColor.green
        box.materials = [material]

        let boxNode = SCNNode(geometry: box)
        boxNode.transform = SCNMatrix4MakeRotation(.pi/2, 1, 1, 1)

        self.rootNode.addChildNode(boxNode)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
