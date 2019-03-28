//
//  ViewController.swift
//  Particles
//
//  Created by Elliot Glaze on 28/03/2019.
//  Copyright © 2019 Elliot Glaze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let particleView:ParticleEmitter = {
       let view = ParticleEmitter()
        view.createParticles()
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupParticleEmitter()
        
        
        
    }
    
    func setupParticleEmitter() {
        particleView.frame = CGRect(x: view.frame.width, y: view.frame.height / 2, width: view.frame.width, height: view.frame.height)
        view.addSubview(particleView)
    }
    
    


}

