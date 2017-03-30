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
                
        let musk = User(name: "Elon Musk", username: "@elonmusk", bioText: "Tesla, SpaceX, Tunnels & OpenAI", profileImage: #imageLiteral(resourceName: "elon"))
        
        let Obama = User(name: "President Obama", username: "@POTUS44", bioText: "This is an archive of an Obama Administration account maintained by the National Archives and Records Administration (NARA).", profileImage: #imageLiteral(resourceName: "Obama"))
        
        let Tim = User(name: "Tim Cook", username: "@tim_cook", bioText: "CEO Apple, Fan of Auburn football and Duke basketball", profileImage: #imageLiteral(resourceName: "Cook"))
        
        return [Obama, musk, Tim]
    }()
    
    
    
    
    let tweets: [Tweet] = {
        
        
        let me2 = User(name: "Parankush Bhardwaj", username: "@ParankushB", bioText: "iOS Developer. Proud fanboy of Apple and Tesla. Coffee addict.", profileImage: #imageLiteral(resourceName: "profile_image"))
        
        let tweet = Tweet(user: me2, message: "Things that didn't exist in 2006                                                                                     - iPhone                                                                                                  - iPad                                                                - Uber                                                                            - Android                                                             - Instagram                                                                         - Snapchat")
        
         let newTweet = Tweet(user: me2, message: "what's on your back?                                                                         \"a katana\"                                                                                        what?                                                                                       \"it's a japanese sword used...you know what *takes back résumé* I don't think I wanna work here\"                      ")
        
        
        let tweet2 = Tweet(user: me2, message: "Techological progress is accelerating at a rate never seen before, this is despite many economic obstacles.")
        
        //what's on your back?
        //"a katana"
        //what?
        //"it's a japanese sword used...you know what *takes back résumé* I don't think I wanna work here"
    
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

