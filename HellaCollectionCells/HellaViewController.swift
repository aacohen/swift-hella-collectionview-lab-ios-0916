//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    var color: UIColor!
    
    var fibSequence: [Int]!
    
    override func viewDidLoad() {
        
        fibSequence = generateFib()
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "basicCell", for: indexPath)
        
        if fibSequence.contains(indexPath.item) {
            cell.backgroundColor = UIColor.purple
        }
        else {
            cell.backgroundColor = UIColor.yellow
        }
        return cell
    }
    
    func generateFib() -> [Int] {
        var a = 0
        var b = 1
        var fibSeq = [a, b]
        for i in 1...30 {
            a = fibSeq[i]
            b = fibSeq[i - 1]
            let nextNumber = a + b
            fibSeq.append(nextNumber)
            print(fibSeq)
        }
        return fibSeq
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("\nprepare for segue\n")
        
        
        
        if segue.identifier == "detailViewSegue" {
          let destination = segue.destination as! HellaDetailViewController
            
            var indexPath = collectionView.indexPathsForSelectedItems?.first
            
            if fibSequence.contains((indexPath?.item)!) {
                color = UIColor.purple
            } else {
                color = UIColor.yellow
            }
            
            if let itemIndex = indexPath?.item {
                destination.labelText = String(describing: itemIndex)
                destination.color1 = color
            }
            
            
        }
    }
}




