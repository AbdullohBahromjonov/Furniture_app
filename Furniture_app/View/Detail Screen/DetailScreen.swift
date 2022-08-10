//
//  DetailScreen.swift
//  Furniture_app
//
//  Created by Zafarjon on 08/08/22.
//

import SwiftUI

struct DetailScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var product: ProductModel
    
    var body: some View {
        ZStack {
            Color("Bg")
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                product.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.top)
                
                DescriptionView(description: product.description, colors: product.colors)
                    .offset(y: -40)
                
            }
            .padding(.bottom, 30)
            
            Button(
                action: {
                    presentationMode.wrappedValue.dismiss()
                },
                label: {
                    Image(systemName: "chevron.left")
                        //.padding()
                }
            )
            .font(.system(size: 30))
            .frame(width: 50, height: 50)
            .frame(maxWidth: .infinity , maxHeight: .infinity, alignment: .topLeading)
            .padding(.top)
            .padding()
            .foregroundColor(.black)
            
            
            HStack {
                Text("$\(product.price)")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(
                    action: {},
                    label: {
                        Text("Add to Cart")
                            //.fontWeight(.semibold)
                            .padding()
                            .padding(.horizontal)
                            .background(Color.white)
                            .cornerRadius(10)
                            .foregroundColor(Color("Primary"))
                    }
                )
            }
            .padding()
            .padding(.horizontal)
            .background(Color("Primary"))
            .cornerRadius(40, corners: [.topLeft])
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(product:
                .constant(
            ProductModel(
                    id: 1,
                    image: Image("chair_1"),
                    price: 1299,
                    description:
                        DescriptionModel(
                            name: "Luxury Swedian Chair",
                            desctiption: "Luxury Swedian Chiar is a contemporary chair base on the virtues of modern craft. It carries on the simplicity an honestly of the archetypical chiar.",
                            height: 20,
                            width: 80,
                            diameter: 72,
                            treatment: "Jeti Wood, Canvas, Amazing Love"
                        ),
                    colors: [Color("Primary"), Color.white, Color.black]
            )
        )
        )
    }
}
