//
//  AllowAccess.swift
//  keptToShare
//
//  Created by macbook on 29/12/2020.
//

import UIKit

class AllowAccess: UIViewController {

    @IBOutlet weak var lblLocation: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblLocation.font = UIFont(name: "Font Awesome 5 Free Solid", size: 17)
        lblLocation.textColor = .blue
        lblLocation.text = "\u{f124}"
        
    }
    

}
