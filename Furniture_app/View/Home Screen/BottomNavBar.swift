//
//  BottomNavBar.swift
//  Furniture_app
//
//  Created by Zafarjon on 31/07/22.
//

import SwiftUI

struct BottomNavBarItem: View {
    let image: Image
    let action: ()-> Void
    var body: some View {
        Button(
            action: action,
            label: {
                image
                    .resizable()
                    .foregroundColor(Color("Primary"))
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 26)
                    .frame(maxWidth: .infinity)
            }
        )
    }
}

struct BottomNavBarItem_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavBarItem(image: Image("shop"), action: {})
            .padding()
            .previewLayout(.sizeThatFits)
            .background(Color("Bg"))
    }
}
