//
//  File.swift
//  JarJa
//
//  Created by Mac Book on 01/01/2020.
//  Copyright © 2020 Code Creators. All rights reserved.
//

import Foundation
import UIKit

struct SideMenuOption {
    var icon: UIImage?
    var option: String
}
struct AddressAttributes{
    var compactAddress: String?
    var country: String?
    var state: String?
    var city: String?
    var latitude: Double?
    var longitude: Double?
}
struct FilterBy{
    var cuisine: String?
    var price_start: String?
    var price_end: String?
}
struct OrderStatusTypes{
    var isSelected = false
    var status: String?
}
struct LabelOptions{
    var label: String
}
