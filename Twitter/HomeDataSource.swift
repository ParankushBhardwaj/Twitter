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
    
    
    
    
    let tweets: [Tweet] = {
        
        let me = User(name: "Parankush Bhardwaj", username: "@ParankushB", bioText: "iOS Developer. Proud fanboy of Apple and Tesla. Coffee addict.", profileImage: #imageLiteral(resourceName: "profile_image"))
        let tweet = Tweet(user: me, message: "\"Choosing ..what you know will be unpopular in the short run but ..will prove correct in the long run takes courage\" ")
        
        let tweet2 = Tweet(user: me, message: "As tech outgrows the tech industry, and raw feeds & speeds matter less and less, Apple plays more & more to its strengths.")

        
    
        return [tweet, tweet2]
    }()
    
    
    

    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if (section == 1) {
            return tweets.count
        }
        return users.count
    }
}

