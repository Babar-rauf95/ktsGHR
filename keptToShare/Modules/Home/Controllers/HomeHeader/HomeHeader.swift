//
//  HomeHeader.swift
//  keptToShare
//
//  Created by macbook on 31/12/2020.
//

import UIKit

class HomeHeader: UIView {

    @IBOutlet weak var separatorView: UIView!
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var btnPlus: UIButton!
    
    class func instanceFromNib() -> UIView{
            return UINib(nibName: "HomeHeader", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
        }
}
