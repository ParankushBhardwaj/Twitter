//
//  NavBarExtension.swift
//  Twitter
//
//  Created by Parankush Bhardwaj on 3/29/17.
//  Copyright © 2017 Parankush Bhardwaj. All rights reserved.
//

import Foundation
import LBTAComponents

extension HomeDataSourceController {
    
    func setUpNavigationBarItems() {
        
        setupCenterNavigationButtons()
        setupLeftNavigationButtons()
        setupRightNaviationButtons()
        
    }
    
    
    private func setupCenterNavigationButtons() {
        
        //first do the twitter logo in the top center
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "title_icon"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        
    }
    
    
    private func setupLeftNavigationButtons() {
        
        //now do the follow button on top left
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
        
    }
    
    
    
    private func setupRightNaviationButtons() {
        
        //now do the search button
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "search").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        //compose button
        let composeButton = UIButton(type: .system)
        composeButton.setImage(#imageLiteral(resourceName: "compose").withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        //set compose and search to the right side
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
        
    }

}
