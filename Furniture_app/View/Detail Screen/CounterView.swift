//
//  CounterView.swift
//  Furniture_app
//
//  Created by Zafarjon on 08/08/22.
//

import SwiftUI

struct CounterView: View {
    @State private var quantity = 1
    
    var body: some View {
        HStack {
            Button(
                action: {
                    if quantity >= 1 {
                        quantity -= 1
                    }
                },
                label: {
                    Image(systemName: "minus")
                        .padding()
                }
            )
            .frame(width: 30, height: 30)
            .overlay(RoundedRectangle(cornerRadius: 50).stroke())
            .foregroundColor(Color("Primary"))
            
            Text("\(quantity)")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.horizontal)
            
            Button(
                action: {
                    quantity += 1
                },
                label: {
                    Image(systemName: "plus")
                        .padding()
                }
            )
            .background(Color("Primary"))
            .frame(width: 30, height: 30)
            .clipShape(Circle())
            .foregroundColor(.white)
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
