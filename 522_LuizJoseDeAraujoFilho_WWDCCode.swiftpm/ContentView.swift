import SwiftUI
import SpriteKit

struct ContentView: View{
	var scene: SKScene {
			let scene = GameScene()
			scene.size = CGSize(width: 720, height: 1280)
			scene.scaleMode = .fill
			return scene
		}

		var body: some View {
			SpriteView(scene: scene)
				.ignoresSafeArea()
		}
}
