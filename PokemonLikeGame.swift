//
//  ContentView.swift
//  PokemonLikeGame
//
//  Created by Ryan Shaw on 9/28/22.
//

import SwiftUI
import SpriteKit

class GameScene:SKScene {
    var spriteColumn:Int = 0
    override func sceneDidLoad() {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        let spritesheet = SpriteSheet(texture: SKTexture(imageNamed: "playerDown"), rows: 1, columns: 4, spacing: 0, margin: 0)
        var playerDown = SKSpriteNode(texture: spritesheet.textureForColumn(column: 0, row: 0))
        playerDown.position = CGPoint(x:200, y:300)
        addChild(playerDown)
    }
    
}

struct PokemonLikeGameView: View {
    var scene:SKScene {
        let scene = GameScene();
        scene.scaleMode = .resizeFill;
        return scene;
    }
    var body: some View {
        VStack{
            SpriteView(scene: scene)
            ControllerView()
        }
    }
}

struct PokemonLikeGameView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonLikeGameView()
    }
}
