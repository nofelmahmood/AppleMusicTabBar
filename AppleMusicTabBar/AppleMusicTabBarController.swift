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
    var expanded = false
    
    var expandedViewHeightConstraint: NSLayoutConstraint!
    
    var tabBarOrigin: CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBarOrigin = self.tabBar.frame.origin.y
        
        view.addSubview(expandingView)
        expandingView.backgroundColor = UIColor.darkGray
        
        expandingView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: expandingView.trailingAnchor).isActive = true
        expandingView.bottomAnchor.constraint(equalTo: tabBar.topAnchor).isActive = true
        
        expandedViewHeightConstraint = expandingView.heightAnchor.constraint(equalToConstant: expandingViewHeight)
        expandedViewHeightConstraint.isActive = true
        
        expandingViewTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleExpandingViewTap(gestureRecognizer:)))
        expandingView.addGestureRecognizer(expandingViewTapGestureRecognizer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showExpandingView() {
        
    }
    
    func hideExpandingView() {
        
    }
    
    func expandExpandingView() {
        
    }
    
    func collapseExpandingView() {
        
    }
    
    func handleExpandingViewTap(gestureRecognizer: UITapGestureRecognizer) {
        
        if !expanded {
            expandedViewHeightConstraint.constant = view.frame.size.height - 25
            tabBar.frame = CGRect(x: tabBar.frame.origin.x, y: tabBar.frame.origin.y + tabBar.frame.size.height, width: tabBar.frame.size.width, height: tabBar.frame.size.height)
        } else {
            expandedViewHeightConstraint.constant = expandingViewHeight
            tabBar.frame = CGRect(x: tabBar.frame.origin.x, y: tabBar.frame.origin.y - tabBar.frame.size.height, width: tabBar.frame.size.width, height: tabBar.frame.size.height)
        }
        
        expanded = !expanded
        tabBar.isHidden = !tabBar.isHidden
        
        UIView.animate(withDuration: 0.5, delay: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
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
