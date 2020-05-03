//
//  GameViewController.swift
//  SK3DNodeDemo
//
//  Created by Nicolás Miari on 2020/05/03.
//  Copyright © 2020 Nicolás Miari. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        /*
         Presenting scene from `viewWillAppear(_:)` because we need to pass the
         view's bounds (still unknown at the moment of `viewDidLoad()`).
         */
        (self.view as? SKView)?.presentScene(SpriteKitScene(size: view.bounds.size))
    }
}
