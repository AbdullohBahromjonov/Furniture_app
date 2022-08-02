//
//  ProductCardView.swift
//  Furniture_app
//
//  Created by Zafarjon on 31/07/22.
//

import SwiftUI

struct ProductCardView: View {
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack{
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20)
            Text("Luxury Swedian chair")
                .font(.title3)
                .fontWeight(.bold)
            
            HStack(spacing: 2) {
                ForEach(0..<5) { item in
                    Image("star")
                }
                
                Spacer()
                
                Text("$1299")
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
        ProductCardView(image: Image("chair_1"), size: 210)
            .padding()
            .previewLayout(.sizeThatFits)
            .background(Color("Bg"))
    }
}
