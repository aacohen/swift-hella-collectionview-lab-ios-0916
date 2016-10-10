//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Ariela Cohen on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {

    @IBOutlet weak var detailViewLabel: UILabel!
    
    var labelText = ""
    var color1: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailViewLabel.text = labelText
        detailViewLabel.backgroundColor = color1

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
