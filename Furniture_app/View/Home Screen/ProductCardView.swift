//
//  ProductCardView.swift
//  Furniture_app
//
//  Created by Zafarjon on 31/07/22.
//

import SwiftUI

struct ProductCardView: View {
    let size: CGFloat
    let product: ProductModel
    
    var body: some View {
        VStack{
            product.image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20)
            Text("\(product.description.name) Chiar")
                .foregroundColor(.black)
                .font(.title3)
                .fontWeight(.bold)
                .lineLimit(1)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 2) {
                ForEach(0..<5) { item in
                    Image("star")
                }
                
                Spacer()
                
                Text("$\(product.price)")
                    .foregroundColor(.black)
                    .font(.title3)
                    .fontWeight(.bold)
            }
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(size: 210, product:
            ProductModel(
                id: 1,
                image: Image("chair_1"),
                price: 1299,
                description: DescriptionModel(
                    name: "Luxury Swedian",
                    desctiption: "",
                    height: 0,
                    width: 0,
                    diameter: 0,
                    treatment: ""),
                colors: []
            )
        )
            .padding()
            .previewLayout(.sizeThatFits)
            .background(Color("Bg"))
    }
}
