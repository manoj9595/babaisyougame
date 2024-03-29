//
//  GameScene.swift
//  BabaIsYou-F19
//
//  Created by Parrot on 2019-10-17.
//  Copyright © 2019 Parrot. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    let PLAYER_SPEED:CGFloat = 20
    var player:SKSpriteNode!
    
//    var flag64:SKSpriteNode!


    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        
        
             // initialze the player
             self.player = self.childNode(withName: "player") as! SKSpriteNode
//             self.flag64 = self.childNode(withName: "flag64") as! SKSpriteNode
//             self.wallblock = self.childNode(withName: "wallblock") as! SKSpriteNode
    
    }
   
    func didBegin(_ contact: SKPhysicsContact) {
        
               
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
//        if (self.player.frame.intersects(self.flag64.frame) == true) {
//        print("\(currentTime): CONGRATULATIONS!")
//    }
    }
    
   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    let mouseTouch = touches.first
           if (mouseTouch == nil) {
               return
           }
    let location = mouseTouch!.location(in: self)

        // WHAT NODE DID THE PLAYER TOUCH
        // ----------------------------------------------
        let nodeTouched = atPoint(location).name
        //print("Player touched: \(nodeTouched)")
        
        
        // GAME LOGIC: Move player based on touch
        if (nodeTouched == "upButton") {
            // move up
            self.player.position.y = self.player.position.y + PLAYER_SPEED
        }
        else if (nodeTouched == "downButton") {
            // move down
             self.player.position.y = self.player.position.y - PLAYER_SPEED
        }
        else if (nodeTouched == "leftButton") {
            // move left
             self.player.position.x = self.player.position.x - PLAYER_SPEED
        }
        else if (nodeTouched == "rightButton") {
            // move right
             self.player.position.x = self.player.position.x + PLAYER_SPEED
        }
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}

