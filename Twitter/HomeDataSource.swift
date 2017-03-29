//
//  HomeDataSource.swift
//  Twitter
//
//  Created by Parankush Bhardwaj on 3/29/17.
//  Copyright © 2017 Parankush Bhardwaj. All rights reserved.
//

import LBTAComponents

class HomeDataSource: Datasource {
    
    let users: [User] = {
        let me = User(name: "Parankush Bhardwaj", username: "@ParankushB", bioText: "iOS Developer. Proud fanboy of Apple and Tesla. Coffee addict.", profileImage: #imageLiteral(resourceName: "profile_image"))
        
        let musk = User(name: "Elon Musk", username: "@elonmusk", bioText: "Tesla, SpaceX, Tunnels & OpenAI", profileImage: #imageLiteral(resourceName: "elon"))
        
        return [me, musk]
    }()
    
    

    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}

