//
//  MetalicScene.swift
//  MetalDraw_mac
//
//  Created by Kaz Yoshikawa on 11/20/17.
//

import Cocoa
import MetalKit


class MetalicScene: MetalicNode, Equatable {

	var bounds: CGRect
	var subnodes = [MetalicNode]()

	var width: CGFloat { return bounds.width }
	var height: CGFloat { return bounds.height }

	init(bounds: CGRect) {
		self.bounds = bounds
	}

	func render(context: MetalicContext) {
		
	}

	func setNeedsDisplay() {
		NotificationCenter.default.post(name: .DisplayMetalicScene, object: self)
	}

	static func == (lhs: MetalicScene, rhs: MetalicScene) -> Bool {
		return lhs === rhs
	}

	// MARK: -

	func locationInScene(_ event: MetalicEvent) -> CGPoint? {
        return event.sceneView.convert(event.locationInWindow, from: nil)
	}

    func mouseDown(with event: MetalicEvent) {
		//let pt = self.locationInScene(event)
    }

    func mouseMoved(with event: MetalicEvent) {
    }

    func mouseDragged(with event: MetalicEvent) {
    }

    func mouseUp(with event: MetalicEvent) {
    }

}
