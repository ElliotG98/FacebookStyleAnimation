//
//  ParticleEmitter.swift
//  Particles
//
//  Created by Elliot Glaze on 28/03/2019.
//  Copyright © 2019 Elliot Glaze. All rights reserved.
//

import UIKit

class ParticleEmitter: UIView {
    
    let image = UIImage(named: "like")!.cgImage
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createParticles()
    }

    func createParticles() {
        let particleEmitter = CAEmitterLayer()
        
        particleEmitter.emitterPosition = CGPoint(x: self.frame.width/2, y: 0)
        particleEmitter.emitterShape = .line
        particleEmitter.emitterSize = CGSize(width: self.frame.width, height: 1)
        
        let red = makeEmitterCell()
        
        particleEmitter.emitterCells = [red]
        
        self.layer.addSublayer(particleEmitter)
        
        perform(#selector(endParticles), with: particleEmitter, afterDelay: 3)
    }
    @objc func endParticles(emitterLayer:CAEmitterLayer) {
        emitterLayer.lifetime = 0
    }
    
    func makeEmitterCell() -> CAEmitterCell {
        let cell = CAEmitterCell()
        cell.birthRate = 3
        cell.lifetime = 10
        cell.velocity = 80
        cell.scale = 0.04
        cell.velocityRange = 200
        cell.emissionLongitude = -CGFloat.pi * 0.5
        cell.emissionRange = -CGFloat.pi * 0.25
        cell.spin = 2
        cell.spinRange = 3
        cell.scaleRange = 0.5
        cell.scaleSpeed = 0.05
        cell.contents = image
        cell.contentsScale = -10.1
        
        return cell
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
