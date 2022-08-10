//
//  ProductModel.swift
//  Furniture_app
//
//  Created by Zafarjon on 09/08/22.
//

import Foundation
import SwiftUI

struct ProductModel: Identifiable {
    let id: Int
    let image: Image
    
    let price: Int
    let description: DescriptionModel
    let colors: [Color]
}
