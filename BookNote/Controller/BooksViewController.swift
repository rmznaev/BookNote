//
//  FirstViewController.swift
//  BookNote
//
//  Created by Ramazan Abdullayev on 9/5/19.
//  Copyright © 2019 Ramazan Abdullayev. All rights reserved.
//

import UIKit

class BooksViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var booksCollectionView: UICollectionView!
    
    var collectionCellArray = ["Zero to One", "Henry Ford", "Social Media", "Google", "Microsoft", "San Francisco", "Baku Nights", "Talanin Yasti Yolu"]

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return collectionCellArray.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookCell", for: indexPath) as! CollectionViewCell
        
        cell.bookName.text = collectionCellArray[indexPath.row]
        
        cell.layer.borderWidth = 2.0
        
        cell.layer.borderColor = UIColor.black.cgColor
        
        cell.layer.cornerRadius = 10.0
        
        return cell
        
    }

    
}
