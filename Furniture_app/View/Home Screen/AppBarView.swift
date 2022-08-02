//
//  SwiftUIView.swift
//  Furniture_app
//
//  Created by Zafarjon on 31/07/22.
//

import SwiftUI

struct AppBarView: View {
    var body: some View {
        HStack {
            Button(
                action: {
                },
                label: {
                    Image("menu")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
            )
            
            Spacer()
            
            Button(
                action: {},
                label: {
                    Image("Profile")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .cornerRadius(10)
                }
            )
        }
        .padding(.horizontal)
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AppBarView()
            .padding()
            .previewLayout(.sizeThatFits)
            .background(Color("Bg"))
    }
}
