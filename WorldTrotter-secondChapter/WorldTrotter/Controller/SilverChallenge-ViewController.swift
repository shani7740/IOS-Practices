//
//  SilverChallenge-ViewController.swift
//  WorldTrotter
//
//  Created by Shani Vishwakarma on 10/08/23.
//

import UIKit

class SilverChallenge_ViewController: UIViewController {

    let gradientLayer = CAGradientLayer()

    @IBOutlet private weak var myViewIs: UIView!
    @IBOutlet private weak var myLabel: UILabel!
    @IBOutlet private weak var myLabel2: UILabel!
    @IBOutlet private weak var myLabel3: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let aView = UIView(frame: CGRect(x: 100, y: 200, width: 200, height: 400))
        aView.backgroundColor = UIColor.blue
        myViewIs.insertSubview(aView, belowSubview: myLabel)
        addGradientBackground()
        
    }

    func addGradientBackground(){
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.blue.cgColor, UIColor.green.cgColor, UIColor.yellow.cgColor, UIColor.red.cgColor]
        gradientLayer.locations = [0.0, 0.3, 0.5, 0.7, 0.8]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        gradientLayer.frame = self.view.bounds
    }
//
//    private func initialSetup() {
//
//        // basic setup
//        view.backgroundColor = .white
//        navigationItem.title = "Gradient View"
//
//        // Create a new gradient layer
//        let gradientLayer = CAGradientLayer()
//        // Set the colors and locations for the gradient layer
//        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
////        gradientLayer.locations = [0.0, 1.0]
//
//        // Set the start and end points for the gradient layer
////        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
////        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
//
//        // Set the frame to the layer
//        gradientLayer.frame = view.frame
//
//        // Add the gradient layer as a sublayer to the background view
//        view.layer.insertSublayer(gradientLayer, at: 0)
//    }


}
