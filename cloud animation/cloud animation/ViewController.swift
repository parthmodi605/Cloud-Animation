//
//  ViewController.swift
//  cloud animation
//
//  Created by Mac on 17/04/18.
//  Copyright © 2018 TOPS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var cloudsLeading: NSLayoutConstraint!
    @IBOutlet weak var cloudsView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cloundsAnimation()
        let imageData = try! Data(contentsOf: Bundle.main.url(forResource: "mother_3_save_frog_balloon_low_poly_by_kamiwasa-d855mbm", withExtension: "gif")!)
        self.img1.image = UIImage.gif(data: imageData)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func cloundsAnimation() {
        let distance = self.view.bounds.width - self.cloudsView.bounds.width
        self.cloudsLeading.constant = distance
        UIView.animate(withDuration: 30, delay: 0, options: [.repeat,.curveLinear], animations: {
            self.view.layoutIfNeeded()
        })
    }
    

}

