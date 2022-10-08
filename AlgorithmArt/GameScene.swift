//
//  GameScene.swift
//  AlgorithmArt
//
//  Created by tim drevitch on 1/26/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView){
        //nothing yet
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.previousLocation(in: self)
            let names = ["circle", "triangle", "square", "circle2", "triangle2", "square2", "circle3", "triangle3", "square3"]
            let sprite = SKSpriteNode(imageNamed: names.randomElement()!)
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            self.addChild(sprite)
        }
    }
    
}
