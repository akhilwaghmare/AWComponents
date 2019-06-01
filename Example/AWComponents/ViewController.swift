//
//  ViewController.swift
//  AWComponents
//
//  Created by Akhil Waghmare on 06/01/2019.
//  Copyright (c) 2019 Akhil Waghmare. All rights reserved.
//

import UIKit
import AWComponents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        
        let imageView = CachedImageView()
        imageView.contentMode = .scaleAspectFit
        
        view.addSubview(blueView)
        view.addSubview(greenView)
        view.addSubview(imageView)
        
        blueView.fillSuperview()
        greenView.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 50)
        imageView.anchor(nil, left: nil, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 100)
        imageView.anchorCenterSuperview()
        imageView.loadImage(urlString: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Apple_Computer_Logo_rainbow.svg/2000px-Apple_Computer_Logo_rainbow.svg.png")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

