//
//  HomeDataSourceController.swift
//  Twitter
//
//  Created by Parankush Bhardwaj on 3/29/17.
//  Copyright © 2017 Parankush Bhardwaj. All rights reserved.
//

import LBTAComponents


class HomeDataSourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //bottom two lines render outs HomeDataSource.words
        let homeDataSource = HomeDataSource()
        self.datasource = homeDataSource
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)

    }
}
