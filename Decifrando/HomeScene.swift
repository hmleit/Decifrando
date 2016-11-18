//
//  HomeScene.swift
//  Decifrando
//
//  Created by Helena Leitão on 16/11/16.
//
//

import UIKit
import SpriteKit

class HomeScene: SKScene {

    var background: SKSpriteNode!
    var start: SKLabelNode!
    var help: SKLabelNode!
    var settings: SKLabelNode!
    
    override func didMove(to view: SKView) {
        
//        background = SKSpriteNode(color: UIColor.white, size: CGSize(width: self.size.width, height: self.size.height))
        
        background = SKSpriteNode(imageNamed:"background")
        background.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        background.zPosition = 0

        self.background.name = "background"
        //    var background = SKSpriteNode(imageNamed: "bgimage")

        
        self.background.anchorPoint = CGPoint.zero
        self.addChild(background)
        
        
        self.createHomeLabels()
        
    }
    
    func createHomeLabels() {
    
        start = SKLabelNode(fontNamed: "Riffic")
        self.start.fontSize = 55
        self.start.fontColor = SKColor.white
        self.start.text = "início"
        self.start.name = "Start"
        self.start.position = CGPoint(x: size.width/2, y: size.height/2 - 220)
        start.zPosition = 1
        background.addChild(start)
         
        help = SKLabelNode(fontNamed: "Riffic-bold")
        self.help.fontSize = 55
        self.help.fontColor = SKColor.white
        self.help.text = "ajuda"
        self.help.name = "Help"
        self.help.position = CGPoint(x: size.width/2, y: size.height/2 - 320)
        help.zPosition = 1
        background.addChild(help)
        
        settings = SKLabelNode(fontNamed: "Arial Rounded MT Bold")
        self.settings.fontSize = 30
        self.settings.fontColor = SKColor.gray
        self.settings.text = "Configurações"
        self.settings.name = "Settings"
        self.settings.position = CGPoint(x: size.width - 100, y: size.height - 70)
        background.addChild(settings)
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let touch = touches.first else {
            return
        }
        let touchLocation = touch.location(in: self)
        let node = self.atPoint(touchLocation)
        
        if node.name == "Start" {
            
            let reveal = SKTransition.fade(withDuration: 1.0)
            let scene = MenuScene(size: size)
            self.view?.presentScene(scene, transition:reveal)
           
        } else if node.name == "Help" {
            
            
            
        } else if node.name == "Settings" {
            
            
            
        }
    }
}