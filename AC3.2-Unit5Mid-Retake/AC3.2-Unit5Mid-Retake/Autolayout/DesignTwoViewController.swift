//
//  DesignTwoViewController.swift
//  AC3.2-Unit5Mid-Retake
//
//  Created by Louis Tur on 1/5/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class DesignTwoViewController: UIViewController, CellTitled {
    
    
    //   ----------------------------------
    //    DO NOT MODIFY THIS SECTION
    //    👇👇👇👇👇👇👇👇👇👇👇👇👇👇
    
    let pokeballRed = UIColor(red: 220.0/255.0, green: 10.0/255.0, blue: 45.0/255.0, alpha: 1.0)
    let pokeballWhite = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    let pokeballBlack = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    
    let pokeballButtonInnerSize: CGSize = CGSize(width: 44.0, height: 44.0)
    let pokeballButtonMidSize: CGSize = CGSize(width: 80.0, height: 80.0)
    let pokeballButtonOutterSize: CGSize = CGSize(width: 120.0, height: 120.0)
    
    let pokeballLineHeight: CGFloat = 20.0
    let pokeballOpenHalfWidth: CGFloat = 200.0
    
    let pikachuDimensions: CGSize = CGSize(width: 185.0, height: 210.0)
    
    // MARK: - CellTitled Protocol
    var titleForCell: String = "Design 2: Pokeball!"
    
    internal lazy var pikachuImageView: UIImageView = {
        let image = UIImage(named: "pikachu")
        let imageView: UIImageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    internal lazy var topPokeballView: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.pokeballRed
        return view
    }()
    
    internal lazy var bottomPokeballView: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.pokeballWhite
        return view
    }()
    
    internal lazy var pokeballLineView: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.pokeballBlack
        return view
    }()
    
    internal lazy var pokeballButtonOutterView: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.pokeballBlack
        return view
    }()
    
    internal lazy var pokeballButtonMidView: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.pokeballWhite
        return view
    }()
    
    internal lazy var pokeballButtonInnerView: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.pokeballBlack
        return view
    }()
    
    //    ☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️
    //    DO NOT MODIFY THIS SECTION
    //   ----------------------------------
    
    
    // You may want to use these to references your constraints...
    var topPokeballConstraints: [NSLayoutConstraint] = []
    var bottomPokeballConstraints: [NSLayoutConstraint] = []
    var pokeballLineConstraints: [NSLayoutConstraint] = []
    var pokeballButtonConstraints: [NSLayoutConstraint] = []
    var pokeballButtonSizeConstraints: [NSLayoutConstraint] = []
    var pikachuImageConstraints: [NSLayoutConstraint] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        self.title = titleForCell
        
        setupViewHierarchy()
        configurePortraitConstraints()
    }
    
    func setupViewHierarchy() {
        self.view.addSubview(pikachuImageView)
        self.view.addSubview(topPokeballView)
        self.view.addSubview(bottomPokeballView)
        
        self.view.addSubview(pokeballLineView)
        
        self.view.addSubview(pokeballButtonOutterView)
        self.view.addSubview(pokeballButtonMidView)
        self.view.addSubview(pokeballButtonInnerView)
        
        self.edgesForExtendedLayout = []
        
        pokeballButtonOutterView.layer.cornerRadius = pokeballButtonOutterSize.width / 2.0
        pokeballButtonInnerView.layer.cornerRadius = pokeballButtonInnerSize.width / 2.0
        pokeballButtonMidView.layer.cornerRadius = pokeballButtonMidSize.width / 2.0
    }
    
    
    func configurePortraitConstraints() {
        let _ = [
            topPokeballView,
            bottomPokeballView,
            pokeballLineView,
            pokeballButtonOutterView,
            pokeballButtonInnerView,
            pokeballButtonMidView,
            pikachuImageView,
            ].map { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        // As a reminder, you should be able to flip from landscape to portrait and back!!
        
        topPokeballConstraints = [
            // top view
            topPokeballView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 8.0),
            topPokeballView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
            topPokeballView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0),
            topPokeballView.bottomAnchor.constraint(equalTo: self.view.centerYAnchor),
        ]
        
        bottomPokeballConstraints = [
            // bottom view
            bottomPokeballView.topAnchor.constraint(equalTo: self.view.centerYAnchor),
            bottomPokeballView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
            bottomPokeballView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0),
            bottomPokeballView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8.0),
        ]
        
        pokeballLineConstraints = [
            // center line
            pokeballLineView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            pokeballLineView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            pokeballLineView.heightAnchor.constraint(equalToConstant: pokeballLineHeight),
            pokeballLineView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ]
        
        pokeballButtonConstraints = [
            // outer
            pokeballButtonOutterView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            pokeballButtonOutterView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            // middle
            pokeballButtonMidView.centerXAnchor.constraint(equalTo: pokeballButtonOutterView.centerXAnchor),
            pokeballButtonMidView.centerYAnchor.constraint(equalTo: pokeballButtonOutterView.centerYAnchor),
            
            // inner
            pokeballButtonInnerView.centerXAnchor.constraint(equalTo: pokeballButtonOutterView.centerXAnchor),
            pokeballButtonInnerView.centerYAnchor.constraint(equalTo: pokeballButtonOutterView.centerYAnchor),
        ]
        
        pokeballButtonSizeConstraints = [
            // Middle Button
            // outer
            pokeballButtonOutterView.widthAnchor.constraint(equalToConstant: pokeballButtonOutterSize.width),
            pokeballButtonOutterView.heightAnchor.constraint(equalToConstant: pokeballButtonOutterSize.height),
            
            // middle
            pokeballButtonMidView.widthAnchor.constraint(equalToConstant: pokeballButtonMidSize.width),
            pokeballButtonMidView.heightAnchor.constraint(equalToConstant: pokeballButtonMidSize.height),
            
            // inner
            pokeballButtonInnerView.widthAnchor.constraint(equalToConstant: pokeballButtonInnerSize.width),
            pokeballButtonInnerView.heightAnchor.constraint(equalToConstant: pokeballButtonInnerSize.height),
        ]
        
        pikachuImageConstraints = [
            
            //
            // FIll in these constraints too!
            //
            pikachuImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            pikachuImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            
            
        ]
        
        let _ = [
            topPokeballConstraints,
            bottomPokeballConstraints,
            pokeballLineConstraints,
            pokeballButtonConstraints,
            pokeballButtonSizeConstraints,
            pikachuImageConstraints
            ].map{ $0.map { $0.isActive = true } }
    }
    
    func configureLandscapeConstraints() {
        
        topPokeballConstraints = [
            topPokeballView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
            topPokeballView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 8.0),
            topPokeballView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8.0)
            
        ]
        
        bottomPokeballConstraints = [
            bottomPokeballView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0),
            bottomPokeballView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 8.0),
            bottomPokeballView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8.0)
        ]
        
        pokeballLineConstraints = [
            pokeballLineView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            pokeballLineView.topAnchor.constraint(equalTo: self.view.topAnchor),
            pokeballLineView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            pokeballLineView.widthAnchor.constraint(equalToConstant: pokeballOpenHalfWidth)
        ]
        
        pikachuImageConstraints = [
            pikachuImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            pikachuImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            pikachuImageView.heightAnchor.constraint(equalToConstant: pikachuDimensions.height),
            pikachuImageView.widthAnchor.constraint(equalToConstant: pikachuDimensions.width)
        ]
        
        pokeballButtonConstraints = [
            pokeballButtonOutterView.leadingAnchor.constraint(equalTo: bottomPokeballView.leadingAnchor),
            pokeballButtonMidView.leadingAnchor.constraint(equalTo: bottomPokeballView.leadingAnchor),
            pokeballButtonInnerView.leadingAnchor.constraint(equalTo: bottomPokeballView.leadingAnchor),
            pokeballButtonInnerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            pokeballButtonMidView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            pokeballButtonOutterView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ]
        
        pokeballButtonSizeConstraints = [
            pokeballButtonInnerView.heightAnchor.constraint(equalToConstant: pokeballButtonInnerSize.height),
            pokeballButtonInnerView.widthAnchor.constraint(equalToConstant: pokeballButtonInnerSize.width),
            pokeballButtonMidView.heightAnchor.constraint(equalToConstant: pokeballButtonMidSize.height),
            pokeballButtonMidView.widthAnchor.constraint(equalToConstant: pokeballButtonMidSize.width),
            pokeballButtonOutterView.heightAnchor.constraint(equalToConstant: pokeballButtonOutterSize.height),
            pokeballButtonOutterView.widthAnchor.constraint(equalToConstant: pokeballButtonOutterSize.width)
        ]
        
      
        
        let _ = [
            topPokeballConstraints,
            bottomPokeballConstraints,
            pokeballLineConstraints,
            pokeballButtonConstraints,
            pokeballButtonSizeConstraints,
            pikachuImageConstraints
            ].map{ $0.map { $0.isActive = true } }

        
    }
    
    
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        
        coordinator.animate(alongsideTransition: { (UIViewControllerTransitionCoordinatorContext) -> Void in
            
            let orient = UIApplication.shared.statusBarOrientation
            
            switch orient {
            case .portrait:
                print("Portrait")
                self.configurePortraitConstraints()
            case .landscapeRight, .landscapeLeft:
                self.configureLandscapeConstraints()
                print("Landscape")
            default:
                print("Not Portrait/Landscape")
            }
            
            }, completion: { (UIViewControllerTransitionCoordinatorContext) -> Void in
                print("rotation completed")
        })
        
        super.willTransition(to: newCollection, with: coordinator)
    }

    
}
