//
//  ListDiscViewController.swift
//  DemoServicios
//
//  Created by Kenyi Rodriguez on 27/11/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class ListDiscViewController: UIViewController {
    
    @IBOutlet weak var clvDisc: UICollectionView!
    
    var arrayDiscs = [DiscBE]()
    
    lazy var refreshControl: UIRefreshControl = {
       
        let refresh = UIRefreshControl()
        refresh.addTarget(self, action: #selector(self.getAllDiscs), for: .valueChanged)
        return refresh
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clvDisc.addSubview(self.refreshControl)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.getAllDiscs()
    }
    
    @objc func getAllDiscs() {
        
        self.refreshControl.beginRefreshing()
        
        DiscBL.getAllDisc { (arrayDiscs) in
            
            self.refreshControl.endRefreshing()
            
            self.arrayDiscs = arrayDiscs
            self.clvDisc.reloadData()
        }
    }
}

extension ListDiscViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrayDiscs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellIdentifier = "DiscCollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! DiscCollectionViewCell
        cell.objDisc = self.arrayDiscs[indexPath.row]
        return cell
    }
}

extension ListDiscViewController: UICollectionViewDelegate {
    
}

extension ListDiscViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let numberOfColumns : CGFloat = 2
        
        let totalWidth          = collectionView.frame.width
        let collectionLayout    = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        let insets              = collectionLayout?.sectionInset ?? .zero
        
        print(insets)
        
        let paddingLeft     : CGFloat = insets.left
        let paddingRight    : CGFloat = insets.right
        let horizontalSpace : CGFloat = collectionLayout?.minimumInteritemSpacing ?? 0
    
        let avaibleWidth = totalWidth - paddingLeft - paddingRight - (horizontalSpace * (numberOfColumns - 1))
        
        let cellWidth = avaibleWidth / numberOfColumns
        let cellheigth = cellWidth + 47
        
        let newSize = CGSize(width: cellWidth, height: cellheigth)
        return newSize
    }
}


































