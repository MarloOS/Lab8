//
//  ViewController.swift
//  Lab8
//
//  Created by MO X02a on 2020-03-09.
//  Copyright © 2020 MO X02a. All rights reserved.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    @IBOutlet weak var orbitButton: UIButton!
    
    // Load the "Box" scene from the "Experience" Reality File
    let boxAnchor = try! Experience.loadBox()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
    @IBAction func orbitPressed(_ sender: Any) {
        boxAnchor.notifications.startNotification.post()
    }
}
