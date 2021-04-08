//
//  PopVC.swift
//  PixelCity
//
//  Created by Ruhullah Rahimov on 06.04.21.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImgView: UIImageView!
    
    var passedImg: UIImage!
    
    func initData(forImage image: UIImage) {
        self.passedImg = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImgView.image = passedImg
        addDoubleTap()
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
    

}
