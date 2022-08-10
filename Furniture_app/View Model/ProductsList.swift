//
//  ProductsList.swift
//  Furniture_app
//
//  Created by Zafarjon on 09/08/22.
//

import Foundation
import SwiftUI

let productsList: [ProductModel] = [
    ProductModel(
        id: 1,
        image: Image("chair_1"),
        price: 1299,
        description:
            DescriptionModel(
                name: "Luxury Swedian",
                desctiption: "Luxury Swedian Chiar is a contemporary chair base on the virtues of modern craft. It carries on the simplicity an honestly of the archetypical chiar.",
                height: 20,
                width: 80,
                diameter: 72,
                treatment: "Jeti Wood, Canvas, Amazing Love"
            ),
        colors: [Color("Primary"), Color.white, Color.black]
    ),
    
    ProductModel(
        id: 2,
        image: Image("chair_2"),
        
        price: 1099,
        description:
            DescriptionModel(
                name: "Cafe & Bar",
                desctiption: "Cafe Bar Chair is a contemporary chair base on the virtues of x00 craft. It carries on the simplicity an honestly of the simple chiar.",
                height: 20,
                width: 80,
                diameter: 72,
                treatment: "Jeti Wood, Oak Wood, Amazing Love"
            ),
        colors: [Color.blue, Color.green, Color.white]
    ),
    
    ProductModel(
        id: 3,
        image: Image("chair_3"),
        price: 293,
        description:
            DescriptionModel(
                name: "Clear Office",
                desctiption: "Clear Office Chiar is a contemporary chair base on the virtues of casual craft. It carries on the simplicity an honestly of the simple chiar.",
                height: 20,
                width: 80,
                diameter: 72,
                treatment: "Clear Plastic, Aluminium, Rubber Feet, Amazing Love"
            ),
        colors: [Color.white, Color.black.opacity(0.5)]
    ),
    
    ProductModel(
        id: 4,
        image: Image("chair_4"),
        
        price: 998,
        description:
            DescriptionModel(
                name: "National Uzbek",
                desctiption: "National Uzbek Chiar is a contemporary chair base on the national Uzbek craft. It carries on the national features an honestly of the national chiar.",
                height: 20,
                width: 80,
                diameter: 72,
                treatment: "Carbon Plastic, Colored Steel, Rubber Feet, Amazing Love"
            ),
        colors: [Color.white, Color.blue, Color.black]
    )
]
