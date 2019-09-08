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
    
    var bookNamesArray = ["Dry", "Henry Ford", "Great Reset", "How to Study Smart", "Pieces of Life", "Slime", "The Last", "Zero to One"]
    
    var bookImagesArray = ["dry" ,"henryFord", "greatReset", "howToStudySmart", "piecesOfLife", "slime", "theLast", "zeroToOne"]

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Book", message: "", preferredStyle: .alert)
        
        let addAction = UIAlertAction(title: "Add Book", style: .default) { (action) in
            
            // What will happen once the user clicks the Add Category button on our UIAlert
            
            let bookName: String = textField.text!
            
            let bookImage: String = "slime"
            
            self.bookNamesArray.append(bookName)
            
            self.bookImagesArray.append(bookImage)
            
            self.booksCollectionView.reloadData()
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { (action) in
            
            alert.dismiss(animated: true, completion: { print("Alert Dismissed!") })
            
        })
        
        alert.addAction(addAction)
        
        alert.addAction(cancelAction)
        
        alert.addTextField { (field) in
            
            textField = field
            
            textField.placeholder = "Add a new book"
            
        }
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return bookNamesArray.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookCell", for: indexPath) as! CollectionViewCell
        
        cell.bookName.text = bookNamesArray[indexPath.row]
        
        cell.bookImage.image = UIImage(named: bookImagesArray[indexPath.row])
        
        cell.layer.borderWidth = 0.5
        
        cell.layer.borderColor = UIColor.black.cgColor
        
        cell.layer.cornerRadius = 10.0
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "goToNotes", sender: self)
        
    }
    
}
