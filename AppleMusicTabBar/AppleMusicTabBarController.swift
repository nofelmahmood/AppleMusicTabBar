//
//  AppleMusicTabBarController.swift
//  AppleMusicTabBar
//
//  Created by Nofel Mahmood on 10/09/2017.
//  Copyright © 2017 nineish. All rights reserved.
//

import UIKit

class AppleMusicTabBarController: UITabBarController {
    
    lazy var expandingView: UIView = {
        let expandingView = UIView()
        expandingView.translatesAutoresizingMaskIntoConstraints = false
        
        return expandingView
    }()
    var expandingViewTapGestureRecognizer: UITapGestureRecognizer!
    
    let expandingViewHeight: CGFloat = 50.0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(expandingView)
        
        expandingView.backgroundColor = UIColor.black
        
        expandingView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: expandingView.trailingAnchor).isActive = true
        expandingView.heightAnchor.constraint(equalToConstant: expandingViewHeight).isActive = true
        expandingView.bottomAnchor.constraint(equalTo: tabBar.topAnchor).isActive = true
        
        expandingViewTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleExpandingViewTap(gestureRecognizer:)))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showExpandingView() {
        
    }
    
    func hideExpandingView() {
        
    }
    
    func handleExpandingViewTap(gestureRecognizer: UITapGestureRecognizer) {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
