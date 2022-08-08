//
//  DetailScreen.swift
//  Furniture_app
//
//  Created by Zafarjon on 08/08/22.
//

import SwiftUI

struct DetailScreen: View {
    @Binding var image: String
    
    var body: some View {
        ZStack {
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.top)
                
                DescriptionView()
                    .offset(y: -40)
                
            }
            .padding(.bottom, 30)
            
            HStack {
                Text("$1299")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(
                    action: {},
                    label: {
                        Text("Add to Cart")
                            .fontWeight(.semibold)
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
        DetailScreen(image: .constant("chiar_1"))
    }
}
