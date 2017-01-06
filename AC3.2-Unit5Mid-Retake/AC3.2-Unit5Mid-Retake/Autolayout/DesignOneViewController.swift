//
//  DesignOneViewController.swift
//  AC3.2-Unit5Mid-Retake
//
//  Created by Louis Tur on 1/5/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class DesignOneViewController: UIViewController, CellTitled {
    
    //   ----------------------------------
    //    DO NOT MODIFY THIS SECTION
    //    👇👇👇👇👇👇👇👇👇👇👇👇👇👇
    
    // MARK: - Provided Constants
    let mainLabelFont = UIFont.systemFont(ofSize: 24.0, weight: UIFontWeightSemibold)
    let subLabelFont = UIFont.systemFont(ofSize: 14.0, weight: UIFontWeightLight)
    
    let standardMargin: CGFloat = 8.0
    
    let pikachuDimensions: CGSize = CGSize(width: 185.0, height: 210.0)
    let pichuDimensions: CGSize = CGSize(width: 40.0, height: 44.0)
    let raichuDimension: CGSize = CGSize(width: 60.0, height: 60.0)
    
    let bannerScrollingImageSize: CGSize = CGSize(width: 656.0, height: 310.0)
    
    // MARK: - CellTitled Protocol
    var titleForCell: String = "Design 1: Pokédex(-ish)"
    
    //    ☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️
    //    DO NOT MODIFY THIS SECTION
    //   ----------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = titleForCell
        self.view.backgroundColor = .white
        
        setupViewHierarchy()
        configureConstraints()
    }
    
    func configureConstraints() {
        // set constraints
        let _ = [
        pichuLabel,
        pichuImageView,
        pikachuImageView,
        raichuLabel,
        scrollingImageView,
        largePikachuLabel,
        raichuImageView,
        scrollView
            ].map { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        let _ = [
            //pichuImage
            pichuImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: standardMargin * 4),
            pichuImageView.heightAnchor.constraint(equalToConstant: pichuDimensions.height),
            pichuImageView.widthAnchor.constraint(equalToConstant: pichuDimensions.width),
            pichuImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 210),
            //pichuLabel
            pichuLabel.topAnchor.constraint(equalTo: pichuImageView.bottomAnchor, constant: standardMargin/2),
            pichuLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: standardMargin * 4),
            //main pikachu label
            largePikachuLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            largePikachuLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: standardMargin),
            //large pikachu
            pikachuImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            pikachuImageView.topAnchor.constraint(equalTo: largePikachuLabel.bottomAnchor, constant: standardMargin),
            pikachuImageView.heightAnchor.constraint(equalToConstant: pikachuDimensions.height),
            pikachuImageView.widthAnchor.constraint(equalToConstant: pikachuDimensions.width),
            //raichu image
            raichuImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -(standardMargin * 4)),
            raichuImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 190),
            raichuImageView.heightAnchor.constraint(equalToConstant: raichuDimension.height),
            raichuImageView.widthAnchor.constraint(equalToConstant: raichuDimension.width),
            //raichu label
            raichuLabel.topAnchor.constraint(equalTo: raichuImageView.bottomAnchor, constant: standardMargin/2),
            raichuLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -(standardMargin * 4)),
            //scrollView
            scrollView.topAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 16.0),
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: standardMargin),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -standardMargin),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -standardMargin),
            scrollView.heightAnchor.constraint(equalToConstant: bannerScrollingImageSize.height),
            scrollView.widthAnchor.constraint(equalToConstant: bannerScrollingImageSize.width),
            //scrollingImageView
            scrollingImageView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            scrollingImageView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor),
            scrollingImageView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor),
            scrollingImageView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor)
            ].map { $0.isActive = true }
        
        self.edgesForExtendedLayout = []
    }
    
    func setupViewHierarchy() {
        // Add views
        self.view.addSubview(pichuImageView)
        self.view.addSubview(pikachuImageView)
        self.view.addSubview(raichuImageView)
        self.view.addSubview(pichuLabel)
        self.view.addSubview(raichuLabel)
        self.view.addSubview(scrollingImageView)
        self.view.addSubview(largePikachuLabel)
        self.view.addSubview(scrollView)
        
        //I'm setting the font here because I kept getting an error in the instatiations below
        pichuLabel.font = subLabelFont
        raichuLabel.font = subLabelFont
        largePikachuLabel.font = mainLabelFont
        
    }
    
    
    // MARK: - Define Your Views Here
    
    // ex:
    // let pikachuImageView: UIView = ... your code here ...
    lazy var pikachuImageView: UIImageView = {
        let image = UIImage(named: "pikachu")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleToFill
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var pichuImageView: UIImageView = {
        let image = UIImage(named: "pichu")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleToFill
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var raichuImageView: UIImageView = {
        let image = UIImage(named: "raichu")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleToFill
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var scrollingImageView: UIImageView = {
        let image = UIImage(named: "pikachu_evolution")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleToFill
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 15.0
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var pichuLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Pichu"
        return label
    }()
    
    lazy var raichuLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Raichu"
        return label
    }()
    
    lazy var largePikachuLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Pikachu (no.25)"
        return label
    }()
    
    lazy var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.alwaysBounceHorizontal = false
        scroll.alwaysBounceVertical = false
        scroll.isScrollEnabled = true
        return scroll
    }()
}
